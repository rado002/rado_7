-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 11:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rado_5`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-22 16:42:37', '2023-10-22 16:42:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_pro_entities`
--

CREATE TABLE `wp_duplicator_pro_entities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_duplicator_pro_entities`
--

INSERT INTO `wp_duplicator_pro_entities` (`id`, `type`, `data`) VALUES
(1, 'DUP_PRO_Global_Entity', '{\n    \"uninstall_settings\": false,\n    \"uninstall_packages\": false,\n    \"crypt\": true,\n    \"email_summary_frequency\": \"weekly\",\n    \"email_summary_recipients\": [\n        \"rado.max.k@gmail.com\"\n    ],\n    \"usageTracking\": true,\n    \"amNotices\": true,\n    \"package_ui_created\": 1,\n    \"package_mysqldump\": false,\n    \"package_mysqldump_path\": \"\",\n    \"package_phpdump_mode\": 0,\n    \"package_mysqldump_qrylimit\": 131072,\n    \"packageMysqldumpOptions\": [\n        {\n            \"option\": \"quick\",\n            \"inputGroupPrefix\": \"package_mysqldump_\",\n            \"possibleArguments\": [],\n            \"enabled\": false,\n            \"arguments\": []\n        },\n        {\n            \"option\": \"extended-insert\",\n            \"inputGroupPrefix\": \"package_mysqldump_\",\n            \"possibleArguments\": [],\n            \"enabled\": false,\n            \"arguments\": []\n        },\n        {\n            \"option\": \"routines\",\n            \"inputGroupPrefix\": \"package_mysqldump_\",\n            \"possibleArguments\": [],\n            \"enabled\": true,\n            \"arguments\": []\n        },\n        {\n            \"option\": \"disable-keys\",\n            \"inputGroupPrefix\": \"package_mysqldump_\",\n            \"possibleArguments\": [],\n            \"enabled\": false,\n            \"arguments\": []\n        },\n        {\n            \"option\": \"compact\",\n            \"inputGroupPrefix\": \"package_mysqldump_\",\n            \"possibleArguments\": [],\n            \"enabled\": false,\n            \"arguments\": []\n        }\n    ],\n    \"archive_build_mode\": 2,\n    \"archive_compression\": true,\n    \"ziparchive_validation\": false,\n    \"ziparchive_mode\": 0,\n    \"ziparchive_chunk_size_in_mb\": 32,\n    \"homepath_as_abspath\": false,\n    \"server_load_reduction\": 0,\n    \"max_package_runtime_in_min\": 90,\n    \"php_max_worker_time_in_sec\": 20,\n    \"cleanup_mode\": 0,\n    \"cleanup_email\": \"rado.max.k@gmail.com\",\n    \"auto_cleanup_hours\": 24,\n    \"lock_mode\": 1,\n    \"ajax_protocol\": \"http\",\n    \"custom_ajax_url\": \"http:\\/\\/localhost\\/rado_5\\/wp-admin\\/admin-ajax.php\",\n    \"clientside_kickoff\": false,\n    \"basic_auth_enabled\": false,\n    \"basic_auth_user\": \"\",\n    \"basic_auth_password\": \"\",\n    \"installer_name_mode\": \"simple\",\n    \"installer_base_name\": \"installer.php\",\n    \"chunk_size\": 2048,\n    \"skip_archive_scan\": false,\n    \"send_email_on_build_mode\": 1,\n    \"notification_email_address\": \"\",\n    \"storage_htaccess_off\": false,\n    \"max_storage_retries\": 10,\n    \"max_default_store_files\": 20,\n    \"purge_default_package_record\": false,\n    \"dropbox_upload_chunksize_in_kb\": 2000,\n    \"dropbox_transfer_mode\": 1,\n    \"gdrive_upload_chunksize_in_kb\": 1024,\n    \"gdrive_transfer_mode\": 0,\n    \"s3_upload_part_size_in_kb\": 6000,\n    \"onedrive_upload_chunksize_in_kb\": 3200,\n    \"local_upload_chunksize_in_MB\": 16,\n    \"manual_mode_storage_ids\": [],\n    \"license_status\": 0,\n    \"license_expiration_time\": 1698598488,\n    \"license_no_activations_left\": false,\n    \"license_key_visible\": 1,\n    \"lkp\": \"\",\n    \"license_type\": \"8\",\n    \"license_limit\": 2,\n    \"last_system_check_timestamp\": 0,\n    \"initial_activation_timestamp\": 1697993629,\n    \"ssl_useservercerts\": true,\n    \"ssl_disableverify\": true,\n    \"import_chunk_size\": 1024,\n    \"import_custom_path\": \"\",\n    \"ipv4_only\": false,\n    \"debug_on\": false,\n    \"unhook_third_party_js\": false,\n    \"unhook_third_party_css\": false,\n    \"recoveryCustomPath\": \"\",\n    \"id\": 1\n}'),
(2, 'DUP_PRO_Secure_Global_Entity', '{\n    \"basic_auth_password\": \"\",\n    \"lkp\": \"\",\n    \"id\": 2\n}'),
(3, 'DUP_PRO_Storage_Entity', '{\n    \"name\": \"Default\",\n    \"notes\": \"The default location for storage on this server.\",\n    \"storage_type\": -2,\n    \"version\": \"4.5.13.2\",\n    \"config\": \"9iXOS0WjLYUOBt5oQsgaKMBk1KzV237w78I4tTIj0JFV7oXytVpkYPcovy3YD3AFe1cMwvBIHCoW+ebf+RAfSMDZNW7I2itig8ymsm5efPyfVczYFoIH9uyaxaH5Hc6lxUH9k+52qgA7GSKizHbN9zu0XjOdY4WD4MDmJa6x8muKFxgdrtDvcgTexGc6vE2O30tTqiPFrZ9nk2Rif\\/a9gr1zKd1dDdF9Z4dDPJ1ySMyXtrIfSMMuFBzEFnh0Vg4jGY0DGtUWQ1++M1+RW8kKPA==\",\n    \"legacyEntity\": false,\n    \"local_storage_folder\": \"\",\n    \"local_max_files\": 10,\n    \"local_filter_protection\": true,\n    \"purge_package_record\": true,\n    \"dropbox_access_token\": \"\",\n    \"dropbox_access_token_secret\": \"\",\n    \"dropbox_v2_access_token\": \"\",\n    \"dropbox_storage_folder\": \"\",\n    \"dropbox_max_files\": 10,\n    \"dropbox_authorization_state\": 0,\n    \"onedrive_endpoint_url\": \"\",\n    \"onedrive_resource_id\": \"\",\n    \"onedrive_access_token\": \"\",\n    \"onedrive_refresh_token\": \"\",\n    \"onedrive_token_obtained\": 0,\n    \"onedrive_user_id\": \"\",\n    \"onedrive_storage_folder\": \"\",\n    \"onedrive_max_files\": 10,\n    \"onedrive_storage_folder_id\": \"\",\n    \"onedrive_authorization_state\": 0,\n    \"onedrive_storage_folder_web_url\": \"\",\n    \"ftp_server\": \"\",\n    \"ftp_port\": 21,\n    \"ftp_username\": \"\",\n    \"ftp_password\": \"\",\n    \"ftp_use_curl\": false,\n    \"ftp_storage_folder\": \"\",\n    \"ftp_max_files\": 10,\n    \"ftp_timeout_in_secs\": 15,\n    \"ftp_ssl\": false,\n    \"ftp_passive_mode\": false,\n    \"sftp_server\": \"\",\n    \"sftp_port\": 22,\n    \"sftp_username\": \"\",\n    \"sftp_password\": \"\",\n    \"sftp_private_key\": \"\",\n    \"sftp_private_key_password\": \"\",\n    \"sftp_storage_folder\": \"\",\n    \"sftp_timeout_in_secs\": 15,\n    \"sftp_max_files\": 10,\n    \"sftp_disable_chunking_mode\": false,\n    \"gdrive_access_token_set_json\": \"\",\n    \"gdrive_refresh_token\": \"\",\n    \"gdrive_storage_folder\": \"\",\n    \"gdrive_max_files\": 10,\n    \"gdrive_authorization_state\": 0,\n    \"gdrive_client_number\": -1,\n    \"s3_access_key\": \"\",\n    \"s3_bucket\": \"\",\n    \"s3_max_files\": 10,\n    \"s3_provider\": \"amazon\",\n    \"s3_region\": \"\",\n    \"s3_endpoint\": \"\",\n    \"s3_secret_key\": \"\",\n    \"s3_storage_class\": \"STANDARD\",\n    \"s3_storage_folder\": \"\",\n    \"s3_ACL_full_control\": true,\n    \"id\": 3\n}'),
(4, 'DUP_PRO_Package_Template_Entity', '{\n    \"name\": \"Default\",\n    \"notes\": \"The default template.\",\n    \"filter_sites\": [],\n    \"archive_export_onlydb\": false,\n    \"archive_filter_on\": false,\n    \"archive_filter_dirs\": \"\",\n    \"archive_filter_exts\": \"\",\n    \"archive_filter_files\": \"\",\n    \"archive_filter_names\": false,\n    \"components\": [\n        \"package_component_db\",\n        \"package_component_core\",\n        \"package_component_plugins\",\n        \"package_component_themes\",\n        \"package_component_uploads\",\n        \"package_component_other\"\n    ],\n    \"database_filter_on\": false,\n    \"databasePrefixFilter\": false,\n    \"databasePrefixSubFilter\": false,\n    \"database_filter_tables\": \"\",\n    \"database_compatibility_modes\": \"\",\n    \"installer_opts_secure_on\": 0,\n    \"installer_opts_secure_pass\": \"\",\n    \"installerPassowrd\": \"\\/12oTYsLXS55DcwS3inSeCrQti\\/KuLJKQmQIcRK+LdwNe1gFdtQ\\/gtQnPrbqd0SQzwmJRYbEfkXRTvYsG7bDLg==\",\n    \"installer_opts_skip_scan\": false,\n    \"installer_opts_db_host\": \"\",\n    \"installer_opts_db_name\": \"\",\n    \"installer_opts_db_user\": \"\",\n    \"installer_opts_cpnl_enable\": false,\n    \"installer_opts_cpnl_host\": \"\",\n    \"installer_opts_cpnl_user\": \"\",\n    \"installer_opts_cpnl_pass\": \"\",\n    \"installer_opts_cpnl_db_action\": \"create\",\n    \"installer_opts_cpnl_db_host\": \"\",\n    \"installer_opts_cpnl_db_name\": \"\",\n    \"installer_opts_cpnl_db_user\": \"\",\n    \"installer_opts_brand\": -2,\n    \"is_default\": true,\n    \"is_manual\": false,\n    \"id\": 4\n}'),
(5, 'DUP_PRO_Package_Template_Entity', '{\n    \"name\": \"[Manual Mode]\",\n    \"notes\": \"\",\n    \"filter_sites\": [],\n    \"archive_export_onlydb\": false,\n    \"archive_filter_on\": false,\n    \"archive_filter_dirs\": \"\",\n    \"archive_filter_exts\": \"\",\n    \"archive_filter_files\": \"\",\n    \"archive_filter_names\": false,\n    \"components\": [\n        \"package_component_db\",\n        \"package_component_core\",\n        \"package_component_plugins\",\n        \"package_component_themes\",\n        \"package_component_uploads\",\n        \"package_component_other\"\n    ],\n    \"database_filter_on\": false,\n    \"databasePrefixFilter\": false,\n    \"databasePrefixSubFilter\": false,\n    \"database_filter_tables\": \"\",\n    \"database_compatibility_modes\": \"\",\n    \"installer_opts_secure_on\": 0,\n    \"installer_opts_secure_pass\": \"\",\n    \"installerPassowrd\": \"ClMAgxocJMccU7IH3TpHI\\/wD0yoSyXNu1DnMFzWocgNq3Wnh4Tgy1xTQq5f+TZ820mjYgvO1Zu+khkq5zj+hnQ==\",\n    \"installer_opts_skip_scan\": false,\n    \"installer_opts_db_host\": \"\",\n    \"installer_opts_db_name\": \"\",\n    \"installer_opts_db_user\": \"\",\n    \"installer_opts_cpnl_enable\": false,\n    \"installer_opts_cpnl_host\": \"\",\n    \"installer_opts_cpnl_user\": \"\",\n    \"installer_opts_cpnl_pass\": \"\",\n    \"installer_opts_cpnl_db_action\": \"create\",\n    \"installer_opts_cpnl_db_host\": \"\",\n    \"installer_opts_cpnl_db_name\": \"\",\n    \"installer_opts_cpnl_db_user\": \"\",\n    \"installer_opts_brand\": -2,\n    \"is_default\": false,\n    \"is_manual\": true,\n    \"id\": 5\n}'),
(6, 'EmailSummary', '{\n    \"manualPackageIds\": [],\n    \"scheduledPackageIds\": [],\n    \"failedPackageIds\": [],\n    \"scheduleIds\": [],\n    \"storageIds\": [],\n    \"id\": 6\n}'),
(7, 'DUP_PRO_System_Global_Entity', '{\n    \"recommended_fixes\": [],\n    \"schedule_failed\": false,\n    \"package_check_ts\": 1698442585,\n    \"id\": 7\n}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_pro_packages`
--

CREATE TABLE `wp_duplicator_pro_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/rado_5', 'yes'),
(2, 'home', 'http://localhost/rado_5', 'yes'),
(3, 'blogname', 'rado_5', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rado.max.k@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:33:\"duplicator-pro/duplicator-pro.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyfourteen', 'yes'),
(41, 'stylesheet', 'twentyfourteen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '23', 'yes'),
(82, 'page_on_front', '23', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1713544957', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:70:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"duplicator_pro_basic\";b:1;s:21:\"duplicator_pro_create\";b:1;s:23:\"duplicator_pro_schedule\";b:1;s:22:\"duplicator_pro_storage\";b:1;s:29:\"duplicator_pro_backup_restore\";b:1;s:21:\"duplicator_pro_import\";b:1;s:21:\"duplicator_pro_export\";b:1;s:23:\"duplicator_pro_settings\";b:1;s:22:\"duplicator_pro_license\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:11:{i:1698442958;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698468158;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698468165;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698511358;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698511365;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698511368;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698597762;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698653904;a:1:{s:30:\"duplicator_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:22:\"duplicator_weekly_cron\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698674400;a:1:{s:33:\"duplicator_pro_email_summary_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:22:\"duplicator_weekly_cron\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698684158;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698098379;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(133, '_site_transient_timeout_browser_cb382c8ca47abee6ee764ae1a5b668e0', '1698597767', 'no'),
(134, '_site_transient_browser_cb382c8ca47abee6ee764ae1a5b668e0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(135, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1698597768', 'no'),
(136, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698432428;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(138, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"rado.max.k@gmail.com\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697992972;}', 'no'),
(142, 'can_compress_scripts', '1', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(152, 'duplicator_version_plugin', '1.5.6', 'yes'),
(154, 'duplicator_install_info', 'a:2:{s:7:\"version\";s:5:\"1.5.6\";s:4:\"time\";i:1697993030;}', 'no'),
(155, 'duplicator_uninstall_package', '1', 'yes'),
(156, 'duplicator_uninstall_settings', '1', 'yes'),
(157, 'duplicator_settings', 'a:20:{s:7:\"version\";s:5:\"1.5.6\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:13:\"package_debug\";b:0;s:23:\"email_summary_frequency\";s:6:\"weekly\";s:9:\"amNotices\";b:1;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:-1;s:14:\"usage_tracking\";b:0;i:0;b:0;}', 'yes'),
(158, 'duplicator_activated', 'a:1:{s:4:\"lite\";i:1697993030;}', 'yes'),
(159, 'duplicator_plugin_data_stats', '{\n    \"lastSendTime\": 0,\n    \"identifier\": \"WeXVn3z3WLCcYpgLMxCyt+O7qdDGObr001iBinK4vIDn\",\n    \"plugin\": \"dup-lite\",\n    \"pluginStatus\": \"inactive\",\n    \"buildCount\": 0,\n    \"buildLastDate\": 0,\n    \"buildFailedCount\": 0,\n    \"buildFailedLastDate\": 0,\n    \"siteSizeMB\": 0,\n    \"siteNumFiles\": 0,\n    \"siteDbSizeMB\": 0,\n    \"siteDbNumTables\": 0\n}', 'yes'),
(160, 'recently_activated', 'a:1:{s:25:\"duplicator/duplicator.php\";i:1697993625;}', 'yes'),
(164, 'duplicator_one_click_upgrade_oth', 'WWNWa74VdDLuwBGXbXKcVEMNpDVaKo', 'yes'),
(168, 'duplicator_pro_capabilities', 'a:9:{s:20:\"duplicator_pro_basic\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:21:\"duplicator_pro_create\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:23:\"duplicator_pro_schedule\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:22:\"duplicator_pro_storage\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:29:\"duplicator_pro_backup_restore\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:21:\"duplicator_pro_import\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:21:\"duplicator_pro_export\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:23:\"duplicator_pro_settings\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}s:22:\"duplicator_pro_license\";a:2:{s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:5:\"users\";a:0:{}}}', 'yes'),
(169, 'duplicator_pro_install_time', '1697993629', 'yes'),
(170, 'edd_sl_d4cddcbfacec1cb84c2108addd3c8f99', 'a:2:{s:7:\"timeout\";i:1698004432;s:5:\"value\";s:5:\"false\";}', 'no'),
(171, 'duplicator_pro_plugin_version', '4.5.13.2', 'yes'),
(172, 'duplicator_pro_install_info', 'a:2:{s:7:\"version\";s:8:\"4.5.13.2\";s:4:\"time\";i:1697993629;}', 'no'),
(173, 'duplicator_pro_plugin_data_stats', '{\n    \"CL_-=_-=\": \"Duplicator\\\\Utils\\\\UsageStatistics\\\\PluginData\",\n    \"lastSendTime\": 0,\n    \"identifier\": \"mVt+Qpz_hY16;K=I_a791i;IcuxBqG54CR+7RFxyMAff\",\n    \"plugin\": \"dup-pro\",\n    \"pluginStatus\": \"active\",\n    \"anonymous\": false,\n    \"buildCount\": 0,\n    \"buildLastDate\": 0,\n    \"buildFailedCount\": 0,\n    \"buildFailedLastDate\": 0,\n    \"packagesBuildCompFullCount\": 0,\n    \"packagesBuildCompDbOnlyCount\": 0,\n    \"packagesBuildCompMdOnlyCount\": 0,\n    \"packagesBuildCompCustomCount\": 0,\n    \"packagesBuildCompCustomOnlyActiveCount\": 0,\n    \"schedulesBuildCount\": 0,\n    \"schedulesBuildLastDate\": 0,\n    \"schedulesBuildFailedCount\": 0,\n    \"schedulesBuildFailedLastDate\": 0,\n    \"schedulesBuildCompFullCount\": 0,\n    \"schedulesBuildCompDbOnlyCount\": 0,\n    \"schedulesBuildCompMdOnlyCount\": 0,\n    \"schedulesBuildCompCustomCount\": 0,\n    \"schedulesBuildCompCustomOnlyActiveCount\": 0,\n    \"usedRecoveryCount\": 0,\n    \"siteSizeMB\": 0,\n    \"siteNumFiles\": 0,\n    \"siteDbSizeMB\": 0,\n    \"siteDbNumTables\": 0\n}', 'yes'),
(174, 'duplicator_pro_notifications', 'a:4:{s:6:\"update\";i:1698437583;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(175, 'duplicator_expire_tmp_cleanup_check', '{\"expire\":1698505055,\"value\":true}', 'yes'),
(176, 'duplicator_expire_daily_bootstrap_actions', '{\"expire\":1698505055,\"value\":true}', 'yes'),
(177, 'duplicator_expire_rename_delay', '{\"expire\":1698475625,\"value\":true}', 'yes'),
(178, 'duplicator_pro_license_key', '88a9c9a7284ffff7f30bf7432808d0d7', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(179, 'duplicator_expire_license_data', '{\"expire\":1698015288,\"value\":{\"CL_-=_-=\":\"stdClass\",\"success\":true,\"license\":\"valid\",\"item_id\":false,\"item_name\":\"Duplicator+Pro\",\"checksum\":\"a8241cd25a1143a524ec54816a59ea5e\",\"expires\":\"2024-10-13 23:59:59\",\"payment_id\":631270,\"customer_name\":\"Rado Kaczmarczyk\",\"customer_email\":\"rado.max.k@gmail.com\",\"license_limit\":2,\"site_count\":2,\"activations_left\":0,\"price_id\":\"8\",\"activeSubscription\":true}}', 'yes'),
(180, 'duplicator_expire_duplicator_pro_frotend_delay', '{\"expire\":1698439500,\"value\":true}', 'yes'),
(181, 'duplicator_expire_license_check', '{\"expire\":1698439501,\"value\":true}', 'yes'),
(182, '_site_transient_timeout_browser_649eee0b9945e3b5e7ca0a9f75ebd7c8', '1698598902', 'no'),
(183, '_site_transient_browser_649eee0b9945e3b5e7ca0a9f75ebd7c8', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"120.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(201, '_site_transient_timeout_browser_9c1ce27f08b16479d2e17743062b28ed', '1698613351', 'no'),
(202, '_site_transient_browser_9c1ce27f08b16479d2e17743062b28ed', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"120.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(210, 'edd_sl_d4932d57c532d712223a2b1c088f24ef', 'a:2:{s:7:\"timeout\";i:1698443230;s:5:\"value\";s:1464:\"{\"new_version\":\"4.5.13.2\",\"stable_version\":\"4.5.13.2\",\"name\":\"Duplicator Pro\",\"slug\":\"duplicator-pro\",\"url\":\"https:\\/\\/duplicator.com\\/downloads\\/duplicator-pro\\/?changelog=1\",\"last_updated\":\"2023-10-19 19:20:32\",\"homepage\":\"https:\\/\\/duplicator.com\\/downloads\\/duplicator-pro\\/\",\"package\":\"https:\\/\\/duplicator.com\\/edd-sl\\/package_download\\/MTY5OTYyNzYyOTo4OGE5YzlhNzI4NGZmZmY3ZjMwYmY3NDMyODA4ZDBkNzozMTo0MTNkMjNkNTk1YTMxOGYxNTViNjRhOWNlNzU1ZmMyYzpodHRwQC8vbG9jYWxob3N0L3JhZG9fNTow\",\"download_link\":\"https:\\/\\/duplicator.com\\/edd-sl\\/package_download\\/MTY5OTYyNzYyOTo4OGE5YzlhNzI4NGZmZmY3ZjMwYmY3NDMyODA4ZDBkNzozMTo0MTNkMjNkNTk1YTMxOGYxNTViNjRhOWNlNzU1ZmMyYzpodHRwQC8vbG9jYWxob3N0L3JhZG9fNTow\",\"sections\":{\"description\":\"<p>Duplicator Pro backup and migration WordPress plugin<\\/p>\\n\",\"changelog\":\"<p>Please go here to find the Duplicator Pro changelog:<\\/p>\\n<p>https:\\/\\/duplicator.com\\/knowledge-base\\/changelog\\/<\\/p>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":{\"1x\":\"https:\\/\\/duplicator.com\\/wp-content\\/uploads\\/edd\\/2023\\/10\\/icon-256x256-1-128x128.png\",\"2x\":\"https:\\/\\/duplicator.com\\/wp-content\\/uploads\\/edd\\/2023\\/10\\/icon-256x256-1.png\"},\"description\":[\"<p>Duplicator Pro backup and migration WordPress plugin<\\/p>\\n\"],\"changelog\":[\"<p>Please go here to find the Duplicator Pro changelog:<\\/p>\\n<p>https:\\/\\/duplicator.com\\/knowledge-base\\/changelog\\/<\\/p>\\n\"],\"plugin\":\"duplicator-pro\\/duplicator-pro.php\",\"id\":\"duplicator-pro\\/duplicator-pro.php\"}\";}', 'no'),
(214, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":4,\"critical\":2}', 'yes'),
(221, 'current_theme', 'Twenty Fourteen', 'yes'),
(222, 'theme_mods_blocksy', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:38:\"blocksy_woocommerce_thumbnail_cropping\";s:10:\"predefined\";s:18:\"blog_archive_order\";a:7:{i:0;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:0;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:1;a:3:{s:2:\"id\";s:5:\"title\";s:11:\"heading_tag\";s:2:\"h2\";s:7:\"enabled\";b:1;}i:2;a:5:{s:2:\"id\";s:14:\"featured_image\";s:11:\"thumb_ratio\";s:3:\"4/3\";s:12:\"is_boundless\";s:3:\"yes\";s:10:\"image_size\";s:12:\"medium_large\";s:7:\"enabled\";b:1;}i:3;a:3:{s:2:\"id\";s:7:\"excerpt\";s:14:\"excerpt_length\";s:2:\"40\";s:7:\"enabled\";b:1;}i:4;a:3:{s:2:\"id\";s:9:\"read_more\";s:11:\"button_type\";s:10:\"background\";s:7:\"enabled\";b:0;}i:5;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:6;a:2:{s:2:\"id\";s:7:\"divider\";s:7:\"enabled\";b:0;}}s:18:\"blog_hero_elements\";a:3:{i:0;a:4:{s:2:\"id\";s:12:\"custom_title\";s:7:\"enabled\";b:1;s:11:\"heading_tag\";s:2:\"h1\";s:5:\"title\";s:4:\"Home\";}i:1;a:3:{s:2:\"id\";s:18:\"custom_description\";s:7:\"enabled\";b:1;s:22:\"description_visibility\";a:3:{s:7:\"desktop\";b:1;s:6:\"tablet\";b:1;s:6:\"mobile\";b:0;}}i:2;a:2:{s:2:\"id\";s:11:\"breadcrumbs\";s:7:\"enabled\";b:0;}}s:24:\"categories_archive_order\";a:7:{i:0;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:0;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:1;a:3:{s:2:\"id\";s:5:\"title\";s:11:\"heading_tag\";s:2:\"h2\";s:7:\"enabled\";b:1;}i:2;a:5:{s:2:\"id\";s:14:\"featured_image\";s:11:\"thumb_ratio\";s:3:\"4/3\";s:12:\"is_boundless\";s:3:\"yes\";s:10:\"image_size\";s:12:\"medium_large\";s:7:\"enabled\";b:1;}i:3;a:3:{s:2:\"id\";s:7:\"excerpt\";s:14:\"excerpt_length\";s:2:\"40\";s:7:\"enabled\";b:1;}i:4;a:3:{s:2:\"id\";s:9:\"read_more\";s:11:\"button_type\";s:10:\"background\";s:7:\"enabled\";b:0;}i:5;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:6;a:2:{s:2:\"id\";s:7:\"divider\";s:7:\"enabled\";b:0;}}s:24:\"categories_hero_elements\";a:3:{i:0;a:4:{s:2:\"id\";s:12:\"custom_title\";s:7:\"enabled\";b:1;s:11:\"heading_tag\";s:2:\"h1\";s:5:\"title\";s:4:\"Home\";}i:1;a:3:{s:2:\"id\";s:18:\"custom_description\";s:7:\"enabled\";b:1;s:22:\"description_visibility\";a:3:{s:7:\"desktop\";b:1;s:6:\"tablet\";b:1;s:6:\"mobile\";b:0;}}i:2;a:2:{s:2:\"id\";s:11:\"breadcrumbs\";s:7:\"enabled\";b:0;}}s:20:\"author_archive_order\";a:7:{i:0;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:0;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:1;a:3:{s:2:\"id\";s:5:\"title\";s:11:\"heading_tag\";s:2:\"h2\";s:7:\"enabled\";b:1;}i:2;a:5:{s:2:\"id\";s:14:\"featured_image\";s:11:\"thumb_ratio\";s:3:\"4/3\";s:12:\"is_boundless\";s:3:\"yes\";s:10:\"image_size\";s:12:\"medium_large\";s:7:\"enabled\";b:1;}i:3;a:3:{s:2:\"id\";s:7:\"excerpt\";s:14:\"excerpt_length\";s:2:\"40\";s:7:\"enabled\";b:1;}i:4;a:3:{s:2:\"id\";s:9:\"read_more\";s:11:\"button_type\";s:10:\"background\";s:7:\"enabled\";b:0;}i:5;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:6;a:2:{s:2:\"id\";s:7:\"divider\";s:7:\"enabled\";b:0;}}s:20:\"author_hero_elements\";a:5:{i:0;a:6:{s:2:\"id\";s:12:\"custom_title\";s:7:\"enabled\";b:1;s:11:\"heading_tag\";s:2:\"h1\";s:5:\"title\";s:4:\"Home\";s:17:\"has_author_avatar\";s:3:\"yes\";s:18:\"author_avatar_size\";i:60;}i:1;a:3:{s:2:\"id\";s:18:\"custom_description\";s:7:\"enabled\";b:1;s:22:\"description_visibility\";a:3:{s:7:\"desktop\";b:1;s:6:\"tablet\";b:1;s:6:\"mobile\";b:0;}}i:2;a:4:{s:2:\"id\";s:11:\"custom_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:3:\"yes\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:18:\"page_meta_elements\";a:3:{s:6:\"joined\";b:1;s:14:\"articles_count\";b:1;s:8:\"comments\";b:1;}}i:3;a:2:{s:2:\"id\";s:22:\"author_social_channels\";s:7:\"enabled\";b:1;}i:4;a:2:{s:2:\"id\";s:11:\"breadcrumbs\";s:7:\"enabled\";b:0;}}s:20:\"search_archive_order\";a:7:{i:0;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:0;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:1;a:3:{s:2:\"id\";s:5:\"title\";s:11:\"heading_tag\";s:2:\"h2\";s:7:\"enabled\";b:1;}i:2;a:5:{s:2:\"id\";s:14:\"featured_image\";s:11:\"thumb_ratio\";s:3:\"4/3\";s:12:\"is_boundless\";s:3:\"yes\";s:10:\"image_size\";s:12:\"medium_large\";s:7:\"enabled\";b:1;}i:3;a:3:{s:2:\"id\";s:7:\"excerpt\";s:14:\"excerpt_length\";s:2:\"40\";s:7:\"enabled\";b:1;}i:4;a:3:{s:2:\"id\";s:9:\"read_more\";s:11:\"button_type\";s:10:\"background\";s:7:\"enabled\";b:0;}i:5;a:5:{s:2:\"id\";s:9:\"post_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:2:\"no\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:9:\"meta_type\";s:6:\"simple\";s:12:\"meta_divider\";s:5:\"slash\";}i:6;a:2:{s:2:\"id\";s:7:\"divider\";s:7:\"enabled\";b:0;}}s:20:\"search_hero_elements\";a:3:{i:0;a:4:{s:2:\"id\";s:12:\"custom_title\";s:7:\"enabled\";b:1;s:11:\"heading_tag\";s:2:\"h1\";s:5:\"title\";s:4:\"Home\";}i:1;a:3:{s:2:\"id\";s:18:\"custom_description\";s:7:\"enabled\";b:1;s:22:\"description_visibility\";a:3:{s:7:\"desktop\";b:1;s:6:\"tablet\";b:1;s:6:\"mobile\";b:0;}}i:2;a:2:{s:2:\"id\";s:11:\"breadcrumbs\";s:7:\"enabled\";b:0;}}s:30:\"single_blog_post_hero_elements\";a:4:{i:0;a:4:{s:2:\"id\";s:12:\"custom_title\";s:7:\"enabled\";b:1;s:11:\"heading_tag\";s:2:\"h1\";s:5:\"title\";s:4:\"Home\";}i:1;a:3:{s:2:\"id\";s:18:\"custom_description\";s:7:\"enabled\";b:1;s:22:\"description_visibility\";a:3:{s:7:\"desktop\";b:1;s:6:\"tablet\";b:1;s:6:\"mobile\";b:0;}}i:2;a:4:{s:2:\"id\";s:11:\"custom_meta\";s:7:\"enabled\";b:1;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:3:\"yes\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:18:\"page_meta_elements\";a:3:{s:6:\"joined\";b:1;s:14:\"articles_count\";b:1;s:8:\"comments\";b:1;}}i:3;a:2:{s:2:\"id\";s:11:\"breadcrumbs\";s:7:\"enabled\";b:0;}}s:25:\"single_page_hero_elements\";a:4:{i:0;a:4:{s:2:\"id\";s:12:\"custom_title\";s:7:\"enabled\";b:1;s:11:\"heading_tag\";s:2:\"h1\";s:5:\"title\";s:4:\"Home\";}i:1;a:3:{s:2:\"id\";s:18:\"custom_description\";s:7:\"enabled\";b:1;s:22:\"description_visibility\";a:3:{s:7:\"desktop\";b:1;s:6:\"tablet\";b:1;s:6:\"mobile\";b:0;}}i:2;a:4:{s:2:\"id\";s:11:\"custom_meta\";s:7:\"enabled\";b:0;s:13:\"meta_elements\";a:5:{i:0;a:5:{s:2:\"id\";s:6:\"author\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"By\";s:17:\"has_author_avatar\";s:3:\"yes\";s:11:\"avatar_size\";i:25;}i:1;a:5:{s:2:\"id\";s:9:\"post_date\";s:7:\"enabled\";b:1;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:2;a:5:{s:2:\"id\";s:12:\"updated_date\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"On\";s:18:\"date_format_source\";s:7:\"default\";s:11:\"date_format\";s:6:\"M j, Y\";}i:3;a:4:{s:2:\"id\";s:10:\"categories\";s:7:\"enabled\";b:0;s:5:\"label\";s:2:\"In\";s:5:\"style\";s:6:\"simple\";}i:4;a:2:{s:2:\"id\";s:8:\"comments\";s:7:\"enabled\";b:1;}}s:18:\"page_meta_elements\";a:3:{s:6:\"joined\";b:1;s:14:\"articles_count\";b:1;s:8:\"comments\";b:1;}}i:3;a:2:{s:2:\"id\";s:11:\"breadcrumbs\";s:7:\"enabled\";b:0;}}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698101159;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:19:\"ct-footer-sidebar-1\";a:0:{}s:19:\"ct-footer-sidebar-2\";a:0:{}s:19:\"ct-footer-sidebar-3\";a:0:{}s:19:\"ct-footer-sidebar-4\";a:0:{}s:19:\"ct-footer-sidebar-5\";a:0:{}s:19:\"ct-footer-sidebar-6\";a:0:{}}}}', 'yes'),
(223, 'theme_switched', '', 'yes'),
(224, 'elementor_disable_color_schemes', 'yes', 'yes'),
(225, 'elementor_disable_typography_schemes', 'yes', 'yes'),
(226, 'elementor_viewport_lg', '1000', 'yes'),
(227, 'elementor_viewport_md', '690', 'yes'),
(228, '_transient_timeout_blocksy_dynamic_styles_descriptor', '1729203962', 'no'),
(229, '_transient_blocksy_dynamic_styles_descriptor', 'a:2:{s:12:\"google_fonts\";a:0:{}s:6:\"styles\";a:3:{s:7:\"desktop\";s:8276:\"[data-header*=\"type-1\"] .ct-header [data-id=\"logo\"] .site-title {--fontWeight:700;--fontSize:25px;--lineHeight:1.5;--linkInitialColor:var(--paletteColor4);} [data-header*=\"type-1\"] .ct-header [data-id=\"menu\"] > ul > li > a {--fontWeight:700;--textTransform:uppercase;--fontSize:12px;--lineHeight:1.3;--linkInitialColor:var(--color);} [data-header*=\"type-1\"] .ct-header [data-id=\"menu\"][data-menu*=\"type-3\"] > ul > li > a {--linkHoverColor:#ffffff;--linkActiveColor:#ffffff;} [data-header*=\"type-1\"] .ct-header [data-id=\"menu\"] .sub-menu .ct-menu-link {--linkInitialColor:#ffffff;--fontWeight:500;--fontSize:12px;} [data-header*=\"type-1\"] .ct-header [data-id=\"menu\"] .sub-menu {--dropdown-divider:1px dashed rgba(255, 255, 255, 0.1);--box-shadow:0px 10px 20px rgba(41, 51, 61, 0.1);--border-radius:0px 0px 2px 2px;} [data-header*=\"type-1\"] .ct-header [data-row*=\"middle\"] {--height:120px;background-color:var(--paletteColor8);background-image:none;--borderTop:none;--borderBottom:none;--box-shadow:none;} [data-header*=\"type-1\"] .ct-header [data-row*=\"middle\"] > div {--borderTop:none;--borderBottom:none;} [data-header*=\"type-1\"] [data-id=\"mobile-menu\"] {--fontWeight:700;--fontSize:20px;--linkInitialColor:#ffffff;--mobile-menu-divider:none;} [data-header*=\"type-1\"] #offcanvas .ct-panel-inner {background-color:rgba(18, 21, 25, 0.98);} [data-header*=\"type-1\"] #offcanvas {--side-panel-width:500px;} [data-header*=\"type-1\"] [data-behaviour*=\"side\"] {--box-shadow:0px 0px 70px rgba(0, 0, 0, 0.35);} [data-header*=\"type-1\"] [data-id=\"search\"] .ct-label {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;} [data-header*=\"type-1\"] #search-modal .ct-search-results a {--fontWeight:500;--fontSize:14px;--lineHeight:1.4;} [data-header*=\"type-1\"] #search-modal {--linkInitialColor:#ffffff;--form-text-initial-color:#ffffff;--form-text-focus-color:#ffffff;background-color:rgba(18, 21, 25, 0.98);} [data-header*=\"type-1\"] #search-modal input {--form-field-border-initial-color:rgba(255, 255, 255, 0.2);} [data-header*=\"type-1\"] [data-id=\"trigger\"] {--icon-size:18px;} [data-header*=\"type-1\"] [data-id=\"trigger\"] .ct-label {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;} [data-header*=\"type-1\"] {--header-height:120px;} [data-footer*=\"type-1\"] .ct-footer [data-row*=\"bottom\"] > div {--container-spacing:25px;--border:none;--border-top:none;--border-bottom:none;--grid-template-columns:initial;} [data-footer*=\"type-1\"] .ct-footer [data-row*=\"bottom\"] .widget-title {--fontSize:16px;} [data-footer*=\"type-1\"] .ct-footer [data-row*=\"bottom\"] {--border-top:none;--border-bottom:none;background-color:transparent;} [data-footer*=\"type-1\"] [data-id=\"copyright\"] {--fontWeight:400;--fontSize:15px;--lineHeight:1.3;} [data-footer*=\"type-1\"][data-footer*=\"reveal\"] .site-main {--footer-box-shadow:0px 30px 50px rgba(0, 0, 0, 0.1);} [data-footer*=\"type-1\"] footer.ct-footer {background-color:var(--paletteColor6);}:root {--fontFamily:-apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';--fontWeight:400;--textTransform:none;--textDecoration:none;--fontSize:16px;--lineHeight:1.65;--letterSpacing:0em;--buttonFontWeight:500;--buttonFontSize:15px;--has-classic-forms:var(--true);--has-modern-forms:var(--false);--form-field-border-initial-color:var(--border-color);--form-field-border-focus-color:var(--paletteColor1);--form-selection-control-initial-color:var(--border-color);--form-selection-control-accent-color:var(--paletteColor1);--paletteColor1:#2872fa;--paletteColor2:#1559ed;--paletteColor3:#3A4F66;--paletteColor4:#192a3d;--paletteColor5:#e1e8ed;--paletteColor6:#f2f5f7;--paletteColor7:#FAFBFC;--paletteColor8:#ffffff;--color:var(--paletteColor3);--linkInitialColor:var(--paletteColor1);--linkHoverColor:var(--paletteColor2);--selectionTextColor:#ffffff;--selectionBackgroundColor:var(--paletteColor1);--border-color:var(--paletteColor5);--headings-color:var(--paletteColor4);--content-spacing:1.5em;--buttonMinHeight:40px;--buttonShadow:none;--buttonTransform:none;--buttonTextInitialColor:#ffffff;--buttonTextHoverColor:#ffffff;--buttonInitialColor:var(--paletteColor1);--buttonHoverColor:var(--paletteColor2);--button-border:none;--buttonBorderRadius:3px;--button-padding:5px 20px;--normal-container-max-width:1290px;--content-vertical-spacing:60px;--narrow-container-max-width:750px;--wide-offset:130px;}h1 {--fontWeight:700;--fontSize:40px;--lineHeight:1.5;}h2 {--fontWeight:700;--fontSize:35px;--lineHeight:1.5;}h3 {--fontWeight:700;--fontSize:30px;--lineHeight:1.5;}h4 {--fontWeight:700;--fontSize:25px;--lineHeight:1.5;}h5 {--fontWeight:700;--fontSize:20px;--lineHeight:1.5;}h6 {--fontWeight:700;--fontSize:16px;--lineHeight:1.5;}.wp-block-pullquote, .ct-quote-widget blockquote {--fontFamily:Georgia;--fontWeight:600;--fontSize:25px;}code, kbd, samp, pre {--fontFamily:monospace;--fontWeight:400;--fontSize:16px;}.ct-sidebar .widget-title {--fontSize:18px;}.ct-breadcrumbs {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;}body {background-color:var(--paletteColor7);background-image:none;} [data-prefix=\"single_blog_post\"] .entry-header .page-title {--fontSize:30px;} [data-prefix=\"single_blog_post\"] .entry-header .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;--lineHeight:1.3;} [data-prefix=\"categories\"] .entry-header .page-title {--fontSize:30px;} [data-prefix=\"categories\"] .entry-header .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;--lineHeight:1.3;} [data-prefix=\"search\"] .entry-header .page-title {--fontSize:30px;} [data-prefix=\"search\"] .entry-header .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;--lineHeight:1.3;} [data-prefix=\"author\"] .entry-header .page-title {--fontSize:30px;} [data-prefix=\"author\"] .entry-header .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;--lineHeight:1.3;} [data-prefix=\"author\"] .hero-section[data-type=\"type-2\"] {background-color:var(--paletteColor6);background-image:none;--container-padding:50px 0;} [data-prefix=\"single_page\"] .entry-header .page-title {--fontSize:30px;} [data-prefix=\"single_page\"] .entry-header .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;--lineHeight:1.3;} [data-prefix=\"blog\"] .entries {--grid-template-columns:repeat(3, minmax(0, 1fr));} [data-prefix=\"blog\"] .entry-card .entry-title {--fontSize:20px;--lineHeight:1.3;} [data-prefix=\"blog\"] .entry-card .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;} [data-prefix=\"blog\"] .entry-card {background-color:var(--paletteColor8);--box-shadow:0px 12px 18px -6px rgba(34, 56, 101, 0.04);} [data-prefix=\"categories\"] .entries {--grid-template-columns:repeat(3, minmax(0, 1fr));} [data-prefix=\"categories\"] .entry-card .entry-title {--fontSize:20px;--lineHeight:1.3;} [data-prefix=\"categories\"] .entry-card .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;} [data-prefix=\"categories\"] .entry-card {background-color:var(--paletteColor8);--box-shadow:0px 12px 18px -6px rgba(34, 56, 101, 0.04);} [data-prefix=\"author\"] .entries {--grid-template-columns:repeat(3, minmax(0, 1fr));} [data-prefix=\"author\"] .entry-card .entry-title {--fontSize:20px;--lineHeight:1.3;} [data-prefix=\"author\"] .entry-card .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;} [data-prefix=\"author\"] .entry-card {background-color:var(--paletteColor8);--box-shadow:0px 12px 18px -6px rgba(34, 56, 101, 0.04);} [data-prefix=\"search\"] .entries {--grid-template-columns:repeat(3, minmax(0, 1fr));} [data-prefix=\"search\"] .entry-card .entry-title {--fontSize:20px;--lineHeight:1.3;} [data-prefix=\"search\"] .entry-card .entry-meta {--fontWeight:600;--textTransform:uppercase;--fontSize:12px;} [data-prefix=\"search\"] .entry-card {background-color:var(--paletteColor8);--box-shadow:0px 12px 18px -6px rgba(34, 56, 101, 0.04);}form textarea {--form-field-height:170px;}.ct-sidebar {--linkInitialColor:var(--color);} [data-prefix=\"single_blog_post\"] [class*=\"ct-container\"] > article[class*=\"post\"] {--has-boxed:var(--false);--has-wide:var(--true);} [data-prefix=\"single_page\"] [class*=\"ct-container\"] > article[class*=\"post\"] {--has-boxed:var(--false);--has-wide:var(--true);}\";s:6:\"tablet\";s:621:\"[data-header*=\"type-1\"] .ct-header [data-row*=\"middle\"] {--height:70px;} [data-header*=\"type-1\"] #offcanvas {--side-panel-width:65vw;} [data-header*=\"type-1\"] {--header-height:70px;} [data-footer*=\"type-1\"] .ct-footer [data-row*=\"bottom\"] > div {--grid-template-columns:initial;} [data-prefix=\"blog\"] .entries {--grid-template-columns:repeat(2, minmax(0, 1fr));} [data-prefix=\"categories\"] .entries {--grid-template-columns:repeat(2, minmax(0, 1fr));} [data-prefix=\"author\"] .entries {--grid-template-columns:repeat(2, minmax(0, 1fr));} [data-prefix=\"search\"] .entries {--grid-template-columns:repeat(2, minmax(0, 1fr));}\";s:6:\"mobile\";s:835:\"[data-header*=\"type-1\"] #offcanvas {--side-panel-width:90vw;} [data-footer*=\"type-1\"] .ct-footer [data-row*=\"bottom\"] > div {--container-spacing:15px;--grid-template-columns:initial;} [data-prefix=\"blog\"] .entries {--grid-template-columns:repeat(1, minmax(0, 1fr));} [data-prefix=\"blog\"] .entry-card .entry-title {--fontSize:18px;} [data-prefix=\"categories\"] .entries {--grid-template-columns:repeat(1, minmax(0, 1fr));} [data-prefix=\"categories\"] .entry-card .entry-title {--fontSize:18px;} [data-prefix=\"author\"] .entries {--grid-template-columns:repeat(1, minmax(0, 1fr));} [data-prefix=\"author\"] .entry-card .entry-title {--fontSize:18px;} [data-prefix=\"search\"] .entries {--grid-template-columns:repeat(1, minmax(0, 1fr));} [data-prefix=\"search\"] .entry-card .entry-title {--fontSize:18px;}:root {--content-vertical-spacing:50px;}\";}}', 'no'),
(230, 'blocksy_db_version', '1.9.8', 'yes'),
(234, 'dismissed-blocksy_plugin_notice', '1', 'yes'),
(239, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(243, 'theme_mods_bizboost', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:3:{s:9:\"sidebar-1\";a:11:{s:4:\"name\";s:15:\"Primary Sidebar\";s:2:\"id\";s:9:\"sidebar-1\";s:11:\"description\";s:38:\"Main sidebar that appears on the left.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-2\";a:11:{s:4:\"name\";s:15:\"Content Sidebar\";s:2:\"id\";s:9:\"sidebar-2\";s:11:\"description\";s:45:\"Additional sidebar that appears on the right.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-3\";a:11:{s:4:\"name\";s:18:\"Footer Widget Area\";s:2:\"id\";s:9:\"sidebar-3\";s:11:\"description\";s:42:\"Appears in the footer section of the site.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698101109;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(247, 'theme_mods_minimalistix', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:3:{s:9:\"sidebar-1\";a:11:{s:4:\"name\";s:15:\"Primary Sidebar\";s:2:\"id\";s:9:\"sidebar-1\";s:11:\"description\";s:38:\"Main sidebar that appears on the left.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-2\";a:11:{s:4:\"name\";s:15:\"Content Sidebar\";s:2:\"id\";s:9:\"sidebar-2\";s:11:\"description\";s:45:\"Additional sidebar that appears on the right.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-3\";a:11:{s:4:\"name\";s:18:\"Footer Widget Area\";s:2:\"id\";s:9:\"sidebar-3\";s:11:\"description\";s:42:\"Appears in the footer section of the site.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698101076;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:19:\"enwoo-right-sidebar\";a:0:{}}}}', 'yes'),
(263, 'theme_mods_zeever', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:3:{s:9:\"sidebar-1\";a:11:{s:4:\"name\";s:15:\"Primary Sidebar\";s:2:\"id\";s:9:\"sidebar-1\";s:11:\"description\";s:38:\"Main sidebar that appears on the left.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-2\";a:11:{s:4:\"name\";s:15:\"Content Sidebar\";s:2:\"id\";s:9:\"sidebar-2\";s:11:\"description\";s:45:\"Additional sidebar that appears on the right.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-3\";a:11:{s:4:\"name\";s:18:\"Footer Widget Area\";s:2:\"id\";s:9:\"sidebar-3\";s:11:\"description\";s:42:\"Appears in the footer section of the site.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h1 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h1>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698101123;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(264, 'zeever_upgrader_page_content', '1', 'yes'),
(267, 'downloaded_font_files', 'a:48:{s:90:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiS2sd0mg7UiCXC5VkK8.woff\";s:99:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiS2sd0mg7UiCXC5VkK8.woff\";s:87:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiS2sdUmg7UiCXC5V.woff\";s:96:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiS2sdUmg7UiCXC5V.woff\";s:90:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1ECSysd0mg7UiCXC5VkK8.woff\";s:99:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1ECSysd0mg7UiCXC5VkK8.woff\";s:87:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1ECSysdUmg7UiCXC5V.woff\";s:96:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1ECSysdUmg7UiCXC5V.woff\";s:90:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1E1yysd0mg7UiCXC5VkK8.woff\";s:99:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1E1yysd0mg7UiCXC5VkK8.woff\";s:87:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1E1yysdUmg7UiCXC5V.woff\";s:96:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1E1yysdUmg7UiCXC5V.woff\";s:90:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiSysd0mg7UiCXC5VkK8.woff\";s:99:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiSysd0mg7UiCXC5VkK8.woff\";s:87:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiSysdUmg7UiCXC5V.woff\";s:96:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EiSysdUmg7UiCXC5V.woff\";s:90:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1Euyysd0mg7UiCXC5VkK8.woff\";s:99:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1Euyysd0mg7UiCXC5VkK8.woff\";s:87:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EuyysdUmg7UiCXC5V.woff\";s:96:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EuyysdUmg7UiCXC5V.woff\";s:90:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EVyusd0mg7UiCXC5VkK8.woff\";s:99:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EVyusd0mg7UiCXC5VkK8.woff\";s:87:\"https://fonts.gstatic.com/s/heebo/v22/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EVyusdUmg7UiCXC5V.woff\";s:96:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/heebo/NGSpv5_NC0k9P_v6ZUCbLRAHxK1EVyusdUmg7UiCXC5V.woff\";s:80:\"https://fonts.gstatic.com/s/poppins/v20/pxiAyp8kv8JHgFVrJJLmE0tDMPShSkFEkm8.woff\";s:89:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiAyp8kv8JHgFVrJJLmE0tDMPShSkFEkm8.woff\";s:80:\"https://fonts.gstatic.com/s/poppins/v20/pxiAyp8kv8JHgFVrJJLmE0tMMPShSkFEkm8.woff\";s:89:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiAyp8kv8JHgFVrJJLmE0tMMPShSkFEkm8.woff\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiAyp8kv8JHgFVrJJLmE0tCMPShSkFE.woff\";s:86:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiAyp8kv8JHgFVrJJLmE0tCMPShSkFE.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmv1pVFteIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmv1pVFteIYktMqlap.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmv1pVGdeIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmv1pVGdeIYktMqlap.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmv1pVF9eIYktMqg.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmv1pVF9eIYktMqg.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm21lVFteIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm21lVFteIYktMqlap.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm21lVGdeIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm21lVGdeIYktMqlap.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLm21lVF9eIYktMqg.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLm21lVF9eIYktMqg.woff\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrJJLucXtGOvWDSHFF.woff\";s:86:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrJJLucXtGOvWDSHFF.woff\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrJJLufntGOvWDSHFF.woff\";s:86:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrJJLufntGOvWDSHFF.woff\";s:75:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrJJLucHtGOvWDSA.woff\";s:84:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrJJLucHtGOvWDSA.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmg1hVFteIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmg1hVFteIYktMqlap.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmg1hVGdeIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmg1hVGdeIYktMqlap.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmg1hVF9eIYktMqg.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmg1hVF9eIYktMqg.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmr19VFteIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmr19VFteIYktMqlap.woff\";s:81:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmr19VGdeIYktMqlap.woff\";s:90:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmr19VGdeIYktMqlap.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiDyp8kv8JHgFVrJJLmr19VF9eIYktMqg.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiDyp8kv8JHgFVrJJLmr19VF9eIYktMqg.woff\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrLPTucXtGOvWDSHFF.woff\";s:86:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrLPTucXtGOvWDSHFF.woff\";s:77:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrLPTufntGOvWDSHFF.woff\";s:86:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrLPTufntGOvWDSHFF.woff\";s:75:\"https://fonts.gstatic.com/s/poppins/v20/pxiGyp8kv8JHgFVrLPTucHtGOvWDSA.woff\";s:84:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiGyp8kv8JHgFVrLPTucHtGOvWDSA.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLFj_Z11lE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLFj_Z11lE92JQEl8qw.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLFj_Z1JlE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLFj_Z1JlE92JQEl8qw.woff\";s:76:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLFj_Z1xlE92JQEk.woff\";s:85:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLFj_Z1xlE92JQEk.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z11lE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDz8Z11lE92JQEl8qw.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z1JlE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDz8Z1JlE92JQEl8qw.woff\";s:76:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLDz8Z1xlE92JQEk.woff\";s:85:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLDz8Z1xlE92JQEk.woff\";s:75:\"https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJbedHFHGPezSQ.woff\";s:84:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiEyp8kv8JHgFVrJJbedHFHGPezSQ.woff\";s:75:\"https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJnedHFHGPezSQ.woff\";s:84:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiEyp8kv8JHgFVrJJnedHFHGPezSQ.woff\";s:72:\"https://fonts.gstatic.com/s/poppins/v20/pxiEyp8kv8JHgFVrJJfedHFHGPc.woff\";s:81:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiEyp8kv8JHgFVrJJfedHFHGPc.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z11lE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLGT9Z11lE92JQEl8qw.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1JlE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLGT9Z1JlE92JQEl8qw.woff\";s:76:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLGT9Z1xlE92JQEk.woff\";s:85:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLGT9Z1xlE92JQEk.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z11lE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLEj6Z11lE92JQEl8qw.woff\";s:79:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z1JlE92JQEl8qw.woff\";s:88:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLEj6Z1JlE92JQEl8qw.woff\";s:76:\"https://fonts.gstatic.com/s/poppins/v20/pxiByp8kv8JHgFVrLEj6Z1xlE92JQEk.woff\";s:85:\"Y:/xampp/htdocs/rado_5/wp-content//fonts/poppins/pxiByp8kv8JHgFVrLEj6Z1xlE92JQEk.woff\";}', 'no'),
(271, 'theme_mods_bravada', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698100858;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:18:\"footer-widget-area\";a:0:{}s:26:\"content-widget-area-before\";a:0:{}s:25:\"content-widget-area-after\";a:0:{}s:18:\"widget-area-header\";a:0:{}s:24:\"widget-area-side-section\";a:0:{}}}}', 'yes'),
(277, 'theme_mods_enwoo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698100893;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"enwoo-right-sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:18:\"enwoo-top-bar-area\";a:0:{}s:17:\"enwoo-footer-area\";a:0:{}}}}', 'yes'),
(282, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698437591;s:7:\"checked\";a:1:{s:14:\"twentyfourteen\";s:3:\"3.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:14:\"twentyfourteen\";a:6:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.3.7.zip\";s:8:\"requires\";s:3:\"3.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(284, 'theme_mods_twentyfourteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698101050;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(285, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, '_transient_is_multi_author', '0', 'yes'),
(309, '_transient_featured_content_ids', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(329, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698432434;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.5.6\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2906985\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2906985\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/duplicator/assets/banner-1544x500.png?rev=2906985\";s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2906985\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:33:\"duplicator-pro/duplicator-pro.php\";O:8:\"stdClass\":16:{s:11:\"new_version\";s:8:\"4.5.13.2\";s:14:\"stable_version\";s:8:\"4.5.13.2\";s:4:\"name\";s:14:\"Duplicator Pro\";s:4:\"slug\";s:14:\"duplicator-pro\";s:3:\"url\";s:60:\"https://duplicator.com/downloads/duplicator-pro/?changelog=1\";s:12:\"last_updated\";s:19:\"2023-10-19 19:20:32\";s:8:\"homepage\";s:48:\"https://duplicator.com/downloads/duplicator-pro/\";s:7:\"package\";s:187:\"https://duplicator.com/edd-sl/package_download/MTY5OTYyNzYyOTo4OGE5YzlhNzI4NGZmZmY3ZjMwYmY3NDMyODA4ZDBkNzozMTo0MTNkMjNkNTk1YTMxOGYxNTViNjRhOWNlNzU1ZmMyYzpodHRwQC8vbG9jYWxob3N0L3JhZG9fNTow\";s:13:\"download_link\";s:187:\"https://duplicator.com/edd-sl/package_download/MTY5OTYyNzYyOTo4OGE5YzlhNzI4NGZmZmY3ZjMwYmY3NDMyODA4ZDBkNzozMTo0MTNkMjNkNTk1YTMxOGYxNTViNjRhOWNlNzU1ZmMyYzpodHRwQC8vbG9jYWxob3N0L3JhZG9fNTow\";s:8:\"sections\";O:8:\"stdClass\":2:{s:11:\"description\";s:60:\"<p>Duplicator Pro backup and migration WordPress plugin</p>\n\";s:9:\"changelog\";s:116:\"<p>Please go here to find the Duplicator Pro changelog:</p>\n<p>https://duplicator.com/knowledge-base/changelog/</p>\n\";}s:7:\"banners\";O:8:\"stdClass\":2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}s:5:\"icons\";a:2:{s:2:\"1x\";s:80:\"https://duplicator.com/wp-content/uploads/edd/2023/10/icon-256x256-1-128x128.png\";s:2:\"2x\";s:72:\"https://duplicator.com/wp-content/uploads/edd/2023/10/icon-256x256-1.png\";}s:11:\"description\";a:1:{i:0;s:60:\"<p>Duplicator Pro backup and migration WordPress plugin</p>\n\";}s:9:\"changelog\";a:1:{i:0;s:116:\"<p>Please go here to find the Duplicator Pro changelog:</p>\n<p>https://duplicator.com/knowledge-base/changelog/</p>\n\";}s:6:\"plugin\";s:33:\"duplicator-pro/duplicator-pro.php\";s:2:\"id\";s:33:\"duplicator-pro/duplicator-pro.php\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.2\";s:25:\"duplicator/duplicator.php\";s:5:\"1.5.6\";s:33:\"duplicator-pro/duplicator-pro.php\";s:8:\"4.5.13.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(331, '_site_transient_timeout_theme_roots', '1698439390', 'no'),
(332, '_site_transient_theme_roots', 'a:1:{s:14:\"twentyfourteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_lock', '1698438659:1'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1698098705'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 11, '_edit_lock', '1698098832:1'),
(10, 7, 'footnotes', ''),
(11, 15, '_edit_lock', '1698101141:1'),
(12, 18, '_edit_lock', '1698099214:1'),
(13, 20, '_menu_item_type', 'post_type'),
(14, 20, '_menu_item_menu_item_parent', '0'),
(15, 20, '_menu_item_object_id', '7'),
(16, 20, '_menu_item_object', 'page'),
(17, 20, '_menu_item_target', ''),
(18, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 20, '_menu_item_xfn', ''),
(20, 20, '_menu_item_url', ''),
(21, 20, '_menu_item_orphaned', '1698099583'),
(22, 21, '_menu_item_type', 'post_type'),
(23, 21, '_menu_item_menu_item_parent', '0'),
(24, 21, '_menu_item_object_id', '11'),
(25, 21, '_menu_item_object', 'page'),
(26, 21, '_menu_item_target', ''),
(27, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 21, '_menu_item_xfn', ''),
(29, 21, '_menu_item_url', ''),
(30, 21, '_menu_item_orphaned', '1698099590'),
(31, 22, '_menu_item_type', 'post_type'),
(32, 22, '_menu_item_menu_item_parent', '0'),
(33, 22, '_menu_item_object_id', '15'),
(34, 22, '_menu_item_object', 'page'),
(35, 22, '_menu_item_target', ''),
(36, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 22, '_menu_item_xfn', ''),
(38, 22, '_menu_item_url', ''),
(39, 22, '_menu_item_orphaned', '1698099594'),
(40, 23, '_edit_lock', '1698099473:1'),
(41, 25, '_menu_item_type', 'post_type'),
(42, 25, '_menu_item_menu_item_parent', '0'),
(43, 25, '_menu_item_object_id', '18'),
(44, 25, '_menu_item_object', 'page'),
(45, 25, '_menu_item_target', ''),
(46, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 25, '_menu_item_xfn', ''),
(48, 25, '_menu_item_url', ''),
(49, 25, '_menu_item_orphaned', '1698099634'),
(50, 26, '_menu_item_type', 'post_type'),
(51, 26, '_menu_item_menu_item_parent', '0'),
(52, 26, '_menu_item_object_id', '23'),
(53, 26, '_menu_item_object', 'page'),
(54, 26, '_menu_item_target', ''),
(55, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 26, '_menu_item_xfn', ''),
(57, 26, '_menu_item_url', ''),
(59, 27, '_menu_item_type', 'post_type'),
(60, 27, '_menu_item_menu_item_parent', '0'),
(61, 27, '_menu_item_object_id', '18'),
(62, 27, '_menu_item_object', 'page'),
(63, 27, '_menu_item_target', ''),
(64, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 27, '_menu_item_xfn', ''),
(66, 27, '_menu_item_url', ''),
(68, 28, '_menu_item_type', 'post_type'),
(69, 28, '_menu_item_menu_item_parent', '0'),
(70, 28, '_menu_item_object_id', '15'),
(71, 28, '_menu_item_object', 'page'),
(72, 28, '_menu_item_target', ''),
(73, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 28, '_menu_item_xfn', ''),
(75, 28, '_menu_item_url', ''),
(77, 29, '_menu_item_type', 'post_type'),
(78, 29, '_menu_item_menu_item_parent', '0'),
(79, 29, '_menu_item_object_id', '11'),
(80, 29, '_menu_item_object', 'page'),
(81, 29, '_menu_item_target', ''),
(82, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 29, '_menu_item_xfn', ''),
(84, 29, '_menu_item_url', ''),
(86, 30, '_menu_item_type', 'post_type'),
(87, 30, '_menu_item_menu_item_parent', '0'),
(88, 30, '_menu_item_object_id', '7'),
(89, 30, '_menu_item_object', 'page'),
(90, 30, '_menu_item_target', ''),
(91, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 30, '_menu_item_xfn', ''),
(93, 30, '_menu_item_url', ''),
(95, 33, '_edit_lock', '1698099958:1'),
(96, 38, '_edit_lock', '1698101660:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-22 16:42:37', '2023-10-22 16:42:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-22 16:42:37', '2023-10-22 16:42:37', '', 0, 'http://localhost/rado_5/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-22 16:42:37', '2023-10-22 16:42:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/rado_5/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-10-23 22:05:05', '2023-10-23 22:05:05', '', 0, 'http://localhost/rado_5/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-22 16:42:37', '2023-10-22 16:42:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/rado_5.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-22 16:42:37', '2023-10-22 16:42:37', '', 0, 'http://localhost/rado_5/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-22 16:42:39', '2023-10-22 16:42:39', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-22 16:42:39', '2023-10-22 16:42:39', '', 0, 'http://localhost/rado_5/2023/10/22/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2023-10-22 16:42:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-22 16:42:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=5', 0, 'post', '', 0),
(7, 1, '2023-10-23 22:03:44', '2023-10-23 22:03:44', '<!-- wp:paragraph -->\n<p>Hei der! Jeg er Rado, den lekne og kreative informatik farmasøyten som ønsker å overbevise deg at innovasjoner i mange områder er veldig spennende!</p>\n<!-- /wp:paragraph -->', 'om meg', '', 'publish', 'closed', 'closed', '', 'om-meg', '', '', '2023-10-23 22:49:43', '2023-10-23 22:49:43', '', 0, 'http://localhost/rado_5/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-10-23 22:01:23', '2023-10-23 22:01:23', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-blocksy', '', '', '2023-10-23 22:01:23', '2023-10-23 22:01:23', '', 0, 'http://localhost/rado_5/2023/10/23/wp-global-styles-blocksy/', 0, 'wp_global_styles', '', 0),
(9, 1, '2023-10-23 22:03:44', '2023-10-23 22:03:44', '<!-- wp:paragraph -->\n<p>Hei der! Jeg er Rado, den mest lekne og kreative informatik farmasøyten du noensinne vil møte! Trodde du at farmasøytisk informasjon var kjedelig? Tenk igjen!</p>\n<!-- /wp:paragraph -->', 'om meg', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-10-23 22:03:44', '2023-10-23 22:03:44', '', 7, 'http://localhost/rado_5/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-10-23 22:05:05', '2023-10-23 22:05:05', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/rado_5/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-23 22:05:05', '2023-10-23 22:05:05', '', 2, 'http://localhost/rado_5/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-10-23 22:07:47', '2023-10-23 22:07:47', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.ekstraomsorg.online\">ekstraomsorg.online</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/rado002/Medisinstart\">rado002/Medisinstart: Eksempelside (ACEI og angiotensin II-antagonister) (github.com)</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/rado002/Kryss-salg\">rado002/Kryss-salg: Kryss-salg modul (github.com)</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'prosjekter', '', 'publish', 'closed', 'closed', '', 'prosjekter', '', '', '2023-10-23 22:07:47', '2023-10-23 22:07:47', '', 0, 'http://localhost/rado_5/?page_id=11', 0, 'page', '', 0),
(12, 1, '2023-10-23 22:07:47', '2023-10-23 22:07:47', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"http://www.ekstraomsorg.online\">ekstraomsorg.online</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/rado002/Medisinstart\">rado002/Medisinstart: Eksempelside (ACEI og angiotensin II-antagonister) (github.com)</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://github.com/rado002/Kryss-salg\">rado002/Kryss-salg: Kryss-salg modul (github.com)</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'prosjekter', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-10-23 22:07:47', '2023-10-23 22:07:47', '', 11, 'http://localhost/rado_5/?p=12', 0, 'revision', '', 0),
(14, 1, '2023-10-23 22:09:40', '2023-10-23 22:09:40', '<!-- wp:paragraph -->\n<p>Hei der! Jeg er Rado, den mest lekne og kreative informatik farmasøyten du har noensinne møtet! Trodde du at farmasøytisk innovasjon var kjedelig? La meg overbevise deg at det er veldig spennende!</p>\n<!-- /wp:paragraph -->', 'om meg', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-10-23 22:09:40', '2023-10-23 22:09:40', '', 7, 'http://localhost/rado_5/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-10-23 22:14:20', '2023-10-23 22:14:20', '<!-- wp:paragraph -->\n<p>Raspberry pi, Arduino, lodding, styrketrening, dansing, sykling</p>\n<!-- /wp:paragraph -->', 'hobby', '', 'publish', 'closed', 'closed', '', 'hobby', '', '', '2023-10-23 22:47:47', '2023-10-23 22:47:47', '', 0, 'http://localhost/rado_5/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-10-23 22:14:20', '2023-10-23 22:14:20', '<!-- wp:paragraph -->\n<p>Raspberry pi, Arduino, lodding, styrketrening, sykling, dansing</p>\n<!-- /wp:paragraph -->', 'hobby', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-10-23 22:14:20', '2023-10-23 22:14:20', '', 15, 'http://localhost/rado_5/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-10-23 22:14:31', '2023-10-23 22:14:31', '<!-- wp:paragraph -->\n<p>Raspberry pi, Arduino, lodding, styrketrening, sykling</p>\n<!-- /wp:paragraph -->', 'hobby', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-10-23 22:14:31', '2023-10-23 22:14:31', '', 15, 'http://localhost/rado_5/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-23 22:15:56', '2023-10-23 22:15:56', '<!-- wp:paragraph -->\n<p>office@rado.fun</p>\n<!-- /wp:paragraph -->', 'kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2023-10-23 22:15:56', '2023-10-23 22:15:56', '', 0, 'http://localhost/rado_5/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-10-23 22:15:56', '2023-10-23 22:15:56', '<!-- wp:paragraph -->\n<p>office@rado.fun</p>\n<!-- /wp:paragraph -->', 'kontakt', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-10-23 22:15:56', '2023-10-23 22:15:56', '', 18, 'http://localhost/rado_5/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-10-23 22:19:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-23 22:19:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2023-10-23 22:19:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-23 22:19:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2023-10-23 22:19:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-23 22:19:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2023-10-23 22:20:15', '2023-10-23 22:20:15', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-10-23 22:20:15', '2023-10-23 22:20:15', '', 0, 'http://localhost/rado_5/?page_id=23', 0, 'page', '', 0),
(24, 1, '2023-10-23 22:20:15', '2023-10-23 22:20:15', '', 'blog', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-10-23 22:20:15', '2023-10-23 22:20:15', '', 23, 'http://localhost/rado_5/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-10-23 22:20:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-23 22:20:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2023-10-23 22:43:44', '2023-10-23 22:22:03', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2023-10-23 22:43:44', '2023-10-23 22:43:44', '', 0, 'http://localhost/rado_5/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2023-10-23 22:43:44', '2023-10-23 22:22:03', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2023-10-23 22:43:44', '2023-10-23 22:43:44', '', 0, 'http://localhost/rado_5/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2023-10-23 22:43:44', '2023-10-23 22:22:03', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2023-10-23 22:43:44', '2023-10-23 22:43:44', '', 0, 'http://localhost/rado_5/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2023-10-23 22:43:44', '2023-10-23 22:22:03', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2023-10-23 22:43:44', '2023-10-23 22:43:44', '', 0, 'http://localhost/rado_5/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2023-10-23 22:43:44', '2023-10-23 22:22:03', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2023-10-23 22:43:44', '2023-10-23 22:43:44', '', 0, 'http://localhost/rado_5/?p=30', 1, 'nav_menu_item', '', 0),
(32, 1, '2023-10-23 22:24:39', '2023-10-23 22:24:39', '<!-- wp:paragraph -->\n<p>Hei der! Jeg er Rado, den lekne og kreative informatik farmasøyten som ønsker å overbevise deg at farmasøytisk innovasjon er veldig spennende!</p>\n<!-- /wp:paragraph -->', 'om meg', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-10-23 22:24:39', '2023-10-23 22:24:39', '', 7, 'http://localhost/rado_5/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-10-23 22:25:58', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[30]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/rado_5/om-meg/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"om meg\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-23 22:25:58\"\n    },\n    \"nav_menu_item[29]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/rado_5/prosjekter/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"prosjekter\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-23 22:25:58\"\n    },\n    \"nav_menu_item[26]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 23,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/rado_5/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-23 22:25:58\"\n    },\n    \"nav_menu_item[27]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/rado_5/kontakt/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"kontakt\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-23 22:25:58\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8ef590fc-0295-48d2-b744-fc1af1d72b09', '', '', '2023-10-23 22:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2023-10-23 22:28:56', '2023-10-23 22:28:56', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-bizboost', '', '', '2023-10-23 22:28:56', '2023-10-23 22:28:56', '', 0, 'http://localhost/rado_5/2023/10/23/wp-global-styles-bizboost/', 0, 'wp_global_styles', '', 0),
(35, 1, '2023-10-23 22:31:33', '2023-10-23 22:31:33', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-minimalistix', '', '', '2023-10-23 22:31:33', '2023-10-23 22:31:33', '', 0, 'http://localhost/rado_5/2023/10/23/wp-global-styles-minimalistix/', 0, 'wp_global_styles', '', 0),
(36, 1, '2023-10-23 22:47:47', '2023-10-23 22:47:47', '<!-- wp:paragraph -->\n<p>Raspberry pi, Arduino, lodding, styrketrening, dansing, sykling</p>\n<!-- /wp:paragraph -->', 'hobby', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-10-23 22:47:47', '2023-10-23 22:47:47', '', 15, 'http://localhost/rado_5/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-10-23 22:49:43', '2023-10-23 22:49:43', '<!-- wp:paragraph -->\n<p>Hei der! Jeg er Rado, den lekne og kreative informatik farmasøyten som ønsker å overbevise deg at innovasjoner i mange områder er veldig spennende!</p>\n<!-- /wp:paragraph -->', 'om meg', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-10-23 22:49:43', '2023-10-23 22:49:43', '', 7, 'http://localhost/rado_5/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-10-23 22:51:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-23 22:51:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/rado_5/?p=38', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'blocksy', 'blocksy', 0),
(3, 'menu_1', 'menu_1', 0),
(4, 'bizboost', 'bizboost', 0),
(5, 'minimalistix', 'minimalistix', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(26, 3, 0),
(27, 3, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(34, 4, 0),
(35, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'wp_theme', '', 0, 1),
(5, 5, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'rado'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"f7fee94865003037a42544bce278e54e59406cc8835d7f8a11f0fd1512c9e3bd\";a:4:{s:10:\"expiration\";i:1698610382;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1698437582;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'duplicator_notice_bar_dismissed', '1'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(20, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-10-23T22:33:18.304Z\";s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}s:14:\"core/edit-site\";a:3:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:0;s:18:\"welcomeGuideStyles\";b:0;}}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'rado', '$P$By5zSlv.4zMKekjqFj105XWQ4Izkkc/', 'rado', 'rado.max.k@gmail.com', 'http://localhost/rado_5', '2023-10-22 16:42:37', '', 0, 'rado');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_duplicator_pro_entities`
--
ALTER TABLE `wp_duplicator_pro_entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_idx` (`type`);

--
-- Indexes for table `wp_duplicator_pro_packages`
--
ALTER TABLE `wp_duplicator_pro_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_duplicator_pro_entities`
--
ALTER TABLE `wp_duplicator_pro_entities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_duplicator_pro_packages`
--
ALTER TABLE `wp_duplicator_pro_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
