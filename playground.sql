-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2020 a las 10:14:58
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `playground`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile', 1, 'add_profile'),
(2, 'Can change profile', 1, 'change_profile'),
(3, 'Can delete profile', 1, 'delete_profile'),
(4, 'Can view profile', 1, 'view_profile'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add message', 8, 'add_message'),
(30, 'Can change message', 8, 'change_message'),
(31, 'Can delete message', 8, 'delete_message'),
(32, 'Can view message', 8, 'view_message'),
(33, 'Can add thread', 9, 'add_thread'),
(34, 'Can change thread', 9, 'change_thread'),
(35, 'Can delete thread', 9, 'delete_thread'),
(36, 'Can view thread', 9, 'view_thread'),
(37, 'Can add página', 10, 'add_page'),
(38, 'Can change página', 10, 'change_page'),
(39, 'Can delete página', 10, 'delete_page'),
(40, 'Can view página', 10, 'view_page');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$rU2S8jCjOc00$ZnOCIz/YQO9w+WYEWlnCKpDuQHnlIyLLRRVhYzaGPTk=', '2020-06-07 07:30:26.538402', 0, 'Abby', '', '', 'Abby06090@hotmail.com', 0, 1, '2020-06-07 06:58:43.116190'),
(2, 'pbkdf2_sha256$150000$QSPaNhAxU2Mx$PfeiT52m5B+NsxkCQQ1DjWe98y83aoGXJuRB7JALVUA=', '2020-06-07 07:35:00.746926', 0, 'lupita', '', '', 'mari_lup4@hotmail.com', 0, 1, '2020-06-07 07:03:06.708855'),
(3, 'pbkdf2_sha256$150000$VyZEvC47eZVE$VOPv8OtwtmBmkYVs+5AT6ZYlydpp6/7abSaoITSUFDo=', '2020-06-07 07:07:46.901642', 0, 'Carlos', '', '', 'carlostrevera@gmail.com', 0, 1, '2020-06-07 07:06:11.076486'),
(4, 'pbkdf2_sha256$150000$TReOwtFWIDbK$FEwfa5FmuJkpo04avfNtGvR/7mCZim6Lh+3NqBXGFdY=', '2020-06-07 07:11:02.655995', 0, 'Omi', '', '', 'omigo@gmail.com', 0, 1, '2020-06-07 07:10:51.313160'),
(5, 'pbkdf2_sha256$150000$6XpVYHY7HqkQ$HC07PPXwgiEUoLbc37XD7UzCD61fkyqu/44Iia7ibd8=', '2020-06-07 07:16:02.928303', 0, 'Kari', '', '', 'karinachuma@gmail.com', 0, 1, '2020-06-07 07:15:35.142487'),
(6, 'pbkdf2_sha256$150000$XPNmDwrYS8JY$IBlpNK+2IpmOuBKXoBrMa4STFh9sjuq6tbn+kMRB8y8=', '2020-06-07 07:21:30.680655', 0, 'Marlen', '', '', 'marlymuack@gmail.com', 0, 1, '2020-06-07 07:21:16.921014'),
(7, 'pbkdf2_sha256$150000$kielKxohFPbM$nw6cBN6EsSMdXpMMJ6Xh8YsSr1vY5afwGmEDvZ1bmtU=', '2020-06-07 07:24:50.828936', 0, 'NellyRaLo', '', '', 'NellyRaLo@gmail.com', 0, 1, '2020-06-07 07:24:37.553271'),
(8, 'pbkdf2_sha256$150000$pssoCjmRyun7$2ZFY8X38nVck4rEA2G/Tey3f4Wgo/wMDBtloyN9z//o=', '2020-06-07 07:37:03.926211', 0, 'Chester', '', '', 'Chester@gmail.com', 0, 1, '2020-06-07 07:27:48.999497'),
(9, 'pbkdf2_sha256$150000$S560ZBAFtaN1$P59ygEm1AhtEcmH3oec6S5WsGXc7iJ2QPvZeyxZtOjM=', '2020-06-07 07:44:53.633614', 1, 'marilupe', '', '', 'marylup107@gmail.com', 1, 1, '2020-06-07 07:43:15.238881');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-07 07:45:40.552696', '1', 'What is Lorem Ipsum?', 1, '[{\"added\": {}}]', 10, 9),
(2, '2020-06-07 07:46:31.957050', '2', 'Where can I get some?', 1, '[{\"added\": {}}]', 10, 9),
(3, '2020-06-07 07:48:40.306709', '3', 'Perchè lo utilizziamo?', 1, '[{\"added\": {}}]', 10, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'messenger', 'message'),
(9, 'messenger', 'thread'),
(10, 'pages', 'page'),
(1, 'registration', 'profile'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-07 06:51:23.888106'),
(2, 'auth', '0001_initial', '2020-06-07 06:51:26.588227'),
(3, 'admin', '0001_initial', '2020-06-07 06:51:36.066473'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-07 06:51:38.872003'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-07 06:51:38.950162'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-07 06:51:40.095903'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-07 06:51:42.269398'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-07 06:51:44.511321'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-07 06:51:44.605310'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-07 06:51:45.749334'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-07 06:51:45.853888'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-07 06:51:46.187777'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-07 06:51:46.751973'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-07 06:51:47.415249'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-07 06:51:50.164893'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-07 06:51:50.212699'),
(17, 'messenger', '0001_initial', '2020-06-07 06:51:52.443915'),
(18, 'messenger', '0002_auto_20180829_2111', '2020-06-07 06:51:59.699955'),
(19, 'pages', '0001_initial', '2020-06-07 06:52:00.193854'),
(20, 'registration', '0001_initial', '2020-06-07 06:52:01.128111'),
(21, 'registration', '0002_auto_20180829_0258', '2020-06-07 06:52:02.669205'),
(22, 'sessions', '0001_initial', '2020-06-07 06:52:03.149531');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_message`
--

CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messenger_message`
--

INSERT INTO `messenger_message` (`id`, `content`, `created`, `user_id`) VALUES
(1, 'Hola abby como estas? ', '2020-06-07 07:04:47.598226', 2),
(2, 'hola como estas? ', '2020-06-07 07:08:17.532392', 3),
(3, ' abby ya hiciste la tarea?', '2020-06-07 07:08:45.750607', 3),
(4, 'tenias tarea del profesor Paquito?', '2020-06-07 07:09:09.459933', 3),
(5, 'Que onda profe Trevera!', '2020-06-07 07:12:57.955689', 4),
(6, 'Que dicen sus alumnos !!! ya ni me habla', '2020-06-07 07:13:12.353064', 4),
(7, 'XD XD XD XD XD', '2020-06-07 07:13:22.497729', 4),
(8, 'Hola abi, soy la maestra karina, te hago una invitación para un proyecto\n', '2020-06-07 07:18:12.453364', 5),
(9, 'Es relacionado al premio Santander', '2020-06-07 07:18:41.673594', 5),
(10, 'Espero tu respuesta', '2020-06-07 07:18:53.062716', 5),
(11, 'Que onda amiga!! cuando vienes por las chelas! en Cancun jajaja', '2020-06-07 07:22:53.817857', 6),
(12, 'Hola , cuando vamos a jugar voleibol!! a las canchitas\n', '2020-06-07 07:26:27.606977', 7),
(13, 'Gua!! Gua!!Gua!! Gua!!Gua!! Gua!!', '2020-06-07 07:29:16.188749', 8),
(14, 'Gua!! Gua!! Gua!! Gua!!', '2020-06-07 07:29:21.845212', 8),
(15, 'Gua!! Gua!! Gua!! Gua!! Gua!! Gua!!', '2020-06-07 07:29:34.390482', 8),
(16, 'Gua!! Gua!! Gua!! Gua!! Gua!! Gua!!', '2020-06-07 07:29:59.740497', 8),
(17, 'Holaa!! solo entrego mi proyecto del curso de Django', '2020-06-07 07:31:35.592360', 1),
(18, 'Hola , Claro que si! cuando libere mis materias ', '2020-06-07 07:32:04.169362', 1),
(19, 'hola chesti bonito\n', '2020-06-07 07:32:16.412349', 1),
(20, 'Hola miss\n', '2020-06-07 07:32:24.481134', 1),
(21, 'Si estoy interesada me habla por teléfono y nos ponemos de acuerdo', '2020-06-07 07:32:54.138695', 1),
(22, 'Jajaja, si profe en eso estoy, ya casi termino el proyecto del profe Paco', '2020-06-07 07:34:20.448355', 1),
(23, 'Hola miss!! bien y usted ?', '2020-06-07 07:34:37.168868', 1),
(24, 'Bien , bien , que tal los alumnos', '2020-06-07 07:35:55.853285', 2),
(25, 'BB!! chester!!', '2020-06-07 07:36:09.013221', 2),
(26, 'Que bueno, ya casi es tu cumpleaños', '2020-06-07 07:36:34.554681', 2),
(27, 'Gua!! ', '2020-06-07 07:39:14.871428', 8),
(28, 'Gua!! Gua!!Gua!!', '2020-06-07 07:39:49.990203', 8),
(29, 'Gua!! Gua!!Gua!!', '2020-06-07 07:40:02.210011', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread`
--

CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messenger_thread`
--

INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
(1, '2020-06-07 07:36:34.599557'),
(2, '2020-06-07 07:35:55.968975'),
(3, '2020-06-07 07:34:20.501226'),
(4, '2020-06-07 07:13:22.574525'),
(5, '2020-06-07 07:32:54.274330'),
(6, '2020-06-07 07:32:04.252350'),
(7, '2020-06-07 07:31:35.963365'),
(8, '2020-06-07 07:40:02.317720'),
(9, '2020-06-07 07:39:50.065000'),
(10, '2020-06-07 07:39:14.959193');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_messages`
--

CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messenger_thread_messages`
--

INSERT INTO `messenger_thread_messages` (`id`, `thread_id`, `message_id`) VALUES
(1, 1, 1),
(23, 1, 23),
(26, 1, 26),
(2, 2, 2),
(24, 2, 24),
(3, 3, 3),
(4, 3, 4),
(22, 3, 22),
(5, 4, 5),
(6, 4, 6),
(7, 4, 7),
(8, 5, 8),
(9, 5, 9),
(10, 5, 10),
(20, 5, 20),
(21, 5, 21),
(11, 6, 11),
(18, 6, 18),
(12, 7, 12),
(17, 7, 17),
(13, 8, 13),
(14, 8, 14),
(19, 8, 19),
(29, 8, 29),
(15, 9, 15),
(28, 9, 28),
(16, 10, 16),
(25, 10, 25),
(27, 10, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_users`
--

CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `messenger_thread_users`
--

INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 2, 3),
(5, 3, 1),
(6, 3, 3),
(7, 4, 3),
(8, 4, 4),
(9, 5, 1),
(10, 5, 5),
(11, 6, 1),
(12, 6, 6),
(13, 7, 1),
(14, 7, 7),
(16, 8, 1),
(15, 8, 8),
(18, 9, 3),
(17, 9, 8),
(20, 10, 2),
(19, 10, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pages_page`
--

INSERT INTO `pages_page` (`id`, `title`, `content`, `order`, `created`, `updated`) VALUES
(1, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 0, '2020-06-07 07:45:40.470949', '2020-06-07 07:45:40.470949'),
(2, 'Where can I get some?', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 0, '2020-06-07 07:46:31.901185', '2020-06-07 07:46:31.901185'),
(3, 'Perchè lo utilizziamo?', '<p>&Egrave; universalmente riconosciuto che un lettore che osserva il layout di una pagina viene distratto dal contenuto testuale se questo &egrave; leggibile. Lo scopo dell&rsquo;utilizzo del Lorem Ipsum &egrave; che offre una normale distribuzione delle lettere (al contrario di quanto avviene se si utilizzano brevi frasi ripetute, ad esempio &ldquo;testo qui&rdquo;), apparendo come un normale blocco di testo leggibile. Molti software di impaginazione e di web design utilizzano Lorem Ipsum come testo modello. Molte versioni del testo sono state prodotte negli anni, a volte casualmente, a volte di proposito (ad esempio inserendo passaggi ironici).</p>', 0, '2020-06-07 07:48:40.257843', '2020-06-07 07:48:40.257843');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_profile`
--

CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registration_profile`
--

INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
(1, 'profiles/abby.jpg', '', NULL, 1),
(2, 'profiles/75224866_2618633398175941_7761880582551764992_o.jpg', '', NULL, 2),
(3, 'profiles/the-legend-of-zelda-breath-of-the-wild-romantic-love-wallpaper-1920x1080-24044_48.jpg', '', NULL, 3),
(4, 'profiles/OMI.jpg', 'Me gusta escribir poesía y mensajes de reflexión', 'https://www.facebook.com/OmarSotoSan', 4),
(5, 'profiles/obtenerdatos.jpg', '', NULL, 5),
(6, 'profiles/realistic-smartphone-mockup-clean-smartphone-mockup_88130-54.jpg', '', NULL, 6),
(7, 'profiles/Voleibol.jpg', '', NULL, 7),
(8, 'profiles/100476183_589441228347535_576204372820623360_n.jpg', '', NULL, 8),
(9, '', NULL, NULL, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  ADD KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`);

--
-- Indices de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  ADD KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  ADD CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`);

--
-- Filtros para la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  ADD CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
