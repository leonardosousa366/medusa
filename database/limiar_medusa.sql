-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 22/05/2021 às 07:16
-- Versão do servidor: 5.7.34
-- Versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `limiar_medusa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-19 21:46:32', '2021-05-20 00:46:32', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://limiardorole.com.br/medusa', 'yes'),
(2, 'home', 'https://limiardorole.com.br/medusa', 'yes'),
(3, 'blogname', 'MedUSA', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'leonardosousa366@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:35:\"wp-fastest-cache/wpFastestCache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:67:\"/home/limiar/public_html/medusa/wp-content/themes/medusa/header.php\";i:1;s:67:\"/home/limiar/public_html/medusa/wp-content/themes/medusa/footer.php\";i:3;s:70:\"/home/limiar/public_html/medusa/wp-content/themes/medusa/functions.php\";i:4;s:66:\"/home/limiar/public_html/medusa/wp-content/themes/medusa/index.php\";i:5;s:68:\"/home/limiar/public_html/medusa/wp-content/themes/medusa/sidebar.php\";}', 'no'),
(40, 'template', 'medusa', 'yes'),
(41, 'stylesheet', 'medusa', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1637023592', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:15:\"side-bar-padrao\";a:1:{i:0;s:8:\"search-3\";}s:18:\"side-bar-categoria\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:6:{i:1621669593;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1621687593;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621730793;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1621730805;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622162793;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:0:{}', 'yes'),
(304, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1621644481;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1621554105;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(131, '_site_transient_timeout_browser_91a5f83ceb870856ffa675d889c9744f', '1622076405', 'no'),
(132, '_site_transient_browser_91a5f83ceb870856ffa675d889c9744f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_5e827212769c648f6a0478f622eede02', '1622076405', 'no'),
(134, '_site_transient_php_check_5e827212769c648f6a0478f622eede02', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(138, 'can_compress_scripts', '0', 'no'),
(422, '_site_transient_timeout_theme_roots', '1621666106', 'no'),
(423, '_site_transient_theme_roots', 'a:2:{s:6:\"medusa\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(418, 'secret_key', '{52:`[/FLXoRG(P=2;Tt]0-G@L|Vo$FqJ/%_#YH(P8zow#_`Y4B.!WN/gACqlw$f', 'no'),
(176, 'category_children', 'a:0:{}', 'yes'),
(268, 'current_theme', 'TB theme — Woocommerce version', 'yes'),
(269, 'theme_mods_medusa', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(270, 'theme_switched', '', 'yes'),
(307, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1621562867;s:7:\"version\";s:5:\"5.4.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(306, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621640718;s:7:\"checked\";a:2:{s:6:\"medusa\";s:3:\"1.5\";s:15:\"twentytwentyone\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(285, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":0}', 'yes'),
(305, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1621640718;s:7:\"checked\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.4.1\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:7:\"0.9.1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.4.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"wp-fastest-cache/wpFastestCache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/wp-fastest-cache\";s:4:\"slug\";s:16:\"wp-fastest-cache\";s:6:\"plugin\";s:35:\"wp-fastest-cache/wpFastestCache.php\";s:11:\"new_version\";s:7:\"0.9.1.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/wp-fastest-cache/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-fastest-cache.0.9.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-256x256.png?rev=2064586\";s:2:\"1x\";s:69:\"https://ps.w.org/wp-fastest-cache/assets/icon-128x128.png?rev=1068904\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/wp-fastest-cache/assets/banner-772x250.jpg?rev=1064099\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 3, '_wp_trash_meta_status', 'draft'),
(5, 3, '_wp_trash_meta_time', '1621473803'),
(6, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1621473807'),
(9, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(10, 8, '_edit_lock', '1621662139:1'),
(11, 9, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0011X.jpg'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:990;s:6:\"height\";i:664;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0011X.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0011X-522x350.jpg\";s:5:\"width\";i:522;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0021X.jpg'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:610;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0021X.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0021X-266x300.jpg\";s:5:\"width\";i:266;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0021X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0021X-310x350.jpg\";s:5:\"width\";i:310;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0031X.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:750;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0031X.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0031X-1024x533.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:533;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-768x400.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0031X-672x350.jpg\";s:5:\"width\";i:672;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0041X.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:555;s:6:\"height\";i:480;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0041X.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-300x259.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-405x350.jpg\";s:5:\"width\";i:405;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0041X.png'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:555;s:6:\"height\";i:480;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0041X.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-300x259.png\";s:5:\"width\";i:300;s:6:\"height\";i:259;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0041X-405x350.png\";s:5:\"width\";i:405;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0051X.jpg'),
(22, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:608;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0051X.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0051X-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-760x321.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2021/05/MEDUSA_HOME_IMG0051X.png'),
(24, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:608;s:4:\"file\";s:32:\"2021/05/MEDUSA_HOME_IMG0051X.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-300x127.png\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"MEDUSA_HOME_IMG0051X-1024x432.png\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-768x324.png\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"MEDUSA_HOME_IMG0051X-760x321.png\";s:5:\"width\";i:760;s:6:\"height\";i:321;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2021/05/MEDUSA_HOME_PARTNER_ICON_TEMP1X.jpg'),
(26, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:40;s:4:\"file\";s:43:\"2021/05/MEDUSA_HOME_PARTNER_ICON_TEMP1X.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_wp_attached_file', '2021/05/MEDUSA_HOME_PARTNER_ICON_TEMP1X.png'),
(28, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:99;s:6:\"height\";i:40;s:4:\"file\";s:43:\"2021/05/MEDUSA_HOME_PARTNER_ICON_TEMP1X.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2021/05/medusa_logo.png'),
(30, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:99;s:4:\"file\";s:23:\"2021/05/medusa_logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"medusa_logo-300x47.png\";s:5:\"width\";i:300;s:6:\"height\";i:47;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"medusa_logo-150x99.png\";s:5:\"width\";i:150;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 5, '_customize_restore_dismissed', '1'),
(32, 20, '_wp_trash_meta_status', 'publish'),
(33, 20, '_wp_trash_meta_time', '1621476697'),
(34, 38, '_form', '<div class=\"newsletter\"><div class=\"uk-grid\"><div class=\"uk-width-1-2\">[text* First-name placeholder \"First name\"]</div><div class=\"uk-width-1-2\">[text* Last-name placeholder \"Last name\"]</div></div><div class=\"uk-grid\"><div class=\"uk-width-1-2\">[email* e-mail placeholder \"Email\"]</div><div class=\"uk-width-1-2\">[tel phone placeholder \"Phone\"]</div></div><div class=\"uk-grid\"><div class=\"uk-width-3-5\"></div><div class=\"uk-width-2-5\">[submit \"Submit\"]</div></div></div>'),
(35, 38, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:11:\"MedUSA form\";s:6:\"sender\";s:37:\"[_site_title] <contato@medusa.com.br>\";s:9:\"recipient\";s:8:\"[e-mail]\";s:4:\"body\";s:51:\"[First-name] <[e-mail]> sign up for your newsletter\";s:18:\"additional_headers\";s:18:\"Reply-To: [e-mail]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(36, 38, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:45:\"[_site_title] <wordpress@limiardorole.com.br>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(37, 38, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Thank you for your message.\";s:12:\"mail_sent_ng\";s:69:\"An error occurred while trying to send your message. Try again later.\";s:16:\"validation_error\";s:54:\"One or more fields have an error. Check and try again.\";s:4:\"spam\";s:69:\"An error occurred while trying to send your message. Try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:23:\"The field is mandatory.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:24:\"The field is very short.\";s:13:\"upload_failed\";s:51:\"An unknown error occurred while uploading the file.\";s:24:\"upload_file_type_invalid\";s:48:\"You are not allowed to upload this type of file.\";s:21:\"upload_file_too_large\";s:22:\"The file is too large.\";s:23:\"upload_failed_php_error\";s:36:\"There was an error sending the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is earlier than the oldest allowed.\";s:13:\"date_too_late\";s:48:\"The date is later than the longest allowed date.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:44:\"The number is less than the minimum allowed.\";s:16:\"number_too_large\";s:47:\"The number is greater than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The email address provided is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:28:\"The phone number is invalid.\";}'),
(38, 38, '_additional_settings', ''),
(39, 38, '_locale', 'pt_BR'),
(49, 38, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-19 21:46:32', '2021-05-20 00:46:32', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-05-19 21:46:32', '2021-05-20 00:46:32', '', 0, 'https://limiardorole.com.br/medusa/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-19 21:46:32', '2021-05-20 00:46:32', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"https://limiardorole.com.br/medusa/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-05-19 22:23:27', '2021-05-20 01:23:27', '', 0, 'https://limiardorole.com.br/medusa/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-19 21:46:32', '2021-05-20 00:46:32', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: https://limiardorole.com.br/medusa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-05-19 22:23:23', '2021-05-20 01:23:23', '', 0, 'https://limiardorole.com.br/medusa/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-19 21:46:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-19 21:46:45', '0000-00-00 00:00:00', '', 0, 'https://limiardorole.com.br/medusa/?p=4', 0, 'post', '', 0),
(5, 1, '2021-05-19 22:20:50', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 01:20:50\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 01:20:50\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '91396b3d-5cd4-41dc-9e0e-142f65270411', '', '', '2021-05-19 22:20:50', '0000-00-00 00:00:00', '', 0, 'https://limiardorole.com.br/medusa/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2021-05-19 22:23:23', '2021-05-20 01:23:23', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: https://limiardorole.com.br/medusa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-05-19 22:23:23', '2021-05-20 01:23:23', '', 3, 'https://limiardorole.com.br/medusa/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-05-19 22:23:27', '2021-05-20 01:23:27', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"https://limiardorole.com.br/medusa/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-05-19 22:23:27', '2021-05-20 01:23:27', '', 2, 'https://limiardorole.com.br/medusa/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-05-19 23:10:58', '2021-05-20 02:10:58', '<!-- wp:html -->\n<div class=\"first-session\">\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5><a href=\"#\">View Our Services</a></h5>\n	                	<h5><a href=\"#\">Software We Offer</a></h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"second-session\">\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n	                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n	                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n	                <div class=\"btn-vermelho\">\n	                	<h5><a href=\"#\">See Our Case Studies</a></h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"tird-session\">	\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-3 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-2-3\">\n				<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n				<h4 class=\"subtitulo\">Reach out to see how our team can help.</h4>\n				[contact-form-7 id=\"38\" title=\"Formulário de contato 1\"]\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'publish', 'closed', 'closed', '', 'pagina-inicial', '', '', '2021-05-22 02:33:20', '2021-05-22 05:33:20', '', 0, 'https://limiardorole.com.br/medusa/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-05-19 22:35:51', '2021-05-20 01:35:51', '', 'MEDUSA_HOME_IMG001[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0011x', '', '', '2021-05-19 22:35:51', '2021-05-20 01:35:51', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0011X.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2021-05-19 22:35:53', '2021-05-20 01:35:53', '', 'MEDUSA_HOME_IMG002[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0021x', '', '', '2021-05-19 22:35:53', '2021-05-20 01:35:53', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2021-05-19 22:35:55', '2021-05-20 01:35:55', '', 'MEDUSA_HOME_IMG003[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0031x', '', '', '2021-05-19 22:35:55', '2021-05-20 01:35:55', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0031X.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-05-19 22:35:59', '2021-05-20 01:35:59', '', 'MEDUSA_HOME_IMG004[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0041x', '', '', '2021-05-19 22:35:59', '2021-05-20 01:35:59', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0041X.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-05-19 22:36:01', '2021-05-20 01:36:01', '', 'MEDUSA_HOME_IMG004[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0041x-2', '', '', '2021-05-19 22:36:01', '2021-05-20 01:36:01', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0041X.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2021-05-19 22:36:02', '2021-05-20 01:36:02', '', 'MEDUSA_HOME_IMG005[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0051x', '', '', '2021-05-19 22:36:02', '2021-05-20 01:36:02', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0051X.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-05-19 22:36:03', '2021-05-20 01:36:03', '', 'MEDUSA_HOME_IMG005[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_img0051x-2', '', '', '2021-05-19 22:36:03', '2021-05-20 01:36:03', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0051X.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2021-05-19 22:36:04', '2021-05-20 01:36:04', '', 'MEDUSA_HOME_PARTNER_ICON_TEMP[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_partner_icon_temp1x', '', '', '2021-05-19 22:36:04', '2021-05-20 01:36:04', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_PARTNER_ICON_TEMP1X.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-05-19 22:36:05', '2021-05-20 01:36:05', '', 'MEDUSA_HOME_PARTNER_ICON_TEMP[1X]', '', 'inherit', 'open', 'closed', '', 'medusa_home_partner_icon_temp1x-2', '', '', '2021-05-19 22:36:05', '2021-05-20 01:36:05', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_PARTNER_ICON_TEMP1X.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2021-05-19 22:39:10', '2021-05-20 01:39:10', '', 'medusa_logo', '', 'inherit', 'open', 'closed', '', 'medusa_logo', '', '', '2021-05-19 22:39:10', '2021-05-20 01:39:10', '', 0, 'https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/medusa_logo.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2021-05-19 23:10:58', '2021-05-20 02:10:58', '<!-- wp:html -->\n<body>\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid first-session\">\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">MedUSA</h1>\n                <h2 class=\"subtitulo\">Physician services to help you manage your pratice.</h2>\n                <div class=\"btn-vermelho\">\n                	<h3>View Our Services</h3>\n                	<h3>Software We Offer</h3>\n                </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid second-session\">\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n                <div class=\"btn-vermelho\">\n                	<h3>See Our Case Studies</h3>\n                </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid tird-session\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</body>\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-19 23:10:58', '2021-05-20 02:10:58', '', 8, 'https://limiardorole.com.br/medusa/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-05-19 23:11:37', '2021-05-20 02:11:37', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 02:11:37\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-20 02:11:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0b4040b1-686d-4d3d-a0e3-03268a5b80fd', '', '', '2021-05-19 23:11:37', '2021-05-20 02:11:37', '', 0, 'https://limiardorole.com.br/medusa/2021/05/19/0b4040b1-686d-4d3d-a0e3-03268a5b80fd/', 0, 'customize_changeset', '', 0),
(21, 1, '2021-05-19 23:49:51', '2021-05-20 02:49:51', '<!-- wp:html -->\n<body>\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid first-session\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">MedUSA</h1>\n                <h2 class=\"subtitulo\">Physician services to help you manage your pratice.</h2>\n                <div class=\"btn-vermelho\">\n                	<h3>View Our Services</h3>\n                	<h3>Software We Offer</h3>\n                </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid second-session\">\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n                <div class=\"btn-vermelho\">\n                	<h3>See Our Case Studies</h3>\n                </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid tird-session\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</body>\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-19 23:49:51', '2021-05-20 02:49:51', '', 8, 'https://limiardorole.com.br/medusa/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-05-19 23:53:15', '2021-05-20 02:53:15', '<!-- wp:html -->\n<body>\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid first-session\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">MedUSA</h1>\n                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n                <div class=\"btn-vermelho\">\n                	<h4>View Our Services</h4>\n                	<h4>Software We Offer</h4>\n                </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid second-session\">\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n                <div class=\"btn-vermelho\">\n                	<h3>See Our Case Studies</h3>\n                </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid tird-session\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</body>\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-19 23:53:15', '2021-05-20 02:53:15', '', 8, 'https://limiardorole.com.br/medusa/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-05-19 23:54:04', '2021-05-20 02:54:04', '<!-- wp:html -->\n<body>\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid first-session\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">MedUSA</h1>\n                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n                <div class=\"btn-vermelho\">\n                	<h5>View Our Services</h5>\n                	<h5>Software We Offer</h5>\n                </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid second-session\">\n			<div class=\"uk-width-1-2\">\n				<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n                <div class=\"btn-vermelho\">\n                	<h3>See Our Case Studies</h3>\n                </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid tird-session\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</body>\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-19 23:54:04', '2021-05-20 02:54:04', '', 8, 'https://limiardorole.com.br/medusa/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-05-20 00:01:41', '2021-05-20 03:01:41', '<!-- wp:html -->\n<body>\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid first-session\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid second-session\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n	                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n	                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n	                <div class=\"btn-vermelho\">\n	                	<h3>See Our Case Studies</h3>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n		<div class=\"uk-grid tird-session\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</body>\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 00:01:41', '2021-05-20 03:01:41', '', 8, 'https://limiardorole.com.br/medusa/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-05-20 00:41:17', '2021-05-20 03:41:17', '<!-- wp:html -->\n\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid first-session\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid second-session\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n	                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n	                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n	                <div class=\"btn-vermelho\">\n	                	<h3>See Our Case Studies</h3>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid tird-session\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 00:41:17', '2021-05-20 03:41:17', '', 8, 'https://limiardorole.com.br/medusa/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-05-20 00:44:00', '2021-05-20 03:44:00', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"uk-container uk-container-center second-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n	                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n	                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n	                <div class=\"btn-vermelho\">\n	                	<h3>See Our Case Studies</h3>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"uk-container uk-container-center tird-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 00:44:00', '2021-05-20 03:44:00', '', 8, 'https://limiardorole.com.br/medusa/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-05-20 00:48:57', '2021-05-20 03:48:57', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n		                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n		                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n		                <div class=\"btn-vermelho\">\n		                	<h3>See Our Case Studies</h3>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div>\n	<div class=\"uk-container uk-container-center tird-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 00:48:57', '2021-05-20 03:48:57', '', 8, 'https://limiardorole.com.br/medusa/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-05-20 00:53:22', '2021-05-20 03:53:22', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n		                <h2 class=\"subtitulo\">Excellent Service is Our Promise</h2>\n		                <h4 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h4>\n		                <div class=\"btn-vermelho\">\n		                	<h3>See Our Case Studies</h3>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div>\n	<div class=\"uk-container uk-container-center tird-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 00:53:22', '2021-05-20 03:53:22', '', 8, 'https://limiardorole.com.br/medusa/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-05-20 21:28:29', '2021-05-21 00:28:29', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h1 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h1>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div>\n	<div class=\"uk-container uk-container-center tird-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 21:28:29', '2021-05-21 00:28:29', '', 8, 'https://limiardorole.com.br/medusa/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-05-20 21:31:05', '2021-05-21 00:31:05', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div>\n	<div class=\"uk-container uk-container-center tird-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-1\">\n				<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n				<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n<!-- /wp:html -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 21:31:05', '2021-05-21 00:31:05', '', 8, 'https://limiardorole.com.br/medusa/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-05-21 23:50:31', '2021-05-22 02:50:31', '<!-- wp:html -->\n<div class=\"first-session\">\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"second-session\">\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n	                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n	                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n	                <div class=\"btn-vermelho\">\n	                	<h5>See Our Case Studies</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"tird-session\">	\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-3 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-2-3\">\n				<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n				<h4 class=\"subtitulo\">Reach out to see how our team can help.</h4>\n				[contact-form-7 id=\"38\" title=\"Formulário de contato 1\"]\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2021-05-21 23:50:31', '2021-05-22 02:50:31', '', 8, 'https://limiardorole.com.br/medusa/?p=31', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(32, 1, '2021-05-20 22:31:37', '2021-05-21 01:31:37', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"second-session\">	\n		<div class=\"uk-container uk-container-center tird-session\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-1\">\n					<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n					<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 22:31:37', '2021-05-21 01:31:37', '', 8, 'https://limiardorole.com.br/medusa/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-05-20 22:32:07', '2021-05-21 01:32:07', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"tird-session\">	\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-1\">\n					<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n					<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 22:32:07', '2021-05-21 01:32:07', '', 8, 'https://limiardorole.com.br/medusa/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-05-20 22:34:17', '2021-05-21 01:34:17', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"tird-session\">	\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-width-1-3\">\n				\n			</div><!-- col -->\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-2-3\">\n					<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n					<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 22:34:17', '2021-05-21 01:34:17', '', 8, 'https://limiardorole.com.br/medusa/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-05-20 22:35:18', '2021-05-21 01:35:18', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"tird-session\">	\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-3\">\n					\n				</div><!-- col -->\n				<div class=\"uk-width-2-3\">\n					<h1 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h1>\n					<h2 class=\"subtitulo\">Reach out to see how our team can help.</h2>\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 22:35:18', '2021-05-21 01:35:18', '', 8, 'https://limiardorole.com.br/medusa/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-05-20 22:56:29', '2021-05-21 01:56:29', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"tird-session\">	\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-3\">\n					\n				</div><!-- col -->\n				<div class=\"uk-width-2-3\">\n					<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health Systems, Med USA Provides Scalable Solutions.</h2>\n					<h3 class=\"subtitulo\">Reach out to see how our team can help.</h3>\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 22:56:29', '2021-05-21 01:56:29', '', 8, 'https://limiardorole.com.br/medusa/?p=36', 0, 'revision', '', 0),
(37, 1, '2021-05-20 22:57:11', '2021-05-21 01:57:11', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"tird-session\">	\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-3\">\n					\n				</div><!-- col -->\n				<div class=\"uk-width-2-3\">\n					<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n					<h3 class=\"subtitulo\">Reach out to see how our team can help.</h3>\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 22:57:11', '2021-05-21 01:57:11', '', 8, 'https://limiardorole.com.br/medusa/?p=37', 0, 'revision', '', 0),
(38, 1, '2021-05-20 23:07:47', '2021-05-21 02:07:47', '<div class=\"newsletter\"><div class=\"uk-grid\"><div class=\"uk-width-1-2\">[text* First-name placeholder \"First name\"]</div><div class=\"uk-width-1-2\">[text* Last-name placeholder \"Last name\"]</div></div><div class=\"uk-grid\"><div class=\"uk-width-1-2\">[email* e-mail placeholder \"Email\"]</div><div class=\"uk-width-1-2\">[tel phone placeholder \"Phone\"]</div></div><div class=\"uk-grid\"><div class=\"uk-width-3-5\"></div><div class=\"uk-width-2-5\">[submit \"Submit\"]</div></div></div>\n1\nMedUSA form\n[_site_title] <contato@medusa.com.br>\n[e-mail]\n[First-name] <[e-mail]> sign up for your newsletter\nReply-To: [e-mail]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@limiardorole.com.br>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message.\nAn error occurred while trying to send your message. Try again later.\nOne or more fields have an error. Check and try again.\nAn error occurred while trying to send your message. Try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is mandatory.\nThe field is too long.\nThe field is very short.\nAn unknown error occurred while uploading the file.\nYou are not allowed to upload this type of file.\nThe file is too large.\nThere was an error sending the file.\nThe date format is incorrect.\nThe date is earlier than the oldest allowed.\nThe date is later than the longest allowed date.\nThe number format is invalid.\nThe number is less than the minimum allowed.\nThe number is greater than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe email address provided is invalid.\nThe URL is invalid.\nThe phone number is invalid.', 'Formulário de contato 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2021-05-22 02:31:56', '2021-05-22 05:31:56', '', 0, 'https://limiardorole.com.br/medusa/?post_type=wpcf7_contact_form&#038;p=38', 0, 'wpcf7_contact_form', '', 0),
(40, 1, '2021-05-21 22:39:37', '2021-05-22 01:39:37', '<!-- wp:html -->\n<div class=\"first-session\">\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"second-session\">\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n	                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n	                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n	                <div class=\"btn-vermelho\">\n	                	<h5>See Our Case Studies</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"tird-session\">	\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-3\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-2-3\">\n				<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n				<h4 class=\"subtitulo\">Reach out to see how our team can help.</h4>\n				[contact-form-7 id=\"38\" title=\"Formulário de contato 1\"]\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-21 22:39:37', '2021-05-22 01:39:37', '', 8, 'https://limiardorole.com.br/medusa/?p=40', 0, 'revision', '', 0),
(39, 1, '2021-05-20 23:25:07', '2021-05-21 02:25:07', '<!-- wp:html -->\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n	<div class=\"second-session\">\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-2\">\n					<div>\n						<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n		                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n		                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n		                <div class=\"btn-vermelho\">\n		                	<h5>See Our Case Studies</h5>\n		                </div>\n		            </div>\n				</div><!-- col -->\n				<div class=\"uk-width-1-2\">\n					<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n	<div class=\"tird-session\">	\n		<div class=\"uk-container uk-container-center\">\n			<div class=\"uk-grid\">\n				<div class=\"uk-width-1-3\">\n					\n				</div><!-- col -->\n				<div class=\"uk-width-2-3\">\n					<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n					<h3 class=\"subtitulo\">Reach out to see how our team can help.</h3>\n					[contact-form-7 id=\"38\" title=\"Formulário de contato 1\"]\n				</div><!-- col -->\n			</div><!-- grid -->\n		</div><!-- container -->\n	</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-20 23:25:07', '2021-05-21 02:25:07', '', 8, 'https://limiardorole.com.br/medusa/?p=39', 0, 'revision', '', 0),
(41, 1, '2021-05-21 23:51:06', '2021-05-22 02:51:06', '<!-- wp:html -->\n<div class=\"first-session\">\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5>View Our Services</h5>\n	                	<h5>Software We Offer</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"second-session\">\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n	                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n	                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n	                <div class=\"btn-vermelho\">\n	                	<h5>See Our Case Studies</h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"tird-session\">	\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-3 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-2-3\">\n				<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n				<h4 class=\"subtitulo\">Reach out to see how our team can help.</h4>\n				[contact-form-7 id=\"38\" title=\"Formulário de contato 1\"]\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-21 23:51:06', '2021-05-22 02:51:06', '', 8, 'https://limiardorole.com.br/medusa/?p=41', 0, 'revision', '', 0),
(42, 1, '2021-05-22 02:33:20', '2021-05-22 05:33:20', '<!-- wp:html -->\n<div class=\"first-session\">\n	<div class=\"uk-container uk-container-center first-session\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h1 class=\"titulo-site\">MedUSA</h1>\n	                <h3 class=\"subtitulo\">Physician services to help you manage your pratice.</h3>\n	                <div class=\"btn-vermelho\">\n	                	<h5><a href=\"#\">View Our Services</a></h5>\n	                	<h5><a href=\"#\">Software We Offer</a></h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"second-session\">\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-2\">\n				<div>\n					<h2 class=\"titulo-site\">Cloud Based RCM Service<br>and Software</h2>\n	                <h3 class=\"subtitulo\">Excellent Service is Our Promise</h3>\n	                <h5 class=\"texto\">Providing excellent service to your patients and your pratice is our promise. Our dedicated team of billing specialists and billing managers are here to help. We have over 38 years of combined practice management and industry knowledge. Let our experience work for you.</h5>\n	                <div class=\"btn-vermelho\">\n	                	<h5><a href=\"#\">See Our Case Studies</a></h5>\n	                </div>\n	            </div>\n			</div><!-- col -->\n			<div class=\"uk-width-1-2\">\n				<img src=\"https://limiardorole.com.br/medusa/wp-content/uploads/2021/05/MEDUSA_HOME_IMG0021X.jpg\" alt=\"\">\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<div class=\"tird-session\">	\n	<div class=\"uk-container uk-container-center\">\n		<div class=\"uk-grid\">\n			<div class=\"uk-width-1-3 uk-width-0\">\n				\n			</div><!-- col -->\n			<div class=\"uk-width-2-3\">\n				<h2 class=\"titulo-form\">From Small Pratices to Large Provider Health<br> Systems, Med USA Provides Scalable Solutions.</h2>\n				<h4 class=\"subtitulo\">Reach out to see how our team can help.</h4>\n				[contact-form-7 id=\"38\" title=\"Formulário de contato 1\"]\n			</div><!-- col -->\n		</div><!-- grid -->\n	</div><!-- container -->\n</div><!-- sessão -->\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Pagina inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-22 02:33:20', '2021-05-22 05:33:20', '', 8, 'https://limiardorole.com.br/medusa/?p=42', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Asouier'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"065bae90c5fcbe19f067e4a5a19b0759f97ec52073627f7a50c15925670730cb\";a:4:{s:10:\"expiration\";i:1622681204;s:2:\"ip\";s:15:\"162.241.104.244\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.62\";s:5:\"login\";i:1621471604;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"187.56.111.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Asouier', '$P$BOZBozdIET7yOJs3ZvG3sgijjJllmf0', 'asouier', 'leonardosousa366@gmail.com', 'https://limiardorole.com.br/medusa', '2021-05-20 00:46:32', '', 0, 'Asouier');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
