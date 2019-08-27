-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Sie 2019, 13:31
-- Wersja serwera: 10.3.16-MariaDB
-- Wersja PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `swor`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', '2019-06-19 05:40:23', '2019-06-19 05:40:23'),
(2, 1, '::1', '2019-07-01 07:36:50', '2019-07-01 07:36:50'),
(3, 2, '::1', '2019-07-16 05:01:16', '2019-07-16 05:01:16'),
(4, 1, '::1', '2019-07-16 05:03:36', '2019-07-16 05:03:36'),
(5, 2, '::1', '2019-07-16 05:04:31', '2019-07-16 05:04:31'),
(6, 1, '::1', '2019-07-16 05:05:13', '2019-07-16 05:05:13'),
(7, 1, '172.24.108.108', '2019-07-16 05:20:54', '2019-07-16 05:20:54'),
(8, 1, '172.24.108.123', '2019-07-16 09:20:43', '2019-07-16 09:20:43'),
(9, 2, '172.24.108.108', '2019-07-22 11:23:21', '2019-07-22 11:23:21'),
(10, 1, '172.24.108.108', '2019-07-23 06:25:25', '2019-07-23 06:25:25'),
(11, 1, '172.24.108.108', '2019-08-05 10:48:37', '2019-08-05 10:48:37'),
(12, 1, '172.24.108.108', '2019-08-06 03:17:27', '2019-08-06 03:17:27'),
(13, 3, '172.24.108.108', '2019-08-27 08:39:37', '2019-08-27 08:39:37'),
(14, 1, '172.24.108.108', '2019-08-27 08:40:18', '2019-08-27 08:40:18'),
(15, 3, '172.24.108.1', '2019-08-27 08:51:26', '2019-08-27 08:51:26');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Administrator', 'admin', 'admin', 'grzegorz.czekaj@strzyzow.sr.gov.pl', '$2y$10$d.ng0TK.wdGa6qxce9SrFujAGXue7OUQFYTSiJQicGoOpkqCnU2Oq', NULL, '$2y$10$H7OQtUHK/6uXEOHmu/xtX.Awti955VWCl1IGDYyueUc1j3.89Kiyq', NULL, '', 1, 2, NULL, '2019-08-27 08:40:40', '2019-06-19 05:40:03', '2019-08-27 08:40:40', NULL, 1),
(2, 'Dawid', 'Smyka', 'admin2', 'informatycy@strzyzow.sr.gov.pl', '$2y$10$VdaR//ZY5hU4A/0fVOwPyuArnX3ieLf0Vje7Spmp/PZ9WSCnGD2zC', NULL, '$2y$10$OMYT5KVFV5JOrLnpq3iVaelQMRd6aLGNVcY02rN62iNGxrzR2k4e2', NULL, '', 0, 3, NULL, '2019-07-22 11:23:21', '2019-07-16 05:00:34', '2019-07-22 11:23:21', NULL, 0),
(3, 'Mateusz', 'Bielak', 'admin3', 'mateusz.bielak@rzeszow.so.gov.pl', '$2y$10$mzmOhcAFoTCFR402oMIkdOORM9dmZBK8pdlbNTly4b.QOsMLosVc.', NULL, NULL, NULL, '', 0, 3, NULL, '2019-08-27 08:51:26', '2019-08-27 08:38:43', '2019-08-27 08:53:00', NULL, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-06-19 05:40:03', '2019-06-19 05:40:03', 'owners', 'Default group for website owners.', 0),
(2, 'Administratorzy', '2019-07-16 04:59:21', '2019-07-16 04:59:21', '', '', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'backend', 'preferences', '{\"locale\":\"pl\",\"fallback_locale\":\"en\",\"timezone\":\"Europe\\/Warsaw\",\"editor_font_size\":\"12\",\"editor_word_wrap\":\"off\",\"editor_code_folding\":\"manual\",\"editor_tab_size\":\"4\",\"editor_theme\":\"twilight\",\"editor_show_invisibles\":\"0\",\"editor_highlight_active_line\":\"0\",\"editor_use_hard_tabs\":\"0\",\"editor_show_gutter\":\"1\",\"editor_auto_closing\":\"1\",\"editor_autocompletion\":\"basic\",\"editor_enable_snippets\":\"1\",\"editor_display_indent_guides\":\"0\",\"editor_show_print_margin\":\"0\",\"user_id\":\"1\"}'),
(2, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"title\":\"Witaj\",\"ocWidgetWidth\":7,\"ocWidgetNewRow\":null}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"title\":\"Strona\",\"ocWidgetWidth\":5,\"ocWidgetNewRow\":null}}}'),
(3, 1, 'backend', 'hints', 'hidden', '{\"Form-form_61dee9648ed40f12d8650569fe0aa06b5d0a36d3dd856-field-content\":1}'),
(4, 2, 'backend', 'backend', 'preferences', '{\"locale\":\"pl\",\"fallback_locale\":\"en\",\"timezone\":\"Europe\\/Warsaw\",\"editor_font_size\":\"12\",\"editor_word_wrap\":\"fluid\",\"editor_code_folding\":\"manual\",\"editor_tab_size\":\"4\",\"editor_theme\":\"twilight\",\"editor_show_invisibles\":\"0\",\"editor_highlight_active_line\":\"1\",\"editor_use_hard_tabs\":\"0\",\"editor_show_gutter\":\"1\",\"editor_auto_closing\":\"0\",\"editor_autocompletion\":\"manual\",\"editor_enable_snippets\":\"0\",\"editor_display_indent_guides\":\"0\",\"editor_show_print_margin\":\"0\",\"user_id\":\"2\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-06-19 05:40:03', '2019-07-02 16:14:39'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-06-19 05:40:03', '2019-06-19 05:40:03'),
(3, 'Publikacja', '', 'Uprawnienia do publikacji', '{\"cms.manage_content\":\"1\",\"cms.manage_assets\":\"1\",\"cms.manage_pages\":\"1\",\"cms.manage_partials\":\"1\",\"rainlab.pages.manage_content\":\"1\",\"rainlab.pages.manage_menus\":\"1\",\"rainlab.pages.manage_pages\":\"1\",\"system.manage_mail_settings\":\"1\",\"system.manage_mail_templates\":\"1\",\"backend.access_dashboard\":\"1\",\"system.access_logs\":\"1\",\"system.manage_updates\":\"1\",\"media.manage_media\":\"1\",\"backend.manage_preferences\":\"1\",\"backend.impersonate_users\":\"1\",\"backend.manage_users\":\"1\",\"manage_splash_page\":\"1\"}', 0, '2019-07-16 04:58:40', '2019-07-16 05:06:04');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT 0,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '::1', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL),
(3, 2, '::1', 0, NULL, 0, NULL, 0, NULL),
(4, 1, '172.24.108.108', 0, NULL, 0, NULL, 0, NULL),
(5, 1, '172.24.108.123', 0, NULL, 0, NULL, 0, NULL),
(6, 2, '172.24.108.108', 0, NULL, 0, NULL, 0, NULL),
(7, 3, '172.24.108.108', 0, NULL, 0, NULL, 0, NULL),
(8, 3, '172.24.108.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `benfreke_menumanager_menus`
--

CREATE TABLE `benfreke_menumanager_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_external` tinyint(1) NOT NULL DEFAULT 0,
  `link_target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `enabled` int(11) NOT NULL DEFAULT 1,
  `parameters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_string` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `benfreke_menumanager_menus`
--

INSERT INTO `benfreke_menumanager_menus` (`id`, `parent_id`, `title`, `description`, `url`, `nest_left`, `nest_right`, `nest_depth`, `created_at`, `updated_at`, `is_external`, `link_target`, `enabled`, `parameters`, `query_string`) VALUES
(1, NULL, 'Menu', '', NULL, 1, 30, 0, '2019-08-27 07:52:14', '2019-08-27 08:03:42', 0, '_self', 1, '', ''),
(2, 1, 'Aktualności', '', 'kategorie', 2, 3, 1, '2019-08-27 07:52:35', '2019-08-27 07:52:40', 0, '_self', 1, '', 'aktualnosci'),
(3, 1, 'Zarządzenia', '', 'kategorie', 4, 5, 1, '2019-08-27 07:53:16', '2019-08-27 07:53:27', 0, '_self', 1, '', 'zarzadzenia'),
(4, 1, 'Dokumenty', '', 'kategorie', 8, 9, 1, '2019-08-27 07:54:24', '2019-08-27 08:03:07', 0, '_self', 1, '', 'dokumenty'),
(5, 1, 'Portal Informacyjny', '', 'kategorie', 6, 7, 1, '2019-08-27 07:54:53', '2019-08-27 07:54:58', 0, '_self', 1, '', 'portal-informacyjny'),
(6, 1, 'Baza wiedzy', '', 'kategorie', 10, 11, 1, '2019-08-27 07:59:07', '2019-08-27 08:03:11', 0, '_self', 1, '', 'baza-wiedzy'),
(7, 1, 'Kontrola zarządcza', '', 'kategorie', 12, 13, 1, '2019-08-27 08:00:02', '2019-08-27 08:03:13', 0, '_self', 1, '', 'kontrola-zarzadcza'),
(8, 1, 'Ławnicy', '', 'kategorie', 14, 15, 1, '2019-08-27 08:00:21', '2019-08-27 08:03:18', 0, '_self', 1, '', 'lawnicy'),
(9, 1, 'Ochrona danych osobowych', '', 'kategorie', 16, 17, 1, '2019-08-27 08:00:40', '2019-08-27 08:05:02', 0, '_self', 1, '', 'ochrona-danych-osobowych'),
(10, 1, 'Polityka bezpieczeństwa', '', 'kategorie', 18, 19, 1, '2019-08-27 08:01:14', '2019-08-27 08:03:24', 0, '_self', 1, '', 'polityka-bezpieczenstwa'),
(11, 1, 'Polityka rachunkowości', '', 'kategorie', 20, 21, 1, '2019-08-27 08:01:34', '2019-08-27 08:03:31', 0, '_self', 1, '', 'polityka-rachunkowosci'),
(12, 1, 'Regulamin organizacyjny', '', 'kategorie', 22, 23, 1, '2019-08-27 08:01:56', '2019-08-27 08:03:33', 0, '_self', 1, '', 'regulamin-organizacyjny'),
(13, 1, 'Regulamin pracy', '', 'kategorie', 24, 25, 1, '2019-08-27 08:02:18', '2019-08-27 08:03:35', 0, '_self', 1, '', 'regulamin-pracy'),
(14, 1, 'Sprawy socjalne', '', 'kategorie', 26, 27, 1, '2019-08-27 08:02:37', '2019-08-27 08:03:40', 0, '_self', 1, '', 'sprawy-socjalne'),
(15, 1, 'Portal Orzeczeń', '', 'kategorie', 28, 29, 1, '2019-08-27 08:03:01', '2019-08-27 08:03:42', 0, '_self', 1, '', 'portal-orzeczen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `deferred_bindings`
--

INSERT INTO `deferred_bindings` (`id`, `master_type`, `master_field`, `slave_type`, `slave_id`, `session_key`, `is_bind`, `created_at`, `updated_at`) VALUES
(1, 'Uno\\PleaseWait\\Models\\SplashPage', 'logo', 'System\\Models\\File', '2', 'dP20opXnIVmjbwge3NcYADuhHZrLXhsQbFrbOfRD', 0, '2019-07-16 09:29:57', '2019-07-16 09:29:57'),
(2, 'Uno\\PleaseWait\\Models\\SplashPage', 'logo', 'System\\Models\\File', '2', '429wLoHLf6Tvdfrc0FycdHTbBxH1BHKhF3z6nU3s', 0, '2019-08-27 07:01:37', '2019-08-27 07:01:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grzegorzczekaj_dynamiclink_links`
--

CREATE TABLE `grzegorzczekaj_dynamiclink_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `backgr_color_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgr_color_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgr_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `posision` int(11) NOT NULL,
  `check` smallint(6) NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `grzegorzczekaj_dynamiclink_links`
--

INSERT INTO `grzegorzczekaj_dynamiclink_links` (`id`, `backgr_color_start`, `backgr_color_end`, `backgr_image`, `name`, `deleted_at`, `posision`, `check`, `link`) VALUES
(1, '#16a085', '#f39c12', NULL, 'Noe-SAD', NULL, 1, 2, 'http://www.gazeta.pl'),
(2, '#3498db', '#9b59b6', '/uploaded-files/pl-state.gif', 'Wirtulana', NULL, 2, 1, 'http://wp.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grzegorzczekaj_ogloszenia_categories`
--

CREATE TABLE `grzegorzczekaj_ogloszenia_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `grzegorzczekaj_ogloszenia_categories`
--

INSERT INTO `grzegorzczekaj_ogloszenia_categories` (`id`, `category`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Zarządzenia', '2019-06-19 09:09:40', '2019-06-26 10:27:08', 'zarzadzenia'),
(2, 'Aktualności', '2019-06-19 09:10:09', '2019-06-26 10:27:00', 'aktualnosci'),
(3, 'Dokumenty', '2019-06-19 09:10:27', '2019-06-26 10:27:14', 'dokumenty'),
(4, 'Baza wiedzy', '2019-07-02 06:07:22', '2019-07-02 06:07:22', 'baza-wiedzy'),
(5, 'Portal Informacyjny', '2019-07-02 06:07:55', '2019-07-02 06:07:55', 'portal-informacyjny'),
(6, 'Kontrola zarządcza', '2019-07-02 06:08:06', '2019-07-22 09:47:18', 'kontrola-zarzadcza'),
(7, 'Ławnicy', '2019-07-02 06:08:37', '2019-07-02 06:08:37', 'lawnicy'),
(8, 'Ochrona danych osobowych', '2019-07-02 06:09:06', '2019-07-02 06:09:06', 'ochrona-danych-osobowych'),
(9, 'Polityka bezpieczeństwa', '2019-07-02 06:09:23', '2019-07-02 06:09:23', 'polityka-bezpieczenstwa'),
(10, 'Polityka rachunkowości', '2019-07-02 06:09:40', '2019-07-02 06:09:40', 'polityka-rachunkowosci'),
(11, 'Regulamin organizacyjny', '2019-07-02 06:09:57', '2019-07-02 06:09:57', 'regulamin-organizacyjny'),
(12, 'Regulamin pracy', '2019-07-02 06:10:19', '2019-07-02 06:10:19', 'regulamin-pracy'),
(13, 'Sprawy socjalne', '2019-07-02 06:10:34', '2019-07-02 06:10:34', 'sprawy-socjalne'),
(14, 'Portal Orzeczeń', '2019-07-22 09:54:06', '2019-07-22 09:54:06', 'portal-orzeczen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grzegorzczekaj_ogloszenia_categories_news`
--

CREATE TABLE `grzegorzczekaj_ogloszenia_categories_news` (
  `categories_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `grzegorzczekaj_ogloszenia_categories_news`
--

INSERT INTO `grzegorzczekaj_ogloszenia_categories_news` (`categories_id`, `news_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(2, 17),
(1, 18),
(2, 18),
(1, 19),
(2, 19),
(1, 20),
(2, 20),
(2, 21),
(1, 22),
(2, 22),
(1, 23),
(2, 23),
(1, 24),
(2, 24),
(1, 25),
(2, 25),
(2, 26),
(2, 27),
(1, 28),
(2, 28),
(1, 29),
(2, 29),
(1, 30),
(2, 30),
(1, 31),
(2, 31),
(1, 32),
(2, 32),
(1, 33),
(2, 33),
(1, 34),
(2, 34),
(1, 35),
(2, 35),
(13, 36),
(13, 37),
(13, 38),
(13, 39),
(11, 40),
(12, 41),
(12, 42),
(12, 43),
(12, 44),
(10, 45),
(10, 46),
(6, 47),
(6, 48),
(6, 49),
(6, 50),
(6, 51),
(6, 52),
(14, 53),
(5, 54),
(5, 55),
(5, 56),
(5, 57),
(5, 58),
(5, 59);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grzegorzczekaj_ogloszenia_links`
--

CREATE TABLE `grzegorzczekaj_ogloszenia_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `backgr_color_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgr_color_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgr_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` smallint(6) NOT NULL,
  `check` smallint(6) NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `grzegorzczekaj_ogloszenia_links`
--

INSERT INTO `grzegorzczekaj_ogloszenia_links` (`id`, `backgr_color_start`, `backgr_color_end`, `backgr_image`, `name`, `position`, `check`, `link`, `deleted_at`) VALUES
(1, '#9b59b6', '#ecf0f1', '/linki/pesel_sad.jpg', 'Pesel-SAD', 1, 1, 'https://172.16.34.25:9443/pesel-sad/', NULL),
(2, '#2980b9', '#ecf0f1', '/linki/noe_sad.jpg', 'Noe-SAD', 2, 1, 'https://172.16.34.46/', NULL),
(3, NULL, NULL, '/linki/erisk.jpg', 'e- risk', 3, 1, 'http://172.24.1.15/risk/', NULL),
(4, NULL, NULL, '/linki/sap.jpg', 'SAP', 4, 1, 'https://zsrk.ms.gov.pl/sap/bc/bsp/sap/zms_st_app/formentrylist.htm?sap-client=150&sap-sessioncmd=open', NULL),
(5, NULL, NULL, '/linki/monitor.jpg', 'Monitor gosp.', 5, 1, 'https://ems.ms.gov.pl/msig/przegladaniemonitorow', NULL),
(6, NULL, NULL, '/linki/sop.jpg', 'SOP', 6, 1, 'http://172.20.4.1/', NULL),
(7, NULL, NULL, '/linki/orzeczenia.jpg', 'Portal orzeczen', 7, 0, 'https://10.11.93.28/ncourt-admin/login', NULL),
(8, NULL, NULL, '/linki/informacyjny.jpg', 'Portal inf.', 8, 1, 'https://10.11.93.51:8469/#/login', NULL),
(9, NULL, NULL, '/linki/orcom.jpg', 'Orcom', 9, 1, 'http://172.24.0.161/index.html', NULL),
(10, NULL, NULL, '/linki/workflow.jpg', 'Workflow', 10, 1, 'https://172.16.34.132/workflow', NULL),
(11, NULL, NULL, '/linki/servicedesk.jpg', 'Service Desk', 11, 1, 'http://172.16.34.209/sm9/ess.do', NULL),
(12, NULL, NULL, '/linki/zakupy.jpg', 'Zent. system zakupów', 12, 1, 'http://10.4.3.56/index.html', NULL),
(13, NULL, NULL, '/linki/samoobsluga.jpg', 'Samoobsługa', 13, 1, 'http://www.ess.zsrk.ms.gov.pl:8133/hcmcore/app/', NULL),
(14, NULL, NULL, '/linki/legalis_online.jpg', 'Legalis', 14, 1, 'https://sip.legalis.pl/', NULL),
(15, NULL, NULL, '/linki/legalis.jpg', 'Legalis', 15, 1, 'http://sstsa03:8888/', NULL),
(16, NULL, NULL, '/linki/poczta_owa.jpg', 'poczta', 16, 1, 'https://poczta.wroclaw.sa.gov.pl/', NULL),
(17, NULL, NULL, '/linki/eplatnosci.jpg', 'E-płatność', 17, 1, 'https://administracja.oplaty.ms.gov.pl/', NULL),
(18, NULL, NULL, '/linki/LEXonline.jpg', 'Lex', 18, 1, 'http://ip.lex.pl/', NULL),
(19, NULL, NULL, '/linki/zt.jpg', 'ZT', 19, 1, 'https://szt.wroclaw.sa.gov.pl/iiq', NULL),
(20, NULL, NULL, '/linki/slps.jpg', 'SLPS', 20, 1, 'https://slps.ms.gov.pl/', NULL),
(21, NULL, NULL, '/linki/portalwyjasnien.jpg', 'POrtal wyjaśnień', 21, 1, 'http://sapmepl01.zsrk.ms.gov.pl:8151/sap/bc/bsp/sap/zwydz_main/index.html', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grzegorzczekaj_ogloszenia_news`
--

CREATE TABLE `grzegorzczekaj_ogloszenia_news` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` smallint(6) NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `grzegorzczekaj_ogloszenia_news`
--

INSERT INTO `grzegorzczekaj_ogloszenia_news` (`id`, `name`, `desc`, `created_at`, `updated_at`, `published`, `deleted_at`, `slug`, `author_id`, `author`) VALUES
(1, 'Zarządzenie dzień wolny', '<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenieDzie%C5%84Wolny.pdf\">pobierz</a></p>', '2019-07-22 04:42:29', '2019-07-22 04:42:29', 1, NULL, 'zarzadzenie-dzien-wolny', 1, 'Administrator'),
(2, 'Zarządzenie inwentaryzacja', '<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie_inwentaryzacja.pdf\">pobierz</a></p>', '2019-07-22 04:45:00', '2019-07-22 04:45:00', 1, NULL, 'zarzadzenie-inwentaryzacja', 1, 'Administrator'),
(3, 'Zarządzenie nr 37/16 PSR w sprawie zwrotu kosztów dojazdu do pracy niektórym sędziom', '<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20nr%2037_16%20PSR%20w%20sprawie%20zwrotu%20koszt%C3%B3w%20dojazdu%20do%20pracy%20niekt%C3%B3rym%20s%C4%99dziom.pdf\">Pobierz</a></p>', '2019-07-22 04:46:17', '2019-07-22 04:46:17', 1, NULL, 'zarzadzenie-nr-3716-psr-w-sprawie-zwrotu-kosztow-dojazdu-do-pracy-niektorym-sedziom', 1, 'Administrator'),
(4, 'Zarządzenie nr 12/17 DSO dot. wprowadzenia Procedury Udzielania Zamówień Publicznych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20nr%2012_17%20DSO%20dot.%20wprowadzenia%20Procedury%20Udzielania%20Zam%C3%B3wie%C5%84%20Publicznych.pdf\">pobierz</a></p>\r\n<hr>\r\n\r\n<p>Załączniki:</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Za%C5%82.%201%20-%20Zarz%C4%85dzenie%20nr%2012_17%20DSO.pdf\">Załącznik nr 1</a></p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Za%C5%82.%202%20-%20Zarz%C4%85dzenie%20nr%2012_17%20DSO.pdf\">Załącznik nr 2</a></p>', '2019-07-22 04:48:02', '2019-07-22 05:22:56', 1, NULL, 'zarzadzenie-nr-1217-dso-dot-wprowadzenia-procedury-udzielania-zamowien-publicznych', 1, 'Administrator'),
(5, 'Zarządzenie nr 11/17 DSO dot.  Instrukcji w sprawie sposobu i trybu udzielania zamówień publicznych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20nr%2011_17%20DSO%20dot.%20wprowadzenia%20Instrukcji%20w%20sprawie%20sposobu%20i%20trybu%20udzielania%20zam%C3%B3wie%C5%84%20publicznych.pdf\">Pobierz</a></p>\r\n<hr>\r\n\r\n<p>Załączniki:</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Za%C5%82.%201%20-%20Zarz%C4%85dzenie%20nr%2011_17%20DSO.pdf\">Załącznik 1</a></p>\r\n\r\n<p>\r\n	<br>\r\n</p>', '2019-07-22 04:49:20', '2019-07-22 05:21:10', 1, NULL, 'zarzadzenie-nr-1117-dso-dot-instrukcji-w-sprawie-sposobu-i-trybu-udzielania-zamowien-publicznych', 1, 'Administrator'),
(6, 'Zarządzenie nr 9/17 PSR i DSO w sprawie ustalenia dnia wolnego od pracy', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20nr%209_17%20PSR%20i%20DSO%20w%20sprawie%20ustalenia%20dnia%20wolnego%20od%20pracy.pdf\">Pobierz</a></p>', '2019-07-22 04:50:11', '2019-07-22 04:50:11', 1, NULL, 'zarzadzenie-nr-917-psr-i-dso-w-sprawie-ustalenia-dnia-wolnego-od-pracy', 1, 'Administrator'),
(7, 'Zarządzenie nr 8/16 PSR i DSO w sprawie okularów', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20nr%208_16%20PSR%20i%20DSO%20w%20sprawie%20okular%C3%B3w.docx\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-22 04:51:58', '2019-07-22 04:51:58', 1, NULL, 'zarzadzenie-nr-816-psr-i-dso-w-sprawie-okularow', 1, 'Administrator'),
(8, 'Zarządzenie nr 6/16 PSR i DSO w sprawie rozliczania należności z tyt. podróży służbowej', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20nr%206_16%20PSR%20i%20DSO%20w%20sprawie%20rozliczania%20nale%C5%BCno%C5%9Bci%20z%20tyt.%20podr%C3%B3%C5%BCy%20s%C5%82u%C5%BCbowej.pdf\">Pobierz</a></p>', '2019-07-22 04:52:57', '2019-07-22 04:52:57', 1, NULL, 'zarzadzenie-nr-616-psr-i-dso-w-sprawie-rozliczania-naleznosci-z-tyt-podrozy-sluzbowej', 1, 'Administrator'),
(9, 'Zarzadzenie nr 26/17', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/ZarzadzenieNr26_17.pdf\">Pobierz</a></p>', '2019-07-22 04:53:42', '2019-07-22 04:53:42', 1, NULL, 'zarzadzenie-nr-2617', 1, 'Administrator'),
(10, 'Komunikat ws. wprowadzenie stopni alarmowych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Komunikat%20ws.%20wprowadzenie%20stopni%20alarmowych.pdf\">Pobierz</a></p>', '2019-07-22 05:24:51', '2019-07-22 05:24:51', 1, NULL, 'komunikat-ws-wprowadzenie-stopni-alarmowych', 1, 'Administrator'),
(11, 'Instrukcja ws. sposobu i trybu udzielania zamówień publicznych', '<p>Instrukcja ws. sposobu i trybu udzielania zamówień publicznych których wartość zamówienia nie przekracza wyrażonej w złotych równowartości kwoty 30000 euro.</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/ZarzadzenieNr7_18.pdf\">Pobierz</a></p>', '2019-07-22 05:27:25', '2019-07-22 05:27:25', 1, NULL, 'instrukcja-ws-sposobu-i-trybu-udzielania-zamowien-publicznych', 1, 'Administrator'),
(12, 'Zarządzenie nr 36/16 PSR w sprawie modułów zadaniowych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20PSR%20w%20sprawie%20modu%C5%82%C3%B3w%20zadaniowych.pdf\">Pobierz</a></p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Aneks%20do%20Zarz%C4%85zenia%20nr%2036-16.pdf\">Aneks do zarządzenia</a></p>', '2019-07-22 05:28:34', '2019-07-22 05:29:42', 1, NULL, 'zarzadzenie-nr-3616-psr-w-sprawie-modulow-zadaniowych', 1, 'Administrator'),
(13, 'Zarządzenie PSR - gospodarka kluczami', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20PSR%20-%20gospodarka%20kluczami.pdf\">Pobierz</a></p>', '2019-07-22 05:30:43', '2019-07-22 05:30:43', 1, NULL, 'zarzadzenie-psr-gospodarka-kluczami', 1, 'Administrator'),
(14, 'Załączniki do ProceduryPSR 52-19', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Za%C5%82%C4%85czniki%20%20do%20ProceduryPSR_52_19.pdf\">Pobierz</a></p>', '2019-07-22 05:32:37', '2019-07-22 05:32:37', 1, NULL, 'zalaczniki-do-procedurypsr-52-19', 1, 'Administrator'),
(15, 'Procedura postępowania w sytuacji naruszenia przepisów o ochronie danych osobowych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Procedura%20post%C4%99powania%20w%20sytuacji%20naruszenia%20przepis%C3%B3w%20o%20ochronie%20danyvch%20osobowych.pdf\">Pobierz</a></p>', '2019-07-22 05:43:10', '2019-07-22 05:43:10', 1, NULL, 'procedura-postepowania-w-sytuacji-naruszenia-przepisow-o-ochronie-danych-osobowych', 1, 'Administrator'),
(16, 'Zarządzenie w sprawie wprowadzenia procedury postępowania w sytuacji naruszenia przepisów o ochronie danych osobowych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/zarzadzenia/Zarz%C4%85dzenie%20PSR%20Nr%2052-19.pdf\">Pobierz</a></p>', '2019-07-22 05:44:44', '2019-07-22 05:44:44', 1, NULL, 'zarzadzenie-w-sprawie-wprowadzenia-procedury-postepowania-w-sytuacji-naruszenia-przepisow-o-ochronie-danych-osobowych', 1, 'Administrator'),
(17, 'Aneks do zarządzenia w sprawie utworzenia Internetowego Portalu Orzeczeń', '<p><a href=\"/swor/storage/app/media/aktualnosci/Regu%C5%82y.pdf\">pobierz</a></p>', '2019-07-16 05:14:24', '2019-07-16 05:16:27', 1, NULL, 'aneks-do-zarzadzenia-w-sprawie-utworzenia-internetowego-portalu-orzeczen', 1, 'Administrator'),
(18, 'Zarządzenie w sprawie dokonania okresowych ocen kwalifikowanych urzędników i innych pracowników Sądu', '<p><a href=\"/swor/storage/app/media/aktualnosci/ocena%20kwalifikacyjna.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">pobierz</a></p>', '2019-07-16 05:18:38', '2019-07-16 05:18:38', 1, NULL, 'zarzadzenie-w-sprawie-dokonania-okresowych-ocen-kwalifikowanych-urzednikow-i-innych-pracownikow-sadu', 1, 'Administrator'),
(19, 'Zarządzenie Prezesa Sądu Rejonowego w Strzyżowie i Dyrektora Sądu Okręgowego w Rzeszowie w sprawie ustalenia dnia wolnego od pracy dla Sądu Rejonowego w Strzyżowie', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/dzie%C5%84_wolny.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:21:15', '2019-07-16 05:21:15', 1, NULL, 'zarzadzenie-prezesa-sadu-rejonowego-w-strzyzowie-i-dyrektora-sadu-okregowego-w-rzeszowie-w-sprawie-ustalenia-dnia-wolnego-od-pracy-dla-sadu-rejonowego-w-strzyzowie', 1, 'Administrator'),
(20, 'Zarządzenie nr 32/18 Dyrektora Sądu Okręgowego w Rzeszowie i Prezesa Sądu Rejonowego w Strzyżowie z dnia 29 marca 2018 roku', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20nr%2032.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:22:08', '2019-07-16 05:22:08', 1, NULL, 'zarzadzenie-nr-3218-dyrektora-sadu-okregowego-w-rzeszowie-i-prezesa-sadu-rejonowego-w-strzyzowie-z-dnia-29-marca-2018-roku', 1, 'Administrator'),
(21, 'Informacje o złośliwych załącznikach rozsyłanych w wiadomościach elektronicznych', '<p><img src=\"http://172.24.108.30:8080/swor/storage/app/media/aktualnosci/zalaczniki.png\" style=\"width: 741px;\" class=\"fr-fic fr-dib\"></p>', '2019-07-16 05:29:18', '2019-07-16 05:29:18', 1, NULL, 'informacje-o-zlosliwych-zalacznikach-rozsylanych-w-wiadomosciach-elektronicznych', 1, 'Administrator'),
(22, 'Zarządzenie nr 59/18 Dyrektora Sądu Okręgowego w Rzeszowie i Prezesa Sądu Rejonowego w Strzyżowie z dnia 7 sierpnia 2018 roku', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/SR%20Strzyzow.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:31:22', '2019-07-16 05:31:22', 1, NULL, 'zarzadzenie-nr-5918-dyrektora-sadu-okregowego-w-rzeszowie-i-prezesa-sadu-rejonowego-w-strzyzowie-z-dnia-7-sierpnia-2018-roku', 1, 'Administrator'),
(23, 'Zarządzenie nr 75/18 Prezesa Sądu Rejonowego w Strzyżowie i Dyrektora Sądu Okręgowego w Rzeszowie z dnia 26 września 2018 roku w sprawie ustalenia dnia wolnego od pracy dla Sądu Rejonowego w', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20PSR%20i%20DSO.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:33:14', '2019-07-22 06:35:02', 1, NULL, 'zarzadzenie-nr-7518-prezesa-sadu-rejonowego-w-strzyzowie-i-dyrektora-sadu-okregowego-w-rzeszowie-z-dnia-26-wrzesnia-2018-roku-w-sprawie-ustalenia-dnia-wolnego-od-pracy-dla-sadu-rejonowego-w-strzyzowie', 1, 'Administrator'),
(24, 'Zarządzenie w sprawie powołania Zespołu ds. kontroli zarządczej', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20w%20sprawie%20powo%C5%82ania%20Zespo%C5%82u%20ds.%20kontroli%20zarz%C4%85dczej.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:34:58', '2019-07-16 05:34:58', 1, NULL, 'zarzadzenie-w-sprawie-powolania-zespolu-ds-kontroli-zarzadczej', 1, 'Administrator'),
(25, 'Zarządzenie Dyrektora SO 36-18 - Inwentaryzacja', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20Dyrektora%20SO%2036-18%20-%20Inwentaryzacja.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:36:00', '2019-07-16 05:36:00', 1, NULL, 'zarzadzenie-dyrektora-so-36-18-inwentaryzacja', 1, 'Administrator'),
(26, 'Godziny urzędowania Sądu Rejonowego w Strzyżowie w dniu 31 grudnia 2018 roku', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20%20dot.%2031%20grudnia%202018.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:56:50', '2019-07-16 05:56:50', 1, NULL, 'godziny-urzedowania-sadu-rejonowego-w-strzyzowie-w-dniu-31-grudnia-2018-roku', 1, 'Administrator'),
(27, 'Pismo - kontrola zwolnień lekarskich', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/pismo%20-%20kontrola%20zwolnie%C5%84%20lekarskich.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:58:30', '2019-07-16 05:58:30', 1, NULL, 'pismo-kontrola-zwolnien-lekarskich', 1, 'Administrator'),
(28, 'Zarządzenie nr 17/19 w sprawie wprowadzenia w Sądzie Rejonowym w Strzyżowie zapisu dźwięku albo obrazu i dźwięku z przebiegu posiedzeń jawnych', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20dot.%20nagrywania.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 05:59:12', '2019-07-16 05:59:12', 1, NULL, 'zarzadzenie-nr-1719-w-sprawie-wprowadzenia-w-sadzie-rejonowym-w-strzyzowie-zapisu-dzwieku-albo-obrazu-i-dzwieku-z-przebiegu-posiedzen-jawnych', 1, 'Administrator'),
(29, 'Zarządzenie nr 13/19 Prezesa Sądu Rejonowego w Strzyżowie i Dyrektora Sądu Okręgowego w Rzeszowie z dnia 21 lutego 2019 roku w sprawie ustalenia dnia wolnego od pracy', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20PSR%20-%20dzie%C5%84%20wolny%202.V.19r.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:00:05', '2019-07-16 06:27:51', 1, NULL, 'zarzadzenie-nr-1319-prezesa-sadu-rejonowego-w-strzyzowie-i-dyrektora-sadu-okregowego-w-rzeszowie-z-dnia-21-lutego-2019-roku-w-sprawie-ustalenia-dnia-wolnego-od-pracy', 1, 'Administrator'),
(30, 'Zarządzenie nr 10/19 Dyrektora Sądu Okręgowego w Rzeszowie z dnia 5 kwietnia 2019 roku', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p>Zarządzenie nr 10/19 Dyrektora Sądu Okręgowego w Rzeszowie z dnia 5 kwietnia 2019 roku w sprawie ustalenia zasad dotyczących egzekwowania kar i odszkodowań, wynikających z umowy z Pocztą Polską w Sądzie Okręgowym w Rzeszowie oraz w Sądach Rejonowych w Leżajsku, Lańcucie, Ropczycach i Strzyżowie, zwanych dalej sądami \"funkcjonalnymi\"</p>\r\n\r\n<p>\r\n	<br>\r\n</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/ZarzadzenieNr10_19.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:03:21', '2019-07-16 06:03:21', 1, NULL, 'zarzadzenie-nr-1019-dyrektora-sadu-okregowego-w-rzeszowie-z-dnia-5-kwietnia-2019-roku', 1, 'Administrator'),
(31, 'Zarządzenie dot. skróconego dnia pracy 19 kwietnia 2019r.', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20dot.%20skr%C3%B3conego%20dnia%20pracy.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:04:14', '2019-07-16 06:04:14', 1, NULL, 'zarzadzenie-dot-skroconego-dnia-pracy-19-kwietnia-2019r', 1, 'Administrator'),
(32, 'WRPOWADZENIE BRAVO-CRP NA TERENIE RP', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Alert_Bravo.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:05:55', '2019-07-16 06:05:55', 1, NULL, 'wrpowadzenie-bravo-crp-na-terenie-rp', 1, 'Administrator'),
(33, 'Zarządzenie w sprawie skrócenia czasu pracy 11-14 czerwca 2019r.', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie_nr_45_19.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:06:39', '2019-07-16 06:06:39', 1, NULL, 'zarzadzenie-w-sprawie-skrocenia-czasu-pracy-11-14-czerwca-2019r', 1, 'Administrator'),
(34, 'Informacje na temat zagrożeń sieciowych przesyłanych z Biura Cyberbezpieczeństwa', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Cyberbezpieczenstwo.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:08:54', '2019-07-16 06:08:54', 1, NULL, 'informacje-na-temat-zagrozen-sieciowych-przesylanych-z-biura-cyberbezpieczenstwa', 1, 'Administrator'),
(35, 'Zarządzenie dot. skróconego czasu pracy 26-27 czerwca', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/aktualnosci/Zarz%C4%85dzenie%20PSR%20i%20DSO%20skr.%20czasu%20pracy.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-16 06:10:12', '2019-07-16 06:10:12', 1, NULL, 'zarzadzenie-dot-skroconego-czasu-pracy-26-27-czerwca', 1, 'Administrator'),
(36, 'Zarządzenie nr 13/16 dot. aneksu do regulaminu ZFŚS', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/sprawy_socjalne/zarz%C4%85dzenie%20nr%2013.pdf\">Pobierz</a></p>', '2019-07-22 06:42:00', '2019-07-22 06:42:00', 1, NULL, 'zarzadzenie-nr-1316-dot-aneksu-do-regulaminu-zfss', 1, 'Administrator'),
(37, 'Regulamin ZFŚS', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/sprawy_socjalne/Regulamin%20ZF%C5%9AS.pdf\">Regulamin ZFŚS</a></p>\r\n<hr>\r\n\r\n<p>Załączniki:</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_7%20umowa%20zapomogi.doc\">Umowa zapomogi</a>\r\n	<a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_6%20WNIOSEK%20zapomoga%20mieszk.doc\"></a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_6%20WNIOSEK%20zapomoga%20mieszk.doc\">WNIOSEK o udzielenie zapomogi na cele mieszkaniowe z ZFŚS</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_5%20Umowa%20po%C5%BCyczki.doc\">Umowa pożyczki</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_4%20WNIOSEK%20po%C5%BCyczka.doc\">WNIOSEK o udzielenie pożyczki na cele mieszkaniowe z ZFŚS</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_3%20WNIOSEK%20%C5%BC%C5%82obek.doc\">WNIOSEK o dofinansowanie koszów opieki nad dzieckiem uczęszczającym do żłobka lub placówki przedszkolnej</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_2%20WNIOSEK%20urlop.doc\">WNIOSEK o przyznanie ulgowego świadczenia socjalnego</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/za%C5%82_1%20o%C5%9Bwiadczenie%20doch%C3%B3d.doc\">Oświadczenie o dochodach</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/aneks%201.pdf\">Aneks nr 1</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/Aneks%20nr%203%20do%20Regulaminu%20ZF%C5%9AS.pdf\">Aneks nr 3</a>\r\n	<br><a href=\"/swor/storage/app/media/sprawy_socjalne/oswiad-o-wyrazenie-zgody-na-przetwarzanie-danych-osob.pdf\">Oświadczenie o wyrażenie zgody na przetwarzanie danych osobowych</a></p>', '2019-07-22 06:51:41', '2019-07-22 08:54:08', 1, NULL, 'regulamin-zfss', 1, 'Administrator'),
(38, 'Zarządzenie + Aneks do Regulaminu ZFŚS', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/sprawy_socjalne/zarzadzenie-aneks-do-regulaminu-zfss.pdf\">Pobierz</a></p>', '2019-07-22 08:51:06', '2019-07-22 08:51:06', 1, NULL, 'zarzadzenie-aneks-do-regulaminu-zfss', 1, 'Administrator'),
(39, 'Aneks do zarządzenia w sprawie komisji socjalnej', '<p>\r\n	<br>\r\n</p>\r\n\r\n<p><a href=\"/swor/storage/app/media/sprawy_socjalne/Aneks%20do%20zarz%C4%85dzenia%20%20w%20sprawie%20komisji%20socjalnej.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">Pobierz</a></p>', '2019-07-22 08:53:13', '2019-07-22 08:53:13', 1, NULL, 'aneks-do-zarzadzenia-w-sprawie-komisji-socjalnej', 1, 'Administrator'),
(40, 'Regulamin ogranizacyjny', '<p><a href=\"/swor/storage/app/media/regulamin_organizacyjny/Regulamin%20ogranizacyjny.pdf\">Pobierz</a></p>', '2019-07-22 09:11:39', '2019-07-22 09:11:39', 1, NULL, 'regulamin-ogranizacyjny', 1, 'Administrator'),
(41, 'Zarządzenie nr 1/16 ws utworzenia regulaminu pracy', '<p><a href=\"/swor/storage/app/media/regulamin_pracy/Zarz%C4%85dzenie.pdf\">Pobierz</a></p>\r\n\r\n<p><a href=\"/swor/storage/app/media/regulamin_pracy/Regulamin%20pracy%20SR%20Strzy%C5%BC%C3%B3w%202016.pdf\">Regulamin Pracy</a></p>\r\n\r\n<p><a href=\"/swor/storage/app/media/regulamin_pracy/aneks%20nr%201%20do%20reg.%20pracy.pdf\">Aneks nr 1</a>\r\n	<br><a href=\"/swor/storage/app/media/regulamin_pracy/Aneks%20Nr%202%20do%20Regulaminu.pdf\">Aneks nr 2</a>\r\n	<br><a href=\"/swor/storage/app/media/regulamin_pracy/Aneks%20Nr%203%20do%20Regulaminu%20pracy.doc\">Aneks nr 3</a></p>\r\n<hr>\r\n\r\n<p><a href=\"/swor/storage/app/media/regulamin_pracy/za%C5%82.%20nr%204%20i%205%20do%20reg.%20pracy.pdf\">Wykaz prac szczególnie uciążliwych lub szkodliwych</a>\r\n	<br><a href=\"/swor/storage/app/media/regulamin_pracy/za%C5%82.%20nr%203%20do%20reg.%20pracy.pdf\">WNIOSEK o wyrażenie zgody na wyjście prywatne w godzinach pracy oraz odpracowanie czasu prywatnego wyjścia w godzinach pracy</a>\r\n	<br><a href=\"/swor/storage/app/media/regulamin_pracy/za%C5%82.%20nr%202%20do%20reg.%20pracy.pdf\">POLECENIE WYKONANIA PRACY W GODZINACH NADLICZBOWYCH</a>\r\n	<br><a href=\"/swor/storage/app/media/regulamin_pracy/za%C5%82.%20nr%201%20do%20reg.%20pracy.pdf\">ROCZNA KARTA EWIDENCJI CZASU PRACY ZA ROK</a>\r\n	<br><a href=\"/swor/storage/app/media/regulamin_pracy/wniosek%20urlopowy.docx\">Wniosek urlopowy</a></p>', '2019-07-22 09:14:11', '2019-07-22 09:27:36', 1, NULL, 'zarzadzenie-nr-116-ws-utworzenia-regulaminu-pracy', 1, 'Administrator'),
(42, 'ZASADY PRZYDZIAŁU PRACOWNIKOM ŚRODKÓW OCHRONY INDYWIDUALNEJ ORAZ ODZIEŻY I OBUWIA ROBOCZEGO', '<p><a href=\"/swor/storage/app/media/regulamin_pracy/za%C5%82.%20nr%206%20do%20reg.%20pracy.pdf\">Pobierz</a></p>\r\n\r\n<p><a href=\"/swor/storage/app/media/regulamin_pracy/za%C5%82.%20nr%206%20do%20reg.%20pracy%20tabela.pdf\">tabela</a></p>', '2019-07-22 09:15:37', '2019-07-22 09:17:43', 1, NULL, 'zasady-przydzialu-pracownikom-srodkow-ochrony-indywidualnej-oraz-odziezy-i-obuwia-roboczego', 1, 'Administrator'),
(43, 'Regulamin funkcjonowania monitoringu wizyjnego', '<p><a href=\"/swor/storage/app/media/regulamin_pracy/Regulamin%20funkcjonowania%20monitoringu%20wizyjnego.pdf\">Pobierz</a></p>', '2019-07-22 09:28:29', '2019-07-22 09:28:29', 1, NULL, 'regulamin-funkcjonowania-monitoringu-wizyjnego', 1, 'Administrator'),
(44, 'Zarządzenie nr 46/2018 Prezesa Sądu Rejonowego w Strzyżowie w sprawie wprowadzenia Regulaminu funkcjonowania monitoringu wizyjnego', '<p><a href=\"/swor/storage/app/media/regulamin_pracy/regulamin-monitoring-zarz-psr.pdf\">Pobierz</a></p>', '2019-07-22 09:29:47', '2019-07-22 09:29:47', 1, NULL, 'zarzadzenie-nr-462018-prezesa-sadu-rejonowego-w-strzyzowie-w-sprawie-wprowadzenia-regulaminu-funkcjonowania-monitoringu-wizyjnego', 1, 'Administrator'),
(45, 'Zarządzenie nr 1/17 w sprawie wprowadzenia zasad polityki rachunkowości', '<p><a href=\"/swor/storage/app/media/polityka_rachunkowosci/ZarzadzenieNr%201_17.pdf\">Pobierz</a></p>', '2019-07-22 09:34:35', '2019-07-22 09:34:35', 1, NULL, 'zarzadzenie-nr-117-w-sprawie-wprowadzenia-zasad-polityki-rachunkowosci', 1, 'Administrator'),
(46, 'Polityka rachunkowości', '<p>Pobierz</p>\r\n<hr>\r\n\r\n<p><a href=\"/swor/storage/app/media/polityka_rachunkowosci/Zal.1%20Plan%20kont%20z%20komentarzem.pdf\">Zal.1 Plan kont z komentarzem</a>\r\n	<br><a href=\"/swor/storage/app/media/polityka_rachunkowosci/Zal.2%20Instrukcja%20obiegu%20dokumentow.pdf\">Zal.2 Instrukcja obiegu dokumentów</a>\r\n	<br><a href=\"/swor/storage/app/media/polityka_rachunkowosci/Zal.4%20Instrukcja%20kasowa.pdf\">Zal.4 Instrukcja kasowa</a>\r\n	<br><a href=\"/swor/storage/app/media/polityka_rachunkowosci/Zal.5%20Instrukcja%20inwentaryzacyjna.pdf\">Zal.5 Instrukcja inwentaryzacyjna</a>\r\n	<br><a href=\"/swor/storage/app/media/polityka_rachunkowosci/Zal.6%20Instrukcja%20obs%C5%82ugi%20e-p%C5%82atno%C5%9Bci.pdf\">Zal.6 Instrukcja obsługi e-płatności</a>\r\n	<br><a href=\"/swor/storage/app/media/polityka_rachunkowosci/Zal.7%20Instrukcja%20obiegu%20e-znakow.pdf\">Zal.7 Instrukcja obiegu e-znaków</a></p>', '2019-07-22 09:38:25', '2019-07-22 09:38:25', 1, NULL, 'polityka-rachunkowosci', 1, 'Administrator'),
(47, 'Zbiór zasad etyki pracowników', '<p><a href=\"/swor/storage/app/media/kontrola_zarzadcza/Zbi%C3%B3r%20zasad%20etyki%20pracownik%C3%B3w.pdf\">Pobierz</a></p>', '2019-07-22 09:40:55', '2019-07-22 09:40:55', 1, NULL, 'zbior-zasad-etyki-pracownikow', 1, 'Administrator'),
(48, 'Zarządzenie nr 12/16', '<p><a href=\"/swor/storage/app/media/kontrola_zarzadcza/Zarz%C4%85dzenie%20nr%2012_16.pdf\">Pobierz</a></p>', '2019-07-22 09:45:46', '2019-07-22 09:45:46', 1, NULL, 'zarzadzenie-nr-1216', 1, 'Administrator'),
(49, 'Zarządzenie nr 11/16', '<p><a href=\"/swor/storage/app/media/kontrola_zarzadcza/Zarz%C4%85dzenie%20nr%2011_16.pdf\">Pobierz</a></p>', '2019-07-22 09:46:29', '2019-07-22 09:46:29', 1, NULL, 'zarzadzenie-nr-1116', 1, 'Administrator'),
(50, 'Zarządzenie nr 10/16', '<p><a href=\"/swor/storage/app/media/kontrola_zarzadcza/Zarz%C4%85dzenie%20nr%2010_16.pdf\">Pobierz</a></p>', '2019-07-22 09:47:54', '2019-07-22 09:47:54', 1, NULL, 'zarzadzenie-nr-1016', 1, 'Administrator'),
(51, 'Regulamin Kontroli Zarządczej', '<p><a href=\"/swor/storage/app/media/kontrola_zarzadcza/Regulamin%20Kontroli%20Zarz%C4%85dczej.pdf\">Pobierz</a></p>', '2019-07-22 09:48:35', '2019-07-22 09:48:35', 1, NULL, 'regulamin-kontroli-zarzadczej', 1, 'Administrator'),
(52, 'Procedury zarządzania ryzykiem', '<p><a href=\"/swor/storage/app/media/kontrola_zarzadcza/Procedury%20zarz%C4%85dzania%20ryzykiem.pdf\">Pobierz</a></p>', '2019-07-22 09:49:21', '2019-07-22 09:49:21', 1, NULL, 'procedury-zarzadzania-ryzykiem', 1, 'Administrator'),
(53, 'Portal Orzeczeń - zarządzenie', '<p><a href=\"/swor/storage/app/media/portal_orzeczen/Portal%20Orzecze%C5%84%20-%20zarzadzenie.docx\">Pobierz</a></p>', '2019-07-22 10:09:16', '2019-07-22 10:12:15', 1, NULL, 'portal-orzeczen-zarzadzenie', 1, 'Administrator'),
(54, 'Portal Informacyjny - zarządzenie', '<p><a href=\"/swor/storage/app/media/portal_informacyjny/Portal%20Informacyjny%20-%20zarz%C4%85dzenie.docx\">Pobierz</a></p>', '2019-07-23 06:30:18', '2019-07-23 06:30:18', 1, NULL, 'portal-informacyjny-zarzadzenie', 1, 'Administrator'),
(55, 'PI a SAWA PREZENTACJA', '<p><a href=\"/swor/storage/app/media/portal_informacyjny/PI%20a%20SAWA%20%20PREZENTACJA.pdf\">Pobierz</a></p>', '2019-07-23 06:31:08', '2019-07-23 06:31:08', 1, NULL, 'pi-sawa-prezentacja', 1, 'Administrator'),
(56, 'Instrukcja PI-prokuratura_wersja 1.0', '<p><a href=\"/swor/storage/app/media/portal_informacyjny/Instrukcja%20PI-prokuratura_wersja%201.0.pdf\">Pobierz</a></p>', '2019-07-23 06:32:02', '2019-07-23 06:32:02', 1, NULL, 'instrukcja-pi-prokuratura_wersja-10', 1, 'Administrator'),
(57, 'Instrukcja PI-pracownik_wersja 1.1', '<p><a href=\"/swor/storage/app/media/portal_informacyjny/Instrukcja%20PI-pracownik_wersja%201.1.pdf\">Pobierz</a></p>', '2019-07-23 06:32:33', '2019-07-23 06:32:33', 1, NULL, 'instrukcja-pi-pracownik_wersja-11', 1, 'Administrator'),
(58, 'Instrukcja Obsługi PI dla użytkownika wewnetrznego', '<p><a href=\"/swor/storage/app/media/portal_informacyjny/Instrukcja%20Obs%C5%82ugi%20%20PI%20dla%20u%C5%BCytkownika%20wewnetrznego.pdf\">Pobierz</a></p>', '2019-07-23 06:33:15', '2019-07-23 06:33:15', 1, NULL, 'instrukcja-obslugi-pi-dla-uzytkownika-wewnetrznego', 1, 'Administrator'),
(59, 'Instrukcja Obsługi dla użytkownika zewnętrznego', '<p><a href=\"/swor/storage/app/media/portal_informacyjny/Instrukcja%20Obs%C5%82ugi%20%20dla%20u%C5%BCytkownika%20zewn%C4%99trznego.pdf\">Pobierz</a></p>', '2019-07-23 06:34:03', '2019-07-23 06:34:03', 1, NULL, 'instrukcja-obslugi-dla-uzytkownika-zewnetrznego', 1, 'Administrator');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, '5d64f3f29b190114198576.png', 'OctoberCMS.png', 2708, 'image/png', NULL, NULL, 'logo', '3', 'Uno\\PleaseWait\\Models\\SplashPage', 1, 3, '2019-08-27 07:12:18', '2019-08-27 07:12:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_css` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-06-19 05:40:03', '2019-06-19 05:40:03'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-06-19 05:40:03', '2019-06-19 05:40:03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_mail_partials`
--

INSERT INTO `system_mail_partials` (`id`, `name`, `code`, `content_html`, `content_text`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'header', '<tr>\n    <td class=\"header\">\n        {% if url %}\n            <a href=\"{{ url }}\">\n                {{ body }}\n            </a>\n        {% else %}\n            <span>\n                {{ body }}\n            </span>\n        {% endif %}\n    </td>\n</tr>', '*** {{ body|trim }} <{{ url }}>', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(2, 'Footer', 'footer', '<tr>\n    <td>\n        <table class=\"footer\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n            <tr>\n                <td class=\"content-cell\" align=\"center\">\n                    {{ body|md_safe }}\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>', '-------------------\n{{ body|trim }}', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(3, 'Button', 'button', '<table class=\"action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td align=\"center\">\n                        <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                            <tr>\n                                <td>\n                                    <a href=\"{{ url }}\" class=\"button button-{{ type ?: \'primary\' }}\" target=\"_blank\">\n                                        {{ body }}\n                                    </a>\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }} <{{ url }}>', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(4, 'Panel', 'panel', '<table class=\"panel\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td class=\"panel-content\">\n            <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td class=\"panel-item\">\n                        {{ body|md_safe }}\n                    </td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(5, 'Table', 'table', '<div class=\"table\">\n    {{ body|md_safe }}\n</div>', '{{ body|trim }}', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(6, 'Subcopy', 'subcopy', '<table class=\"subcopy\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td>\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '-----\n{{ body|trim }}', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(7, 'Promotion', 'promotion', '<table class=\"promotion\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n    <tr>\n        <td align=\"center\">\n            {{ body|md_safe }}\n        </td>\n    </tr>\n</table>', '{{ body|trim }}', 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_mail_templates`
--

INSERT INTO `system_mail_templates` (`id`, `code`, `subject`, `description`, `content_html`, `content_text`, `layout_id`, `is_custom`, `created_at`, `updated_at`) VALUES
(1, 'backend::mail.invite', NULL, 'Invite new admin to the site', NULL, NULL, 2, 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47'),
(2, 'backend::mail.restore', NULL, 'Reset an admin password', NULL, NULL, 2, 0, '2019-07-10 17:05:47', '2019-07-10 17:05:47');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '\"530fb2559d6b264485c60ac3797fe8ac\"'),
(3, 'system', 'core', 'build', '\"455\"'),
(4, 'system', 'update', 'retry', '1566982739'),
(5, 'cms', 'theme', 'active', '\"swor\"'),
(6, 'system', 'theme', 'history', '{\"Hambern.hambern-blank-bootstrap-4\":\"hambern-hambern-blank-bootstrap-4\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-06-19 05:40:03'),
(2, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-06-19 05:45:00'),
(3, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-06-19 05:45:00'),
(4, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-06-19 05:45:00'),
(5, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-06-19 05:45:00'),
(6, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-06-19 05:45:00'),
(7, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-06-19 05:45:00'),
(8, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-06-19 05:45:00'),
(9, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-06-19 05:45:00'),
(10, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-06-19 05:45:00'),
(11, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-06-19 05:45:00'),
(12, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-06-19 05:45:00'),
(13, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-06-19 05:45:00'),
(14, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-06-19 05:45:00'),
(15, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-06-19 05:45:00'),
(16, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-06-19 05:45:00'),
(17, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-06-19 05:45:00'),
(18, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-06-19 05:45:00'),
(19, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-06-19 05:45:00'),
(20, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-06-19 05:45:00'),
(21, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2019-06-19 05:45:00'),
(22, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-06-19 05:45:00'),
(23, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-06-19 05:45:00'),
(24, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-06-19 05:45:00'),
(25, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-06-19 05:45:00'),
(32, 'AnandPatel.WysiwygEditors', 'comment', '1.0.1', 'First version of Wysiwyg Editors.', '2019-06-19 05:53:29'),
(33, 'AnandPatel.WysiwygEditors', 'comment', '1.0.2', 'Automatic Injection to CMS & other code editors and October CMS`s Rich Editor added.', '2019-06-19 05:53:29'),
(34, 'AnandPatel.WysiwygEditors', 'comment', '1.0.3', 'Automatic Injection to RainLab Static Pages & other plugin`s option is appear only if installed.', '2019-06-19 05:53:29'),
(35, 'AnandPatel.WysiwygEditors', 'comment', '1.0.4', 'New Froala editor added (on request from emzero439), Height & width property added for editor, setting moved to My Setting tab and minor changes in settings.', '2019-06-19 05:53:29'),
(36, 'AnandPatel.WysiwygEditors', 'comment', '1.0.5', 'Automatic Injection to Radiantweb`s Problog and ProEvents (option available in settings-content).', '2019-06-19 05:53:29'),
(37, 'AnandPatel.WysiwygEditors', 'comment', '1.0.6', 'CKEditor updated and bug fixes.', '2019-06-19 05:53:29'),
(38, 'AnandPatel.WysiwygEditors', 'comment', '1.0.7', 'Integrated elFinder (file browser) with TinyMCE & CKEditor, Image upload/delete for Froala Editor.', '2019-06-19 05:53:29'),
(39, 'AnandPatel.WysiwygEditors', 'comment', '1.0.8', 'Added security to File Browser`s route (Authenticate users can only access File Browser).', '2019-06-19 05:53:29'),
(40, 'AnandPatel.WysiwygEditors', 'comment', '1.0.9', 'Updated CKEditor, Froala and TinyMCE.', '2019-06-19 05:53:29'),
(41, 'AnandPatel.WysiwygEditors', 'comment', '1.1.0', 'Support multilanguage, update elFinder and cleanup code.', '2019-06-19 05:53:29'),
(42, 'AnandPatel.WysiwygEditors', 'comment', '1.1.1', 'Added Turkish language.', '2019-06-19 05:53:29'),
(43, 'AnandPatel.WysiwygEditors', 'comment', '1.1.2', 'Added Hungarian language.', '2019-06-19 05:53:29'),
(44, 'AnandPatel.WysiwygEditors', 'comment', '1.1.3', 'Fixed issue related to RC (Elfinder fix remaining).', '2019-06-19 05:53:29'),
(45, 'AnandPatel.WysiwygEditors', 'comment', '1.1.4', 'Fixed Elfinder issue.', '2019-06-19 05:53:29'),
(46, 'AnandPatel.WysiwygEditors', 'comment', '1.1.5', 'Updated CKEditor, Froala and TinyMCE.', '2019-06-19 05:53:29'),
(47, 'AnandPatel.WysiwygEditors', 'comment', '1.1.6', 'Changed destination folder.', '2019-06-19 05:53:29'),
(48, 'AnandPatel.WysiwygEditors', 'comment', '1.1.7', 'Added Czech language.', '2019-06-19 05:53:29'),
(49, 'AnandPatel.WysiwygEditors', 'comment', '1.1.8', 'Added Russian language.', '2019-06-19 05:53:29'),
(50, 'AnandPatel.WysiwygEditors', 'comment', '1.1.9', 'Fix hook and other issues (thanks to Vojta Svoboda).', '2019-06-19 05:53:29'),
(51, 'AnandPatel.WysiwygEditors', 'comment', '1.2.0', 'Put settings inside CMS sidemenu (thanks to Amanda Tresbach).', '2019-06-19 05:53:29'),
(52, 'AnandPatel.WysiwygEditors', 'comment', '1.2.1', 'Remove el-finder (Which fix issue of composer), added OC media manager support for image in TinyMCE & CkEditor, TinyMCE version updated, Fix Image upload for froala editor', '2019-06-19 05:53:29'),
(53, 'AnandPatel.WysiwygEditors', 'comment', '1.2.2', 'Add multilingual support, Add new languages, Update the Hungarian language, Add the missing English language files (Special thanks to Szabó Gergő)', '2019-06-19 05:53:29'),
(54, 'AnandPatel.WysiwygEditors', 'comment', '1.2.3', 'Added toolbar customization option (Special thanks to Szabó Gergő).', '2019-06-19 05:53:29'),
(55, 'AnandPatel.WysiwygEditors', 'comment', '1.2.4', 'Added support for Content Plus Plugin & News and Newsletter plugin (thanks to Szabó Gergő)', '2019-06-19 05:53:29'),
(56, 'AnandPatel.WysiwygEditors', 'comment', '1.2.5', 'Minor improvements and bugfixes.', '2019-06-19 05:53:29'),
(57, 'AnandPatel.WysiwygEditors', 'comment', '1.2.6', 'Updated the CKEditor and TinyMCE editors.', '2019-06-19 05:53:29'),
(58, 'AnandPatel.WysiwygEditors', 'comment', '1.2.7', 'Show locale switcher when using multilocale editor.', '2019-06-19 05:53:29'),
(59, 'AnandPatel.WysiwygEditors', 'comment', '1.2.8', 'Added French language', '2019-06-19 05:53:29'),
(60, 'AnandPatel.WysiwygEditors', 'comment', '1.2.9', 'Added permission for preferences', '2019-06-19 05:53:29'),
(61, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2019-06-19 06:29:28'),
(62, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2019-06-19 06:29:28'),
(63, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2019-06-19 06:29:28'),
(64, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2019-06-19 06:29:28'),
(65, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2019-06-19 06:29:28'),
(66, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2019-06-19 06:29:28'),
(67, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2019-06-19 06:29:28'),
(68, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2019-06-19 06:29:28'),
(69, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2019-06-19 06:29:28'),
(70, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2019-06-19 06:29:28'),
(71, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2019-06-19 06:29:28'),
(72, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2019-06-19 06:29:28'),
(73, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2019-06-19 06:29:28'),
(74, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2019-06-19 06:29:28'),
(75, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2019-06-19 06:29:28'),
(76, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2019-06-19 06:29:28'),
(77, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2019-06-19 06:29:28'),
(78, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2019-06-19 06:29:28'),
(79, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2019-06-19 06:29:28'),
(80, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2019-06-19 06:29:29'),
(81, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2019-06-19 06:29:29'),
(82, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2019-06-19 06:29:29'),
(83, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2019-06-19 06:29:29'),
(84, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2019-06-19 06:29:29'),
(85, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2019-06-19 06:29:29'),
(86, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2019-06-19 06:29:29'),
(87, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2019-06-19 06:29:29'),
(88, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2019-06-19 06:29:29'),
(89, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2019-06-19 06:29:29'),
(90, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2019-06-19 06:29:29'),
(91, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2019-06-19 06:29:29'),
(92, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2019-06-19 06:29:29'),
(93, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2019-06-19 06:29:29'),
(94, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2019-06-19 06:29:29'),
(95, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2019-06-19 06:29:29'),
(96, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2019-06-19 06:29:29'),
(97, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2019-06-19 06:29:29'),
(98, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2019-06-19 06:29:29'),
(99, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2019-06-19 06:29:29'),
(100, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2019-06-19 06:29:29'),
(101, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-06-19 06:29:29'),
(102, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2019-06-19 06:29:29'),
(103, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2019-06-19 06:29:29'),
(104, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2019-06-19 06:29:29'),
(105, 'RainLab.Pages', 'comment', '1.2.19', 'Catch exception with corrupted menu file.', '2019-06-19 06:29:29'),
(106, 'RainLab.Pages', 'comment', '1.2.20', 'StaticMenu component now exposes menuName property; added pages.menu.referencesGenerated event.', '2019-06-19 06:29:29'),
(107, 'RainLab.Pages', 'comment', '1.2.21', 'Fixes a bug where last Static Menu item cannot be deleted. Improved Persian, Slovak and Turkish translations.', '2019-06-19 06:29:29'),
(156, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.1', 'Initialize plugin.', '2019-06-19 07:52:18'),
(157, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.2', 'builder_table_create_grzegorzczekaj_ogloszenia_categories.php', '2019-06-19 07:56:50'),
(158, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.2', 'Created table grzegorzczekaj_ogloszenia_categories', '2019-06-19 07:56:50'),
(267, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.3', 'builder_table_create_grzegorzczekaj_ogloszenia_news.php', '2019-06-19 10:10:37'),
(268, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.3', 'Created table grzegorzczekaj_ogloszenia_news', '2019-06-19 10:10:37'),
(269, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.4', 'builder_table_update_grzegorzczekaj_ogloszenia_news.php', '2019-06-19 10:19:41'),
(270, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.4', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-06-19 10:19:41'),
(271, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.5', 'builder_table_update_grzegorzczekaj_ogloszenia_categories_news.php', '2019-06-19 11:08:06'),
(272, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.5', 'Updated table grzegorzczekaj_ogloszenia_categories_news', '2019-06-19 11:08:06'),
(273, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.6', 'builder_table_update_grzegorzczekaj_ogloszenia_categories.php', '2019-06-26 10:22:17'),
(274, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.6', 'Updated table grzegorzczekaj_ogloszenia_categories', '2019-06-26 10:22:17'),
(275, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.7', 'builder_table_update_grzegorzczekaj_ogloszenia_news_2.php', '2019-07-02 08:07:03'),
(276, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.7', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-07-02 08:07:03'),
(277, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.8', 'builder_table_update_grzegorzczekaj_ogloszenia_news_3.php', '2019-07-02 16:07:20'),
(278, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.8', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-07-02 16:07:20'),
(279, 'Uno.PleaseWait', 'comment', '1.0.1', 'First version of Please Wait.', '2019-07-05 14:38:13'),
(287, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.9', 'builder_table_update_grzegorzczekaj_ogloszenia_news_4.php', '2019-07-07 17:20:00'),
(288, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.9', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-07-07 17:20:00'),
(289, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.10', 'builder_table_update_grzegorzczekaj_ogloszenia_news_5.php', '2019-07-07 17:25:48'),
(290, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.10', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-07-07 17:25:48'),
(291, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.11', 'builder_table_update_grzegorzczekaj_ogloszenia_news_6.php', '2019-07-10 17:00:49'),
(292, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.11', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-07-10 17:00:49'),
(293, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.12', 'builder_table_update_grzegorzczekaj_ogloszenia_news_7.php', '2019-07-10 17:01:25'),
(294, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.12', 'Updated table grzegorzczekaj_ogloszenia_news', '2019-07-10 17:01:25'),
(295, 'GrzegorzCzekaj.Ogloszenia', 'script', '1.0.13', 'builder_table_create_grzegorzczekaj_ogloszenia_links.php', '2019-07-16 04:41:14'),
(296, 'GrzegorzCzekaj.Ogloszenia', 'comment', '1.0.13', 'Created table grzegorzczekaj_ogloszenia_links', '2019-07-16 04:41:14'),
(297, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2019-07-16 05:01:16'),
(335, 'BenFreke.MenuManager', 'script', '1.0.1', 'create_menus_table.php', '2019-08-27 07:42:51'),
(336, 'BenFreke.MenuManager', 'comment', '1.0.1', 'First version of MenuManager', '2019-08-27 07:42:51'),
(337, 'BenFreke.MenuManager', 'comment', '1.0.2', 'Added active state to menu; Added ability to select active menu item; Added controllable depth to component', '2019-08-27 07:42:51'),
(338, 'BenFreke.MenuManager', 'comment', '1.0.3', 'Made it possible for menu items to not link anywhere; Put a check in so the active node must be a child of the parentNode', '2019-08-27 07:42:51'),
(339, 'BenFreke.MenuManager', 'comment', '1.0.4', 'Fixed bug where re-ordering stopped working', '2019-08-27 07:42:51'),
(340, 'BenFreke.MenuManager', 'comment', '1.0.5', 'Moved link creation code into the model in preparation for external links; Brought list item class creation into the model; Fixed typo with default menu class', '2019-08-27 07:42:51'),
(341, 'BenFreke.MenuManager', 'comment', '1.0.6', 'Removed NestedSetModel, thanks @daftspunk', '2019-08-27 07:42:51'),
(342, 'BenFreke.MenuManager', 'script', '1.1.0', 'add_is_external_field.php', '2019-08-27 07:42:51'),
(343, 'BenFreke.MenuManager', 'script', '1.1.0', 'add_link_target_field.php', '2019-08-27 07:42:51'),
(344, 'BenFreke.MenuManager', 'comment', '1.1.0', 'Added ability to link to external sites. Thanks @adisos', '2019-08-27 07:42:51'),
(345, 'BenFreke.MenuManager', 'script', '1.1.1', 'add_enabled_parameters_query_fields_1.php', '2019-08-27 07:42:51'),
(346, 'BenFreke.MenuManager', 'script', '1.1.1', 'add_enabled_parameters_query_fields_2.php', '2019-08-27 07:42:51'),
(347, 'BenFreke.MenuManager', 'script', '1.1.1', 'add_enabled_parameters_query_fields_3.php', '2019-08-27 07:42:51'),
(348, 'BenFreke.MenuManager', 'comment', '1.1.1', 'Added ability to enable/disable individual menu links; Added ability for url parameters & query string; Fixed issue of \"getLinkHref()\" pulling through full page url with parameters rather than the ACTUAL page url', '2019-08-27 07:42:51'),
(349, 'BenFreke.MenuManager', 'comment', '1.1.2', 'Reformatted code for better maintainability and better practises', '2019-08-27 07:42:51'),
(350, 'BenFreke.MenuManager', 'comment', '1.1.3', 'Fixed bug that prevented multiple components displaying', '2019-08-27 07:42:51'),
(351, 'BenFreke.MenuManager', 'comment', '1.2.0', 'Fixed validation and fields bug; Added list classes', '2019-08-27 07:42:51'),
(352, 'BenFreke.MenuManager', 'comment', '1.3.0', 'Added translation ability thanks to @alxy', '2019-08-27 07:42:51'),
(353, 'BenFreke.MenuManager', 'comment', '1.3.1', 'JSON validation of parameters added; Correct active menu now being set based on parameters; PR sent by @whsol, thanks!', '2019-08-27 07:42:51'),
(354, 'BenFreke.MenuManager', 'comment', '1.3.2', 'Fix for param check that is breaking active node lookup. Thanks @alxy', '2019-08-27 07:42:51'),
(355, 'BenFreke.MenuManager', 'comment', '1.3.3', 'Fix for JSON comment having single quotes. Thanks @adisos', '2019-08-27 07:42:51'),
(356, 'BenFreke.MenuManager', 'comment', '1.3.4', 'Fix for JSON validation not firing', '2019-08-27 07:42:51'),
(357, 'BenFreke.MenuManager', 'script', '1.4.0', 'fix_menu_table.php', '2019-08-27 07:42:51'),
(358, 'BenFreke.MenuManager', 'comment', '1.4.0', 'Fix for POST operations. PR by @matissjanis, TR translations (@mahony0) and permission registration (@nnmer)', '2019-08-27 07:42:51'),
(359, 'BenFreke.MenuManager', 'comment', '1.4.1', 'Fixed bug caused by deleting needed method of Menu class. Thanks @MatissJA', '2019-08-27 07:42:51'),
(360, 'BenFreke.MenuManager', 'comment', '1.4.2', 'Fixed bug with URLs not saving correctly', '2019-08-27 07:42:51'),
(361, 'BenFreke.MenuManager', 'comment', '1.4.3', 'Fixed bug where getBaseFileName method was moved to a different object', '2019-08-27 07:42:51'),
(362, 'BenFreke.MenuManager', 'comment', '1.4.4', 'Fixed bug with incorrect labels. Thanks @ribsousa', '2019-08-27 07:42:51'),
(363, 'BenFreke.MenuManager', 'comment', '1.4.5', 'Fixed bug where getBaseFileName method was moved to a different object', '2019-08-27 07:42:51'),
(364, 'BenFreke.MenuManager', 'comment', '1.4.6', 'Merged PRs that fix bug with plugin not working with stable release', '2019-08-27 07:42:51'),
(365, 'BenFreke.MenuManager', 'comment', '1.4.7', 'Merged PR to fix syntax errors with fresh install of 1.4.6. Thanks @devlifeX', '2019-08-27 07:42:51'),
(366, 'BenFreke.MenuManager', 'comment', '1.4.8', 'Merged PR to fix re-order errors. Thanks @CptMeatball', '2019-08-27 07:42:51'),
(367, 'BenFreke.MenuManager', 'comment', '1.5.0', 'Fixed bugs preventing postgres and sqlite support', '2019-08-27 07:42:51'),
(368, 'BenFreke.MenuManager', 'comment', '1.5.1', 'Added homepage to plugin information. Thanks @gergo85', '2019-08-27 07:42:51'),
(369, 'BenFreke.MenuManager', 'comment', '1.5.2', 'Added French translation. Thanks @Glitchbone', '2019-08-27 07:42:51'),
(370, 'BenFreke.MenuManager', 'comment', '1.5.2', 'Added code of conduct', '2019-08-27 07:42:51'),
(371, 'BenFreke.MenuManager', 'comment', '1.5.3', 'Added ability to delete menus. Thanks @osmanzeki', '2019-08-27 07:42:51');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-06-19 05:40:03', 0, 1),
(2, 'RainLab.Builder', '1.0.25', '2019-07-16 05:01:16', 0, 0),
(4, 'AnandPatel.WysiwygEditors', '1.2.9', '2019-06-19 05:53:29', 0, 0),
(5, 'RainLab.Pages', '1.2.21', '2019-06-19 06:29:29', 0, 0),
(7, 'GrzegorzCzekaj.Ogloszenia', '1.0.13', '2019-07-16 04:41:14', 0, 0),
(8, 'Uno.PleaseWait', '1.0.1', '2019-07-05 14:38:13', 0, 0),
(11, 'BenFreke.MenuManager', '1.5.3', '2019-08-27 07:42:51', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'anandpatel_wysiwygeditors_settings', '{\"editor\":\"tinymce\",\"editor_width\":\"\",\"editor_height\":\"\",\"toolbar_tinymce\":\"undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image media ocmediamanager\",\"toolbar_ckeditor\":\"[\'Undo\', \'Redo\'], [\'Cut\', \'Copy\', \'Paste\', \'PasteText\', \'PasteFromWord\'], [\'Format\', \'FontSize\'], [\'ShowBlocks\', \'SelectAll\', \'RemoveFormat\'], [\'Source\'], [\'Maximize\'], \'\\/\', [\'Bold\', \'Italic\', \'Underline\', \'Strike\'], [\'JustifyLeft\', \'JustifyCenter\', \'JustifyRight\', \'JustifyBlock\'], [\'BulletedList\', \'NumberedList\', \'Outdent\', \'Indent\'], [\'TextColor\', \'BGColor\'], [\'Link\', \'Unlink\', \'Anchor\'], [\'Image\', \'Table\', \'oembed\', \'SpecialChar\', \'OcMediaManager\']\",\"cms_page_as_wysiwyg\":\"0\",\"cms_content_as_wysiwyg\":\"1\",\"cms_partial_as_wysiwyg\":\"0\",\"cms_layout_as_wysiwyg\":\"0\",\"others_as_wysiwyg\":\"0\"}'),
(2, 'rainlab_builder_settings', '{\"author_name\":\"Grzegorz Czekaj\",\"author_namespace\":\"GrzegorzCzekaj\"}'),
(3, 'uno_pleasewait_spash_page', '{\"is_active\":\"1\",\"spinner\":\"skCubeGrid\",\"phrase\":\"\\u0141adowanie strony ....\",\"phrase_color\":\"#2980b9\",\"spinner_color\":\"#2b3e50\",\"bg_color\":\"#9295af\"}'),
(4, 'system_log_settings', '{\"log_events\":\"1\",\"log_requests\":\"1\",\"log_theme\":\"0\"}');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Indeksy dla tabeli `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indeksy dla tabeli `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Indeksy dla tabeli `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indeksy dla tabeli `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Indeksy dla tabeli `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indeksy dla tabeli `benfreke_menumanager_menus`
--
ALTER TABLE `benfreke_menumanager_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `benfreke_menumanager_menus_parent_id_index` (`parent_id`);

--
-- Indeksy dla tabeli `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indeksy dla tabeli `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indeksy dla tabeli `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `grzegorzczekaj_dynamiclink_links`
--
ALTER TABLE `grzegorzczekaj_dynamiclink_links`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `grzegorzczekaj_ogloszenia_categories`
--
ALTER TABLE `grzegorzczekaj_ogloszenia_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `grzegorzczekaj_ogloszenia_links`
--
ALTER TABLE `grzegorzczekaj_ogloszenia_links`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `grzegorzczekaj_ogloszenia_news`
--
ALTER TABLE `grzegorzczekaj_ogloszenia_news`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indeksy dla tabeli `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indeksy dla tabeli `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indeksy dla tabeli `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indeksy dla tabeli `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indeksy dla tabeli `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indeksy dla tabeli `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indeksy dla tabeli `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Indeksy dla tabeli `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `benfreke_menumanager_menus`
--
ALTER TABLE `benfreke_menumanager_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `grzegorzczekaj_dynamiclink_links`
--
ALTER TABLE `grzegorzczekaj_dynamiclink_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `grzegorzczekaj_ogloszenia_categories`
--
ALTER TABLE `grzegorzczekaj_ogloszenia_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `grzegorzczekaj_ogloszenia_links`
--
ALTER TABLE `grzegorzczekaj_ogloszenia_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `grzegorzczekaj_ogloszenia_news`
--
ALTER TABLE `grzegorzczekaj_ogloszenia_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT dla tabeli `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT dla tabeli `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT dla tabeli `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
