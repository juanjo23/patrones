-- phpMyAdmin SQL Dump
-- version 4.3.13
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-05-2015 a las 22:45:20
-- Versión del servidor: 5.5.32-cll-lve
-- Versión de PHP: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `patrones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_myprofile`
--

CREATE TABLE IF NOT EXISTS `accounts_myprofile` (
  `id` int(11) NOT NULL,
  `mugshot` varchar(100) NOT NULL,
  `privacy` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `empresa` varchar(300) NOT NULL,
  `numero_empleados` int(11) NOT NULL,
  `sector` varchar(500) NOT NULL,
  `modelo_estandar_id` int(11)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts_myprofile`
--

INSERT INTO `accounts_myprofile` (`id`, `mugshot`, `privacy`, `user_id`, `empresa`, `numero_empleados`, `sector`, `modelo_estandar_id`) VALUES
(3, '', 'registered', 10, '', 0, '', NULL),
(4, '', 'registered', 1, '23213', 23, 'dasfdf', 5),
(5, '', 'registered', 12, '', 0, '', NULL),
(6, '', 'registered', 11, '', 0, '', NULL),
(7, '', 'registered', 13, '', 0, '', NULL),
(10, '', 'registered', 16, 'CRISATS', 4, 'TI', 10),
(14, '', 'registered', 21, 'CDS', 6, 'Desarrollo de Software', 5),
(16, '', 'registered', 22, 'CDS', 6, 'Desarrollo de Software', 5),
(17, '', 'registered', 23, 'Softtek ', 15, 'Financiero ', 1),
(18, '', 'registered', 24, 'zacsoft sa de cv', 21, 'TI', 10),
(19, '', 'registered', 25, 'DotNet Desarrollo de Sistemas', 80, 'Tecnologías de Informacion', 2),
(20, '', 'registered', 26, 'assss', 8, 'it', 5),
(21, '', 'registered', 27, 'mariadnita', 3, 'desarrollo de software', 1),
(22, '', 'registered', 28, '', 0, '', NULL),
(23, '', 'registered', 29, '', 0, '', NULL),
(24, '', 'registered', 30, '', 0, '', NULL),
(25, '', 'registered', 31, 'Preguntales', 4, 'TI-Consultoria', 10),
(26, '', 'registered', 32, 'SILAC', 13, 'TI', 1),
(27, '', 'closed', 33, 'Folf ', 13, 'Privado', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add categoria', 8, 'add_categoria'),
(23, 'Can change categoria', 8, 'change_categoria'),
(24, 'Can delete categoria', 8, 'delete_categoria'),
(25, 'Can add patron', 9, 'add_patron'),
(26, 'Can change patron', 9, 'change_patron'),
(27, 'Can delete patron', 9, 'delete_patron'),
(28, 'Can add problema', 10, 'add_problema'),
(29, 'Can change problema', 10, 'change_problema'),
(30, 'Can delete problema', 10, 'delete_problema'),
(31, 'Can add fuerza', 11, 'add_fuerza'),
(32, 'Can change fuerza', 11, 'change_fuerza'),
(33, 'Can delete fuerza', 11, 'delete_fuerza'),
(34, 'Can add Modelo o Estandar', 12, 'add_modelo'),
(35, 'Can change Modelo o Estandar', 12, 'change_modelo'),
(36, 'Can delete Modelo o Estandar', 12, 'delete_modelo'),
(37, 'Can add solucion', 13, 'add_solucion'),
(38, 'Can change solucion', 13, 'change_solucion'),
(39, 'Can delete solucion', 13, 'delete_solucion'),
(40, 'Can add Uso del conocimiento', 14, 'add_uso_conocimiento'),
(41, 'Can change Uso del conocimiento', 14, 'change_uso_conocimiento'),
(42, 'Can delete Uso del conocimiento', 14, 'delete_uso_conocimiento'),
(43, 'Can add migration history', 15, 'add_migrationhistory'),
(44, 'Can change migration history', 15, 'change_migrationhistory'),
(45, 'Can delete migration history', 15, 'delete_migrationhistory'),
(49, 'Can add objetivo especifico', 17, 'add_objetivoespecifico'),
(50, 'Can change objetivo especifico', 17, 'change_objetivoespecifico'),
(51, 'Can delete objetivo especifico', 17, 'delete_objetivoespecifico'),
(52, 'Can add practica especifica', 18, 'add_practicaespecifica'),
(53, 'Can change practica especifica', 18, 'change_practicaespecifica'),
(54, 'Can delete practica especifica', 18, 'delete_practicaespecifica'),
(55, 'Can add pregunta', 19, 'add_pregunta'),
(56, 'Can change pregunta', 19, 'change_pregunta'),
(57, 'Can delete pregunta', 19, 'delete_pregunta'),
(58, 'Can add area proceso', 20, 'add_areaproceso'),
(59, 'Can change area proceso', 20, 'change_areaproceso'),
(60, 'Can delete area proceso', 20, 'delete_areaproceso'),
(61, 'Can add cuestionario', 21, 'add_cuestionario'),
(62, 'Can change cuestionario', 21, 'change_cuestionario'),
(63, 'Can delete cuestionario', 21, 'delete_cuestionario'),
(64, 'Can add respuesta', 22, 'add_respuesta'),
(65, 'Can change respuesta', 22, 'change_respuesta'),
(66, 'Can delete respuesta', 22, 'delete_respuesta'),
(67, 'Can add userena registration', 24, 'add_userenasignup'),
(68, 'Can change userena registration', 24, 'change_userenasignup'),
(69, 'Can delete userena registration', 24, 'delete_userenasignup'),
(70, 'Can add source', 25, 'add_source'),
(71, 'Can change source', 25, 'change_source'),
(72, 'Can delete source', 25, 'delete_source'),
(73, 'Can add thumbnail', 26, 'add_thumbnail'),
(74, 'Can change thumbnail', 26, 'change_thumbnail'),
(75, 'Can delete thumbnail', 26, 'delete_thumbnail'),
(76, 'Can add user object permission', 27, 'add_userobjectpermission'),
(77, 'Can change user object permission', 27, 'change_userobjectpermission'),
(78, 'Can delete user object permission', 27, 'delete_userobjectpermission'),
(79, 'Can add group object permission', 28, 'add_groupobjectpermission'),
(80, 'Can change group object permission', 28, 'change_groupobjectpermission'),
(81, 'Can delete group object permission', 28, 'delete_groupobjectpermission'),
(82, 'Can add my profile', 29, 'add_myprofile'),
(83, 'Can change my profile', 29, 'change_myprofile'),
(84, 'Can delete my profile', 29, 'delete_myprofile'),
(85, 'Can view profile', 29, 'view_profile'),
(86, 'Can change profile', 29, 'change_profile'),
(87, 'Can delete profile', 29, 'delete_profile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(-1, '', '2014-07-12 11:15:08', 0, 'AnonymousUser', '', '', '', 0, 1, '2014-07-12 11:15:08'),
(1, 'pbkdf2_sha256$12000$pjvqFA70BWEN$URKbBN7k8oXk9CVNx+PyK5A5hDkil26J13v1TutjJmY=', '2015-05-08 00:11:42', 1, 'edgarfur', '', '', 'edgarfur@gmail.com', 1, 1, '2014-04-21 18:20:10'),
(10, 'pbkdf2_sha256$12000$DgXF7zMb32JO$igf9YFJXXEJfTmNNICMMZISKa6U8+D/BhX3g23sgBM8=', '2014-07-17 08:02:23', 0, 'edgar22', '', '', 'h1karo1@hotmail.com', 0, 1, '2014-07-17 08:02:02'),
(11, 'pbkdf2_sha256$12000$h1t5D9OZR23v$he1fDhOHCTBU8ukaJcUYJvdYIHWtmW9+GeEDKsY2v2I=', '2014-08-14 21:21:13', 0, 'lupiggio', '', '', 'lupiggioud@hotmail.es', 0, 1, '2014-07-17 08:04:54'),
(12, 'pbkdf2_sha256$12000$M1HY3ZQD6mRP$wnk5y2iC5oVoRLC2wrqDKhTtt2bK4jxTy5HQGGgzUJg=', '2014-07-17 08:49:50', 0, 'Heltton', '', '', 'kingconker_22@hotmail.com', 0, 1, '2014-07-17 08:48:30'),
(13, 'pbkdf2_sha256$12000$VAOwawpqn1jk$MU3qH0njDu62XFpQTmUJMmy0uYea8zeFvgGkA8rcaxs=', '2014-07-19 18:43:08', 0, 'mamunoz', '', '', 'mirna.munozm@gmail.com', 0, 1, '2014-07-19 18:40:22'),
(16, 'pbkdf2_sha256$12000$is6kigHWimik$AlJdoldxl0vQA2E4xc4MRuLD+VHjUUk0pFPCDBkUGqA=', '2014-08-25 15:52:04', 0, 'Oskr', '', '', 'oscar_lvg@hotmail.com', 0, 1, '2014-08-15 14:14:45'),
(21, 'pbkdf2_sha256$12000$BeNeXstXSaOz$SmfUCGJN9xo3Tj+0kKAJZt8K+NNZugBT6hTHhqgNysY=', '2015-05-08 00:11:56', 0, 'claudia90', '', '', 'klaufres@gmail.com', 0, 1, '2014-08-20 02:27:23'),
(22, 'pbkdf2_sha256$12000$3VtCtboNJbhN$g7rZ9Em358u02fu2pVS/eCfgJ/hKOJGLM1U+8CaN4/c=', '2015-05-08 22:44:48', 1, 'claudia', '', '', 'claudia.valtierra@cimat.mx', 1, 1, '2014-08-21 01:02:10'),
(23, 'pbkdf2_sha256$12000$0cUpuuWtWprJ$EEjJVRolnR8X48E/DcPZ/jRGqooFuTFYn6i6x8yy6x0=', '2014-08-22 02:11:06', 0, 'Carlos.cabral27', '', '', 'carlos.cabrald@gmail.com', 0, 1, '2014-08-22 01:57:36'),
(24, 'pbkdf2_sha256$12000$jyyrkhhoqPEp$5im7T89SdbUyijA5fkOfiv+cZiuUDZICoYx7YYIRuYU=', '2014-08-22 18:44:37', 0, 'iscjagg', '', '', 'julio@zacsoft.com', 0, 1, '2014-08-22 18:32:59'),
(25, 'pbkdf2_sha256$12000$sd6eaPnlA8Mw$cxBhehNRnlrZutwkUJ/43DnoriCtC0ykoxBgO8IlT8g=', '2014-08-27 19:53:40', 0, 'ulises', '', '', 'bule_ulises@yahoo.com.mx', 0, 1, '2014-08-25 16:03:03'),
(26, 'pbkdf2_sha256$12000$W7mhhkYXvff6$aJra5TwJLSGM9kdMHyW0CSXlCK+82aFyuiBpbL4RfFs=', '2014-09-16 14:27:33', 0, 'rloya', '', '', 'rloya@dotnet.com.mx', 0, 1, '2014-09-16 14:27:13'),
(27, 'pbkdf2_sha256$12000$pkMs7gqRvFs8$Bu8i7qItXdWxp15hkpcC6cEmLJxT9kJk/aQKHEeJ+0A=', '2015-05-08 18:19:47', 0, 'mirnamunoz', '', '', 'mariadnita@hotmail.com', 0, 1, '2015-05-08 02:59:07'),
(28, 'pbkdf2_sha256$12000$jUMggqGhapvp$//+Cyl71flPMTdHCIQ/bn4nxWjKivhOocBWZC2PtVB4=', '2015-05-08 03:00:42', 0, 'usuario', '', '', 'usuario@gmail.com', 0, 0, '2015-05-08 03:00:42'),
(29, 'pbkdf2_sha256$12000$jnbld45dEdxw$zA9ZZh+f6OkVMxcapVipI8HBqcjPRsmzOjJGLlL/irg=', '2015-05-08 16:26:09', 0, 'juanjo23', '', '', 'juan.miramontes@cimat.mx', 0, 1, '2015-05-08 04:39:40'),
(30, 'pbkdf2_sha256$12000$EFTcNsk1a4ye$OjjSLO8DHUoaTipiT//XRnBSAQq6eemPWIi5Hie2O7I=', '2015-05-08 05:01:40', 0, 'Test', '', '', 'test@mail.com', 0, 0, '2015-05-08 05:01:40'),
(31, 'pbkdf2_sha256$12000$gAofwYLImVzB$vbjVP+cu+1z5o7sKX4ccBHsQ0InIIe+OZAsNNlI8Cv0=', '2015-05-08 17:33:44', 0, 'Pyme2', 'Brisia', 'Corona', 'brisiacorona@gmail.com', 0, 1, '2015-05-08 17:33:25'),
(32, 'pbkdf2_sha256$12000$DdTz0CVNWmnx$qimTn1JBK0cObKIil3WZ6SXMlyUZbGJFSy3BBtvFWsU=', '2015-05-08 18:08:25', 0, 'Pyme1', 'Luis', 'López', 'luis.lopez@cimat.mx', 0, 1, '2015-05-08 17:33:37'),
(33, 'pbkdf2_sha256$12000$mrVDynAWRO9W$lMrXjFEesP2kBQHIrt1fPkkPPfUmxQI9b38CwMJiiHI=', '2015-05-08 17:37:01', 0, 'oyufuentes', 'Oyuki', 'Fuentes ', 'oyu.fuentes@gmail.com', 0, 1, '2015-05-08 17:36:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=973 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-04-21 18:35:54', 1, 3, '1', 'edgarfur', 2, 'Modifica username.'),
(2, '2014-04-21 19:00:39', 1, 3, '2', 'claudia', 1, ''),
(3, '2014-04-21 19:01:10', 1, 3, '2', 'claudia', 2, 'Modifica first_name,last_name,email,is_staff y is_superuser.'),
(208, '2014-07-09 21:03:30', 1, 20, '5', 'Prueba', 1, ''),
(209, '2014-07-09 21:04:35', 1, 20, '5', 'Prueba', 3, ''),
(694, '2014-07-17 08:00:58', 1, 6, '1', 'http://patrones.edgaruribe.mx/', 2, 'Modifica domain y name.'),
(695, '2014-07-17 08:01:34', 1, 3, '9', 'edgar22', 3, ''),
(696, '2014-07-17 08:01:34', 1, 3, '4', 'mama', 3, ''),
(697, '2014-07-17 08:01:34', 1, 3, '3', 'pedro', 3, ''),
(698, '2014-07-17 08:01:34', 1, 3, '5', 'tortuga', 3, ''),
(699, '2014-07-17 08:03:04', 1, 6, '1', 'patrones.edgaruribe.mx/', 2, 'Modifica domain y name.'),
(700, '2014-07-17 08:03:47', 1, 6, '1', 'patrones.edgaruribe.mx', 2, 'Modifica domain y name.'),
(701, '2014-07-17 08:44:28', 1, 3, '6', 'dfsdf', 3, ''),
(702, '2014-07-17 08:44:37', 1, 3, '7', '1', 3, ''),
(705, '2014-07-25 01:15:36', 1, 21, '20', 'Cuestionario object', 2, 'Modifica terminado.'),
(706, '2014-07-25 01:20:25', 1, 21, '20', 'claudia (2014-07-25 01:17:20+00:00)', 3, ''),
(707, '2014-07-25 01:20:25', 1, 21, '19', 'claudia (2014-07-24 16:33:34+00:00)', 3, ''),
(708, '2014-07-25 01:21:28', 1, 21, '24', 'claudia (2014-07-25 01:21:08+00:00)', 3, ''),
(709, '2014-07-25 01:21:28', 1, 21, '23', 'claudia (2014-07-25 01:20:54+00:00)', 3, ''),
(710, '2014-07-25 14:43:51', 1, 21, '38', 'edgarfur (2014-07-25 14:43:02+00:00)', 3, ''),
(711, '2014-07-25 14:43:51', 1, 21, '37', 'edgarfur (2014-07-25 14:42:56+00:00)', 3, ''),
(712, '2014-07-25 14:43:51', 1, 21, '36', 'edgarfur (2014-07-25 14:41:20+00:00)', 3, ''),
(713, '2014-07-25 14:43:51', 1, 21, '35', 'edgarfur (2014-07-25 14:39:39+00:00)', 3, ''),
(714, '2014-07-25 14:43:51', 1, 21, '34', 'edgarfur (2014-07-25 14:17:25+00:00)', 3, ''),
(715, '2014-07-25 14:43:51', 1, 21, '33', 'edgarfur (2014-07-25 14:12:36+00:00)', 3, ''),
(716, '2014-07-25 14:43:51', 1, 21, '32', 'edgarfur (2014-07-25 14:10:33+00:00)', 3, ''),
(717, '2014-07-25 14:43:51', 1, 21, '31', 'edgarfur (2014-07-25 14:10:16+00:00)', 3, ''),
(718, '2014-07-25 14:43:51', 1, 21, '30', 'edgarfur (2014-07-25 14:09:43+00:00)', 3, ''),
(719, '2014-07-25 14:43:51', 1, 21, '29', 'edgarfur (2014-07-25 01:32:58+00:00)', 3, ''),
(720, '2014-07-25 14:43:51', 1, 21, '28', 'edgarfur (2014-07-25 01:32:56+00:00)', 3, ''),
(721, '2014-07-25 14:43:51', 1, 21, '27', 'edgarfur (2014-07-25 01:32:55+00:00)', 3, ''),
(722, '2014-07-25 14:43:51', 1, 21, '26', 'edgarfur (2014-07-25 01:31:30+00:00)', 3, ''),
(723, '2014-07-25 14:43:51', 1, 21, '25', 'edgarfur (2014-07-25 01:24:02+00:00)', 3, ''),
(724, '2014-07-25 14:43:51', 1, 21, '22', 'edgarfur (2014-07-24 19:24:28+00:00)', 3, ''),
(725, '2014-07-25 14:43:51', 1, 21, '21', 'edgarfur (2014-07-24 19:24:25+00:00)', 3, ''),
(726, '2014-07-25 14:43:51', 1, 21, '15', 'edgarfur (2014-07-24 19:24:16+00:00)', 3, ''),
(727, '2014-07-25 14:43:51', 1, 21, '14', 'edgarfur (2014-07-08 17:48:48+00:00)', 3, ''),
(728, '2014-07-25 14:43:51', 1, 21, '13', 'edgarfur (2014-07-08 17:48:34+00:00)', 3, ''),
(729, '2014-07-25 14:43:51', 1, 21, '12', 'edgarfur (2014-07-08 17:32:24+00:00)', 3, ''),
(730, '2014-07-25 14:43:51', 1, 21, '11', 'edgarfur (2014-07-08 17:29:06+00:00)', 3, ''),
(731, '2014-07-25 14:43:51', 1, 21, '10', 'edgarfur (2014-07-08 17:28:46+00:00)', 3, ''),
(732, '2014-07-25 14:43:51', 1, 21, '9', 'edgarfur (2014-07-08 17:28:04+00:00)', 3, ''),
(733, '2014-07-25 14:43:51', 1, 21, '8', 'edgarfur (2014-07-08 17:27:50+00:00)', 3, ''),
(734, '2014-07-25 14:43:51', 1, 21, '7', 'edgarfur (2014-07-08 17:27:40+00:00)', 3, ''),
(735, '2014-07-25 14:43:51', 1, 21, '5', 'edgarfur (2014-07-08 15:06:05+00:00)', 3, ''),
(736, '2014-07-25 14:43:51', 1, 21, '4', 'edgarfur (2014-06-19 17:45:03+00:00)', 3, ''),
(737, '2014-07-25 14:43:51', 1, 21, '3', 'edgarfur (2014-06-19 17:43:14+00:00)', 3, ''),
(738, '2014-07-25 14:43:51', 1, 21, '2', 'edgarfur (2014-06-19 17:43:10+00:00)', 3, ''),
(739, '2014-07-25 14:43:51', 1, 21, '1', 'edgarfur (2014-06-19 17:27:57+00:00)', 3, ''),
(740, '2014-07-25 16:00:23', 1, 21, '41', 'edgarfur (2014-07-25 16:00:03+00:00)', 3, ''),
(741, '2014-07-25 16:00:23', 1, 21, '40', 'edgarfur (2014-07-25 15:59:43+00:00)', 3, ''),
(742, '2014-07-27 03:36:58', 1, 21, '42', 'edgarfur (2014-07-27 03:36:58.552254+00:00)', 2, 'Modifica terminado.'),
(902, '2014-08-12 02:40:17', 1, 29, '13', 'Profile of mamunoz', 3, ''),
(903, '2014-08-12 02:40:17', 1, 29, '12', 'Profile of claudia', 3, ''),
(904, '2014-08-12 02:40:17', 1, 29, '11', 'Profile of Heltton', 3, ''),
(905, '2014-08-12 02:40:17', 1, 29, '10', 'Profile of lupiggio', 3, ''),
(906, '2014-08-12 02:40:17', 1, 29, '9', 'Profile of edgar22', 3, ''),
(907, '2014-08-12 02:40:17', 1, 29, '7', 'Profile of claudia90', 3, ''),
(908, '2014-08-12 02:40:17', 1, 29, '5', 'Profile of edgarfur', 3, ''),
(909, '2014-08-12 02:49:25', 1, 29, '1', 'Profile of claudia', 1, ''),
(910, '2014-08-12 02:49:31', 1, 29, '2', 'Profile of claudia90', 1, ''),
(911, '2014-08-12 02:49:40', 1, 29, '3', 'Profile of edgar22', 1, ''),
(912, '2014-08-12 02:49:51', 1, 29, '4', 'Profile of edgarfur', 1, ''),
(913, '2014-08-12 02:49:57', 1, 29, '5', 'Profile of Heltton', 1, ''),
(914, '2014-08-12 02:50:01', 1, 29, '6', 'Profile of lupiggio', 1, ''),
(915, '2014-08-12 02:50:05', 1, 29, '7', 'Profile of mamunoz', 1, ''),
(919, '2014-08-12 15:16:42', 1, 3, '14', 'clau90', 2, 'Modifica is_active.'),
(964, '2014-08-20 02:23:50', 1, 3, '20', 'claudia', 1, ''),
(965, '2014-08-20 02:24:15', 1, 3, '20', 'claudia', 2, 'Modifica is_staff y is_superuser.'),
(967, '2014-08-21 18:03:08', 1, 3, '22', 'claudia', 2, 'Modifica is_staff y is_superuser.'),
(968, '2014-10-16 17:07:18', 22, 13, '14', 'Gestión de Proyecto', 2, 'Modifica solucion.'),
(969, '2014-10-16 17:21:54', 22, 13, '11', 'Desarrollo y Mantenimiento de Software', 2, 'Modifica modelo.'),
(970, '2014-10-16 17:32:52', 22, 13, '9', 'Gestión de la  Configuración', 2, 'Modifica resultado_contexto.'),
(971, '2014-10-16 17:34:45', 22, 13, '11', 'Gestión de la Configuración del Software', 2, 'Modifica solucion y modelo.'),
(972, '2014-10-16 17:35:19', 22, 13, '18', 'Desarrollo y Mantenimiento de Software', 2, 'No ha modificado ningún campo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'categoria', 'sistema', 'categoria'),
(9, 'patron', 'sistema', 'patron'),
(10, 'problema', 'sistema', 'problema'),
(11, 'fuerza', 'sistema', 'fuerza'),
(12, 'Modelo o Estandar', 'sistema', 'modelo'),
(13, 'solucion', 'sistema', 'solucion'),
(14, 'Uso del conocimiento', 'sistema', 'uso_conocimiento'),
(15, 'migration history', 'south', 'migrationhistory'),
(17, 'objetivo especifico', 'sistema', 'objetivoespecifico'),
(18, 'practica especifica', 'sistema', 'practicaespecifica'),
(19, 'pregunta', 'sistema', 'pregunta'),
(20, 'area proceso', 'sistema', 'areaproceso'),
(21, 'cuestionario', 'sistema', 'cuestionario'),
(22, 'respuesta', 'sistema', 'respuesta'),
(23, 'pregunta-patron relationship', 'sistema', 'pregunta_patrones'),
(24, 'userena registration', 'userena', 'userenasignup'),
(25, 'source', 'easy_thumbnails', 'source'),
(26, 'thumbnail', 'easy_thumbnails', 'thumbnail'),
(27, 'user object permission', 'guardian', 'userobjectpermission'),
(28, 'group object permission', 'guardian', 'groupobjectpermission'),
(29, 'my profile', 'accounts', 'myprofile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0jwgybsb673j6gzttvni10ch99kbo7w4', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-27 19:47:50'),
('16vk2l30sd5lto4cknwatsw8p1i1wj43', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-11 00:47:58'),
('1e32hnpr8ogeg00bn8j718ngmogffstb', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:13:19'),
('29pi5k7lcppszs3tq5cbyddjwk2g0amu', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:18:54'),
('2i1291hyy9be1n7k9ilri5wf9ecdngm6', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-09-03 02:02:24'),
('3bnqb4f7vvg9coxhn0lg56dfexij0kdw', 'N2M0YzkzNzAxMjE1OGJlNzk4YzFmZjExMmRiNzYxNWM3ZjhjNTFkZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjF9', '2014-09-05 02:08:14'),
('3eaf69mhshq1f7ve4l1oippp466c3hcc', 'MmRkYWI1ODEyOTI4OWMxZjM4OTNiZWFlNmU2ZDVkM2ExYmU3YmEzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-10-30 16:03:57'),
('3vhktmwhu4o49t5czmx1egcaxrzz867u', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:06:05'),
('43fwhlybhxgnmiiyuue8ptt9ovmlpz6l', 'YTI2NWQ4MzVhNzcwZjk5MmQ1NmNmN2Q2OTljY2E2MjY4NmZmOWQ4MDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-09-23 02:29:43'),
('452plrcw5an7cayewjis8a4ggpq0tnqv', 'YTI2NWQ4MzVhNzcwZjk5MmQ1NmNmN2Q2OTljY2E2MjY4NmZmOWQ4MDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-09-16 19:55:28'),
('4oaan6ypysmropmttvmtc3su53g0u73b', 'MTY3NjdmYmViYWFmNWIxZTkxYTI3NmY0NDgyOTVhMzMzNjU0NjY5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-05-05 19:03:59'),
('4tk32zqnlwzxxwq9zb8kpxndnmlv937t', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-09-03 02:07:43'),
('5f5tac7sd5nkr1froeqpfqqs9kdq66n2', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-20 16:30:03'),
('5jauc4npxfrkq296j2rmrm1pd6mgeobj', 'N2M0YzkzNzAxMjE1OGJlNzk4YzFmZjExMmRiNzYxNWM3ZjhjNTFkZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjF9', '2014-09-03 03:33:51'),
('5jnqdsq3ocgthikpx0hg20qwwcu8n9h7', 'ODRiOTM3Yjg4ZDIwOWMwZmZjYzUxMjJlM2NiY2ZjNDc5MWUxYmY0ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mjd9', '2015-05-22 03:53:27'),
('6urkn86sbsy7dpfn78jhwiap3g8fc1pp', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2015-05-22 19:25:51'),
('7jgzxc6np644d7vy5bwptm3tzui8yzmm', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-26 15:13:42'),
('7krpat1m9g0waxa5ypntp0jo6ofvdyma', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:18:57'),
('9bfm1xu4z3u4b8mu83364kg7xh7jnfb2', 'MThjMTExZGI0OTZiMzc1NDM5ZTNlODMzYmEwNWRkNWFmZmUxMWE0ODp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjV9', '2014-09-10 19:53:40'),
('9e52m2bh3ka0m0gkpe11m4z0y4k4c6l5', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:09:05'),
('a7ryi26u98vp47f7uu0vooe9c825uech', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:12:40'),
('aafzi4j9di3boeacqhz672j0bbycambd', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2015-05-22 19:11:06'),
('as56u6szwtfe97ycsa6bphrfludkpnuu', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-28 03:35:50'),
('bno10b2xbzp42jt9oay2pkxt0dn80abl', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-07 19:24:29'),
('bsfovx9rv5jhf905352wh0u4owwngemw', 'YTI2NWQ4MzVhNzcwZjk5MmQ1NmNmN2Q2OTljY2E2MjY4NmZmOWQ4MDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-10-27 16:33:28'),
('cnjmfi8kcg22exns79yuzgzu3y7xgzwv', 'OTE0OTFkNjdjMDNiZTg0NjA3MDcxMzE3MTczNTVlNDE4YjRmZGUzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjMzfQ==', '2015-05-22 17:37:01'),
('cz3pj98ntsa9r7omcfe9n2wl2vpl2ixg', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-28 16:18:15'),
('dbbck2700aeutfj6lr514fl4qvivnflb', 'YWJjOWM5YjI1N2U4YzljMzlkZDQyMzAxYWFmYjQyY2M0NmM1ODMwNjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mjl9', '2015-05-22 16:26:09'),
('dxduhxsv2sub4lgc0h9gok85zt8d0o53', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-15 15:04:46'),
('ecnl73bnbpzwo475kcmnskrilid35lcc', 'ZmY4YmYwMWM3ODVkNGI2ZGU2ZTEwY2RjMDJmYTZmYjM1ZDEyMzU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjMyfQ==', '2015-05-22 17:34:15'),
('efbxoku89y3r2ptsuljj6wrrws48bj5x', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-09-01 02:02:23'),
('fjflgrrigvqtg3wt7ohpm7x19fblyar2', 'MTY3NjdmYmViYWFmNWIxZTkxYTI3NmY0NDgyOTVhMzMzNjU0NjY5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-13 01:24:43'),
('flvymp57vm5e0g1zsnjd591htw2qlx1h', 'N2UxN2JkZTQzNzQ1YTViNjk5ZDY4MTNlZTZjZDBlNjgyODljZmZiOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjExfQ==', '2014-07-31 08:05:29'),
('fwxn8dmogzcxyh4f5r9r5mri8cxrkz0e', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-11 13:26:33'),
('g9e690uzze5ipg48r1kf6eaqwpoblx9p', 'NzM0YzExNzdjMzE2ZDlhY2YyODZjNWFjNDI5YmU3M2YwZDgyZGYzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjIzfQ==', '2014-09-05 01:58:46'),
('gb0e229sgjsann7ku8e59hm07vbxwn3w', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2015-05-22 03:04:42'),
('gbbayjobf53odz8cun233hkiwdtzt545', 'OTZkMGU0ODk0NzM3Y2MyMzllNzliMDA0OGRiNDA3NjM2MzAyMzhlNDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MTZ9', '2014-09-08 15:52:04'),
('gea92zetr6675a9eg6jxe5fnr0vtjn56', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-11 19:46:08'),
('gnixn6ki3xhmk8g806v54qckb5nvbwyx', 'ODg1MzkxMjU4YTdlYTg0ODMxN2YyNzEwYjU5YmUxODFjMmVmY2IwZDp7Il9zZXNzaW9uX2V4cGlyeSI6MjU5MjAwMCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-10-09 20:57:00'),
('hg8creqwy2a1q4dxsayp5teoble4jaq1', 'MjI1ZDRmZWM4N2Q4NTEwYWE2MzU4NDM4YjU1NGJhNGI1MGEzOTc1Yzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjI0fQ==', '2014-09-05 18:44:37'),
('hl8edde5wt75umm8iuev2v80khikafog', 'MTY3NjdmYmViYWFmNWIxZTkxYTI3NmY0NDgyOTVhMzMzNjU0NjY5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-07-28 09:05:08'),
('i6su9fgiit9orf6g73srosffy2kovzu7', 'N2M0YzkzNzAxMjE1OGJlNzk4YzFmZjExMmRiNzYxNWM3ZjhjNTFkZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjF9', '2014-09-05 02:12:33'),
('i8ulf5c892dztpxoqwd8d2hllzkjmp8f', 'NDA1MjgxODYyNWEzNDUzMjgzZGI0MDQyZmU0NTJhNDdhZDdmMWNkZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-06-22 19:33:06'),
('iepyu0hcynb7wnn8v06o1dehaocdrbf7', 'NDA1MjgxODYyNWEzNDUzMjgzZGI0MDQyZmU0NTJhNDdhZDdmMWNkZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-05-05 18:35:42'),
('ij1wm9gry7ky15eqd7nfidyzcr7pecqz', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-09-04 01:07:19'),
('jgf1lq4j0i9pf3kh9qreorvuof3mig2g', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:10:12'),
('jjgrtivy3k73ywdrul1msgo81i6supl1', 'MTY3NjdmYmViYWFmNWIxZTkxYTI3NmY0NDgyOTVhMzMzNjU0NjY5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-05-21 16:10:08'),
('jmi0j32eo1ovralmsn61kputa77ufani', 'NDA1MjgxODYyNWEzNDUzMjgzZGI0MDQyZmU0NTJhNDdhZDdmMWNkZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-09-04 18:02:55'),
('kcacygaiaplgw5skaupbka7xxhdgo864', 'MmRkYWI1ODEyOTI4OWMxZjM4OTNiZWFlNmU2ZDVkM2ExYmU3YmEzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2015-05-22 22:44:48'),
('lhflzee4hvrbtjxmlhyz0cd7kdfprw1x', 'NTgzMmYxZTNhMjdhYjFjNGMwYzdmYTdlOWU4OWExODgwYTc2MzA3YTp7Il9zZXNzaW9uX2V4cGlyeSI6MjU5MjAwMCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MTR9', '2014-09-11 15:17:07'),
('log544lbe8y31sbbizsdb0edga8aperu', 'MTY3NjdmYmViYWFmNWIxZTkxYTI3NmY0NDgyOTVhMzMzNjU0NjY5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-06-24 12:58:23'),
('lp0w4y3a1hxjmbmhrlrg6dw2f5c0s15d', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2015-05-22 18:04:17'),
('m77jbopg7rczy5q254m8s3v33b6vpb2s', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:03:16'),
('mgeniujvjhgiapzl9hvx343agekuit5p', 'MTI5OThlZWQ3Njc2MjI2NTU0NDljMmQxMzIzNWQxYjlkNTY5NzVjNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjEyfQ==', '2014-07-31 08:49:50'),
('msuh12wm3uw2nzmz8gbrm5pboc2z4q4c', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-22 16:47:09'),
('n1oaz6o0lfaf7wsgeg7k9nywcukepf9z', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:19:13'),
('nfp5ovt9xv18mf3xibxqxwq85etvp96g', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:05:40'),
('o6npnoj7qvhn47ron1mhjos2hemmjrrx', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-02 12:13:34'),
('o8ymzqi4hcgc22iydc79dy22frymxgmy', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:05:35'),
('ov7iapaej7ao8dfvdcqzt6te6j8g9mgq', 'Y2Q5ZGJkMTY4M2VlMjljYjMzNmM4ODE0MzA5YTYzNWUwNGJjMTQ1ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2015-05-22 00:11:42'),
('ovn032wm8zizhu9oqmyeo9lj32ihaal5', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-02 19:20:15'),
('qicevqx51dqxkcf8cegltfw0zpzksqup', 'Y2JmZDU0ZDdiZGEzMTk2ZjBiZjk2NWM5NWFhZGMwODg1NzM3MTNhYjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-08-15 15:29:14'),
('qpchisdxfx0skqavhtrusnyralyj40ph', 'N2M0YzkzNzAxMjE1OGJlNzk4YzFmZjExMmRiNzYxNWM3ZjhjNTFkZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjF9', '2014-09-10 16:48:53'),
('qu0orfqomjeay818mw8o6dcx598ji5ho', 'YWJjOWM5YjI1N2U4YzljMzlkZDQyMzAxYWFmYjQyY2M0NmM1ODMwNjp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mjl9', '2015-05-22 05:10:43'),
('rf5g75h6tze69g42yx6zj2mburbvkj9b', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:11:40'),
('rw4i02oycgys8hw4igb26zxjmje92n1f', 'N2M0YzkzNzAxMjE1OGJlNzk4YzFmZjExMmRiNzYxNWM3ZjhjNTFkZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjF9', '2014-09-09 17:19:52'),
('sm4jhauff46v95r7ustysuihdv8pmefa', 'ZWY1YjIyMjFkMjAwMzYxOTFiOTg5OTdmMDViMjU5ZTE1NGNkY2Q1MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjI1fQ==', '2014-09-08 16:22:22'),
('svuq4uxrhk8rw449fr847xsy3jxmpmpm', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2015-05-22 21:30:12'),
('uegr2itlcvsolnrhvbhl795c3jtg3i69', 'YTI2NWQ4MzVhNzcwZjk5MmQ1NmNmN2Q2OTljY2E2MjY4NmZmOWQ4MDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2015-05-22 00:14:49'),
('v3m5e5s55ph78yk85rlf1zygu3ilo0al', 'Y2Q5ZGJkMTY4M2VlMjljYjMzNmM4ODE0MzA5YTYzNWUwNGJjMTQ1ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-08-01 08:09:31'),
('w4zf5vod82z5g00q4s2yu5qs5mgbylwo', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:03:23'),
('w5lwpr47gus1nogskszco5gyho0ahlzx', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-28 03:29:17'),
('wr04yklgqlc7y2qds0zkveplrkakmz8j', 'NjJjNzllMTA5OWRmZTBjZTkxY2VkYWQ0YTQyMTNiYmQ5Y2E4NzA5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJlbmEuYmFja2VuZHMuVXNlcmVuYUF1dGhlbnRpY2F0aW9uQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjI2fQ==', '2014-09-30 14:27:33'),
('xcz2hggydnfvm49v1cqjhhpxuh9w2q1v', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-26 15:14:45'),
('xfqqmv3s7aoprefixssa5djripg7rlq8', 'MWYxOTFjN2MwMWE1NmI0ZDdlZGI1ZWMzYTg4OGQ4ZmJhNTZiOWQ5Nzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjN9', '2014-09-05 02:11:06'),
('xh01y3izrxgbx1y8ogagcq54k1n396a9', 'YTI2NWQ4MzVhNzcwZjk5MmQ1NmNmN2Q2OTljY2E2MjY4NmZmOWQ4MDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2015-05-22 19:53:03'),
('xk444lsgo97ul7unt1fjncb37hlfkvz2', 'YTI2NWQ4MzVhNzcwZjk5MmQ1NmNmN2Q2OTljY2E2MjY4NmZmOWQ4MDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-09-19 15:27:40'),
('xofl0hb6m43q2wo1f7i7czx7p4ms256m', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:11:04'),
('xqro236w9zhp44wetnrsi1ddh1gbt1js', 'NDA1MjgxODYyNWEzNDUzMjgzZGI0MDQyZmU0NTJhNDdhZDdmMWNkZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-07-09 17:57:20'),
('y1j2h1fov6oz3v3qrc6ie7et39ra5aj1', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2014-08-15 03:10:17'),
('y5nzwcjnj2xjvb1rfxkj54f8iwz0greg', 'ZmU4NThhN2JlN2ExODg1NjA3MjU1NjZkZTE5OWMxZDFhMjNiNzNiMTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MTF9', '2014-08-28 21:21:13'),
('z6hhq461rxs91v1o72jzdhv1spb29w55', 'MTY3NjdmYmViYWFmNWIxZTkxYTI3NmY0NDgyOTVhMzMzNjU0NjY5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-06-19 13:55:08'),
('zhpqbz3tttcu1v9l7dp425p4nyxeihpc', 'MWYxOTFjN2MwMWE1NmI0ZDdlZGI1ZWMzYTg4OGQ4ZmJhNTZiOWQ5Nzp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjN9', '2014-09-05 02:00:40'),
('zitcizrxjinjh23cmeahy4zey5e9attg', 'N2M0YzkzNzAxMjE1OGJlNzk4YzFmZjExMmRiNzYxNWM3ZjhjNTFkZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjF9', '2014-09-07 23:52:11'),
('zma14y1rugi99zjzm6towg1l3z1r00rg', 'MmRkYWI1ODEyOTI4OWMxZjM4OTNiZWFlNmU2ZDVkM2ExYmU3YmEzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MjJ9', '2014-09-05 02:03:01'),
('zsd3mrcyhk3vu1y1hpoa3rd22gmszr5v', 'MGNhOWNmMTg0YWQ2YjQxNmJmZGY1OTU4ZjIwMjI5ZDQxODU4Yjk0NTp7fQ==', '2015-05-22 04:51:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'patrones.edgaruribe.mx', 'patrones.edgaruribe.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `easy_thumbnails_source`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `storage_hash` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `easy_thumbnails_source`
--

INSERT INTO `easy_thumbnails_source` (`id`, `name`, `modified`, `storage_hash`) VALUES
(1, 'mugshots/7af4518deb.jpg', '2014-07-24 17:28:39', 'f9bde26a1556cd667f742bd34ec7c55e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `easy_thumbnails_thumbnail`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardian_groupobjectpermission`
--

CREATE TABLE IF NOT EXISTS `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guardian_userobjectpermission`
--

CREATE TABLE IF NOT EXISTS `guardian_userobjectpermission` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `guardian_userobjectpermission`
--

INSERT INTO `guardian_userobjectpermission` (`id`, `permission_id`, `content_type_id`, `user_id`, `object_pk`) VALUES
(39, 8, 3, 10, '10'),
(40, 9, 3, 10, '10'),
(41, 85, 29, 11, '10'),
(42, 86, 29, 11, '10'),
(43, 87, 29, 11, '10'),
(66, 85, 29, 16, '10'),
(67, 86, 29, 16, '10'),
(68, 87, 29, 16, '10'),
(44, 8, 3, 11, '11'),
(45, 9, 3, 11, '11'),
(46, 85, 29, 12, '11'),
(47, 86, 29, 12, '11'),
(48, 87, 29, 12, '11'),
(49, 8, 3, 12, '12'),
(50, 9, 3, 12, '12'),
(54, 8, 3, 13, '13'),
(55, 9, 3, 13, '13'),
(51, 85, 29, 13, '13'),
(52, 86, 29, 13, '13'),
(53, 87, 29, 13, '13'),
(86, 85, 29, 21, '14'),
(87, 86, 29, 21, '14'),
(88, 87, 29, 21, '14'),
(69, 8, 3, 16, '16'),
(70, 9, 3, 16, '16'),
(91, 85, 29, 22, '16'),
(92, 86, 29, 22, '16'),
(93, 87, 29, 22, '16'),
(96, 85, 29, 23, '17'),
(97, 86, 29, 23, '17'),
(98, 87, 29, 23, '17'),
(101, 85, 29, 24, '18'),
(102, 86, 29, 24, '18'),
(103, 87, 29, 24, '18'),
(106, 85, 29, 25, '19'),
(107, 86, 29, 25, '19'),
(108, 87, 29, 25, '19'),
(111, 85, 29, 26, '20'),
(112, 86, 29, 26, '20'),
(113, 87, 29, 26, '20'),
(89, 8, 3, 21, '21'),
(90, 9, 3, 21, '21'),
(116, 85, 29, 27, '21'),
(117, 86, 29, 27, '21'),
(118, 87, 29, 27, '21'),
(94, 8, 3, 22, '22'),
(95, 9, 3, 22, '22'),
(121, 85, 29, 28, '22'),
(122, 86, 29, 28, '22'),
(123, 87, 29, 28, '22'),
(99, 8, 3, 23, '23'),
(100, 9, 3, 23, '23'),
(126, 85, 29, 29, '23'),
(127, 86, 29, 29, '23'),
(128, 87, 29, 29, '23'),
(104, 8, 3, 24, '24'),
(105, 9, 3, 24, '24'),
(131, 85, 29, 30, '24'),
(132, 86, 29, 30, '24'),
(133, 87, 29, 30, '24'),
(109, 8, 3, 25, '25'),
(110, 9, 3, 25, '25'),
(136, 85, 29, 31, '25'),
(137, 86, 29, 31, '25'),
(138, 87, 29, 31, '25'),
(114, 8, 3, 26, '26'),
(115, 9, 3, 26, '26'),
(141, 85, 29, 32, '26'),
(142, 86, 29, 32, '26'),
(143, 87, 29, 32, '26'),
(119, 8, 3, 27, '27'),
(120, 9, 3, 27, '27'),
(146, 85, 29, 33, '27'),
(147, 86, 29, 33, '27'),
(148, 87, 29, 33, '27'),
(124, 8, 3, 28, '28'),
(125, 9, 3, 28, '28'),
(129, 8, 3, 29, '29'),
(130, 9, 3, 29, '29'),
(134, 8, 3, 30, '30'),
(135, 9, 3, 30, '30'),
(139, 8, 3, 31, '31'),
(140, 9, 3, 31, '31'),
(144, 8, 3, 32, '32'),
(145, 9, 3, 32, '32'),
(149, 8, 3, 33, '33'),
(150, 9, 3, 33, '33'),
(36, 85, 29, 10, '9'),
(37, 86, 29, 10, '9'),
(38, 87, 29, 10, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_areaproceso`
--

CREATE TABLE IF NOT EXISTS `sistema_areaproceso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_areaproceso`
--

INSERT INTO `sistema_areaproceso` (`id`, `nombre`) VALUES
(1, 'Planificación de Proyecto (PP)'),
(2, 'Monitorización y Control de Proyecto (PMC)'),
(3, 'Gestión de Configuración (CM)'),
(4, 'Aseguramiento de la Calidad de Producto y de Proceso (PPQA)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_categoria`
--

CREATE TABLE IF NOT EXISTS `sistema_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_categoria`
--

INSERT INTO `sistema_categoria` (`id`, `nombre`) VALUES
(8, 'No tienen procesos definidos'),
(10, 'No se tiene conocimiento en mejora de procesos de software'),
(12, 'Carecen de personal, ya que el número de sus empleados suelen ser pequeños');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_cuestionario`
--

CREATE TABLE IF NOT EXISTS `sistema_cuestionario` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `terminado` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_cuestionario`
--

INSERT INTO `sistema_cuestionario` (`id`, `usuario_id`, `fecha_hora`, `terminado`) VALUES
(16, 11, '2014-07-17 08:05:56', 1),
(17, 12, '2014-07-17 08:50:20', 0),
(18, 13, '2014-07-19 18:45:11', 0),
(39, 1, '2014-07-25 14:50:29', 1),
(42, 1, '2014-08-12 03:05:04', 1),
(46, 1, '2014-08-12 03:29:41', 0),
(50, 11, '2014-08-14 21:24:46', 0),
(51, 16, '2014-08-22 04:23:46', 1),
(58, 21, '2014-08-20 02:57:27', 1),
(59, 22, '2014-08-21 01:03:28', 0),
(60, 23, '2014-08-22 02:40:44', 1),
(61, 16, '2014-08-22 04:41:05', 0),
(62, 24, '2014-08-22 19:03:18', 1),
(63, 25, '2014-08-28 10:35:24', 1),
(64, 25, '2014-08-28 14:44:27', 0),
(65, 21, '2014-09-02 19:40:05', 0),
(66, 26, '2014-09-16 14:28:05', 0),
(67, 27, '2015-05-08 17:02:52', 1),
(68, 29, '2015-05-08 04:50:42', 0),
(69, 31, '2015-05-08 17:54:15', 1),
(70, 32, '2015-05-08 17:56:08', 1),
(71, 33, '2015-05-08 17:58:00', 1),
(72, 32, '2015-05-08 18:09:45', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_modelo`
--

CREATE TABLE IF NOT EXISTS `sistema_modelo` (
  `id` int(11) NOT NULL,
  `nombre` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_modelo`
--

INSERT INTO `sistema_modelo` (`id`, `nombre`) VALUES
(1, 'CMMI-DEV'),
(2, 'MoProSoft'),
(5, 'Scrum'),
(7, 'ISO 15504'),
(10, 'No implemento ningún modelo, estándar o metodología ágil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_objetivoespecifico`
--

CREATE TABLE IF NOT EXISTS `sistema_objetivoespecifico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_objetivoespecifico`
--

INSERT INTO `sistema_objetivoespecifico` (`id`, `nombre`, `area_id`) VALUES
(21, 'SG 1: Establecer Estimaciones', 1),
(22, 'SG 2: Desarrollar un Plan de Proyecto', 1),
(23, 'SG 3 Obtener el compromiso con el plan', 1),
(24, 'SG 1: Monitorizar el Proyecto frente al Plan', 2),
(25, 'SG 2: Gestionar las Acciones Correctivas hasta su cierre', 2),
(26, 'SG 1 Establecer las líneas base', 3),
(27, 'SG 2 Seguir y controlar los cambios', 3),
(28, 'SG 3 Establecer la integridad', 3),
(29, 'SG 1: Evaluar Objetivamente los Procesos y los Productos de Trabajo', 4),
(30, 'SG 2: Proporcionar una Visión Objetiva ', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_patron`
--

CREATE TABLE IF NOT EXISTS `sistema_patron` (
  `id` int(11) NOT NULL,
  `nombre` varchar(1000) NOT NULL,
  `resultado_contexto` longtext NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_patron`
--

INSERT INTO `sistema_patron` (`id`, `nombre`, `resultado_contexto`, `categoria_id`) VALUES
(20, 'Retrabajo', '', 8),
(21, 'No se tienen datos históricos', 'sgd', 8),
(22, 'Retraso en la entrega del producto', '', 8),
(23, 'Productos de software de baja calidad', '', 8),
(24, 'No se realiza gestión de riesgos formalmente', '', 8),
(25, 'Estimaciones imprevistas de plazos y costos de los proyectos', '', 8),
(26, 'No se documenta el desarrollo de software', '', 8),
(27, 'Carecen de personal', '', 12),
(28, 'Falta de formación o información', '', 10),
(29, 'No cuenta con experiencia en la implementación de mejora de procesos de software', '', 10),
(30, 'No se detectan  oportunidades de Mejora', '', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_patron_patrones_relacionados`
--

CREATE TABLE IF NOT EXISTS `sistema_patron_patrones_relacionados` (
  `id` int(11) NOT NULL,
  `from_patron_id` int(11) NOT NULL,
  `to_patron_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_patron_patrones_relacionados`
--

INSERT INTO `sistema_patron_patrones_relacionados` (`id`, `from_patron_id`, `to_patron_id`) VALUES
(12, 20, 21),
(11, 21, 20),
(14, 21, 22),
(22, 21, 30),
(13, 22, 21),
(17, 22, 28),
(18, 23, 28),
(21, 27, 30),
(15, 28, 22),
(16, 28, 23),
(20, 30, 21),
(19, 30, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_practicaespecifica`
--

CREATE TABLE IF NOT EXISTS `sistema_practicaespecifica` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `objetivo_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_practicaespecifica`
--

INSERT INTO `sistema_practicaespecifica` (`id`, `nombre`, `objetivo_id`) VALUES
(32, 'SP 1.1 Establecer el Alcance del Proyecto', 21),
(33, 'SP 1.2 Establecer las Estimaciones del Producto y de las Tareas ', 21),
(34, 'SP 1.3 Definir las fases del ciclo de vida del proyecto.', 21),
(35, 'SP 1.4 Estimar el esfuerzo y el coste', 21),
(36, 'SP 2.1 Establecer el presupuesto y el calendario', 22),
(37, 'SP 2.2 Identificar los riesgos del proyecto', 22),
(38, 'SP 2.3 Planificar la gestión de los datos', 22),
(39, 'SP 2.4 Planificar los recursos del proyecto', 22),
(40, 'SP 2.5 Planificar el conocimiento y las habilidades necesarias', 22),
(41, 'SP 2.6 Planificar la involucración de las partes interesadas', 22),
(42, 'SP 2.7 Establecer el plan de proyecto', 22),
(43, 'SP 3.1 Revisar los planes que afectan al proyecto', 23),
(44, 'SP 3.2 Conciliar los niveles de trabajo y de recursos', 23),
(45, 'SP 3.3 Obtener el compromiso con el plan', 23),
(46, 'SP 1.1 Monitorizar los parámetros de planificación del proyecto', 24),
(47, 'SP 1.2 Monitorizar los Compromisos', 24),
(48, 'SP 1.3 Monitorizar los Riesgos del Proyecto', 24),
(49, 'SP 1.4 Monitorizar la gestión de los datos', 24),
(50, 'SP 1.5 Monitorizar la Involucración de las Partes Afectadas', 24),
(51, 'SP 1.6 Llevar a cabo Revisiones de Progreso', 24),
(52, 'SP 1.7 Llevar a cado las revisiones de elementos', 24),
(53, 'SP 2.1 Analizar las cuestiones', 25),
(54, 'SP 2.2 Llevar a cabo las acciones correctivas', 25),
(55, 'SP 2.3 Gestionar las acciones correctivas', 25),
(56, 'SP 1.1 Identificar los Elementos de Configuración', 26),
(57, 'SP1.2 Establecer un Sistema de Gestión de Configuración', 26),
(58, 'SP 1.3 Crear o Liberar Líneas Base', 26),
(59, 'SP 2.1 Seguir las Peticiones de Cambio', 27),
(60, 'SP 2.2 Controlar los Elementos de Configuración', 27),
(61, 'SP 3.1 Establecer Registros de Gestión de Configuración', 28),
(62, '3.2 Realizar auditorías de configuración', 28),
(63, 'SP 1.1 Evaluar Objetivamente los Procesos', 29),
(64, 'SP 1.2 Evaluar Objetivamente los Productos de Trabajo', 29),
(65, 'SP 2.1 Comunicar y resolver las no conformidades.', 30),
(66, 'SP 2.2 Establecer Registros', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_pregunta`
--

CREATE TABLE IF NOT EXISTS `sistema_pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(500) NOT NULL,
  `practica_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_pregunta`
--

INSERT INTO `sistema_pregunta` (`id`, `pregunta`, `practica_id`) VALUES
(123, '¿Se divide el trabajo de acuerdo al tipo de proyecto que se va a desarrollar?', 32),
(124, '¿Se estima la duración del proyecto, las entregas y se asignan las tareas en base a la complejidad de las actividades?', 32),
(125, '¿Se identifican los productos del trabajo (o los componentes de los productos del trabajo) que serán adquiridos externamente?', 32),
(126, '¿Se identifican los productos del trabajo (o los componentes de los productos del trabajo) que serán reutilizados?', 32),
(127, '¿Se determina la arquitectura para el desarrollo, las tecnologías a utilizarse y la funcionalidad final del software que se desarrollará?', 33),
(128, '¿Se utilizan métodos apropiados para determinar  si se requerirá programar en un lenguaje en específico, adquirir herramientas especiales, servidores, etc.,  en base a la dificultad del software que se desarrollará?', 33),
(129, '¿Se estima el esfuerzo de las tareas?', 33),
(130, '¿Se estima el tamaño de los entregables (Hojas de documentos, prototipos en líneas de código, funciones o metodos, etc.)?', 33),
(131, '¿Se divide el proyecto en fases, se establecen actividades y entregables de cada fase?', 34),
(132, '¿Se estiman el esfuerzo, costos y presupuesto del proyecto?', 35),
(133, '¿Se estima el esfuerzo y el coste utilizando datos históricos?', 35),
(134, '¿Se identifican los principales módulos del software a desarrollar?', 36),
(135, '¿Se estiman la duración del proyecto y los entregables por fechas?', 36),
(136, '¿Se identifican las restricciones del proyecto tales como limitaciones de presupuestos, recursos tecnológicos, habilidades del equipo de desarrollo, etc.?', 36),
(137, '¿Se identifica como se relacionan las tareas para establecer que tareas realizar primero y cuáles enseguida?', 36),
(138, '¿Se define una fecha de término de duración del proyecto y se define el presupuesto del proyecto?', 36),
(139, '¿Se establece una planificación de correcciones y las condiciones para realizarlas en caso de requerirse?', 36),
(140, '¿Se identifican los riesgos del proyecto?', 37),
(141, '¿Se documentan los riesgos del proyecto?', 37),
(142, '¿Se revisa y se llega a un acuerdo con los participantes relevantes de la completitud y corrección de los riesgos documentados?', 37),
(143, '¿Se revisan los riesgos como debe ser?', 37),
(144, '¿Se establece un plan para proteger la información proporcionada para el proyecto (Evitar fuga de información confidencial)?', 38),
(145, '¿Se establece una forma para archivar datos y para consultar ese archivo de datos?', 38),
(146, '¿Se identifica que información es necesaria para el proyecto, como se recopilará y a quién se le proporcionará?', 38),
(147, '¿Se identifican las entradas, salidas, herramientas, recursos, roles, entrenamiento, etc., necesarios para el desarrollo del proceso del proyecto?', 39),
(148, '¿Se determinan los requerimientos del personal (por ejemplo requisitos, tareas roles o responabilidades)?', 39),
(149, '¿Se identifican las instalaciones, equipo y ambiente necesarios para el proyecto?', 39),
(150, '¿Se identifican el conocimiento, habilidades y experiencia necesarios para desarrollar el proyecto?', 40),
(151, '¿Se determinan el conocimiento y las habilidades disponibles?', 40),
(152, '¿Se establece una estrategia para entrenamiento del personal o contratación de personal externo para cumplir con las necesidades de conocimiento y habilidades del proyecto?', 40),
(153, '¿Se implementa la estrategia para proveer el conocimiento y habilidades en la planificación del proyecto?', 40),
(154, '¿Se forma una lista de los miembros del equipo de desarrollo de acuerdo a sus habilidades y conocimientos para participar en el proyecto?', 41),
(155, '¿Se establece el Plan de Proyecto?', 42),
(156, '¿Se revisa la planificación del proyecto para asegurarse que no se sobreestimo o subestimo y que se puedan cumplir todas las actividades?', 43),
(157, '¿Se revisa la planificación para asegurarse que esta se puede cumplir con los recursos (herramientas, personal, tecnologías) y presupuesto asignados al proyecto?', 44),
(158, '¿Se negocia con los involucrados (miembros del equipo, clientes, gerencia de la organización) las responsabilidades en el proyecto, el trabajo y el pago?', 45),
(159, '¿Se documentan todos los compromisos de organización, completos y provisionales, asegurando el nivel apropiado del firmante?', 45),
(160, '¿Antes de firmar se analizan bien las cláusulas del contrato entre empleados de la organización y la gerencia?', 45),
(161, '¿Se revisa el contrato de la organización con el cliente?', 45),
(162, '¿El contrato incluye la relación entre cliente, organización y miembros del equipo de desarrollo y la forma en que será supervisada esa relación?', 45),
(163, '¿Se compara el avance real con la planificación de las actividades para establecer si se va cumpliendo en forma con el avance planeado?', 46),
(164, '¿Se identifican las desviaciones del avance real respecto al avance planificado?', 46),
(165, '¿Se revisa que se vaya cumpliendo el avance planificado con los costos, esfuerzo y personal asignado?', 46),
(166, '¿Se compara los costos, esfuerzo, personal y entrenamiento reales con los planificados y se detectan las desviaciones existentes?', 46),
(167, '¿Se revisa que las funcionalidades del producto cumplan con las características establecidas en la planificación y con las expectativas del cliente?', 46),
(168, '¿Se compara la dificultad en el desarrollo del software real contra la dificultad establecida en la planificación y si existen, se detectan las desviaciones?', 46),
(169, '¿Se revisan los recursos asignados y usados para establecer si con esos recursos se puede finalizar el proyecto?', 46),
(170, '¿Se evalúa en caso de haber existido capacitación que el personal realmente adquirido conocimiento y habilidades?', 46),
(171, '¿Si existe una planificación de entrenamiento, se revisa el conocimiento y habilidades reales adquiridas por el personal contra lo previsto en la planificación para saber si se está aprovechando la capacitación?', 46),
(172, '¿Se documentan las desviaciones respecto a la planificación de proyecto?', 46),
(173, '¿Se revisa el cumplimiento de los contratos con el personal de la organización y con los clientes?', 47),
(174, '¿Se identifican compromisos de contrato no cumplidos o que estén en riesgo de no cumplirse?', 47),
(175, '¿Se documentan las revisiones de los contratos?', 47),
(176, '¿Se revisan de manera continua los riesgos planificados con el estado real del proyecto?', 48),
(177, '¿Se modifica la documentación de riesgos cuando se agrega información adicional?', 48),
(178, '¿Se comunica el estado de los riegos a los responsables?', 48),
(179, '¿Se revisa la recolección de información real con la planteada en la planificación del proyecto?', 49),
(180, '¿Se identifican y documentan los problemas y su impacto al proyecto?', 49),
(181, '¿Se documentan los resultados de la revisión de la recolección de información para el proyecto?', 49),
(182, '¿Se revisa la actividad de todos los involucrados en el proyecto?', 50),
(183, '¿Se identifican y documentan los problemas sobre los involucrados y su impacto al proyecto?', 50),
(184, '¿Se documentan las revisiones de la actividad de los involucrados en el proyecto?', 50),
(185, '¿Se informa a los involucrados principales (Cliente, líderes de proyecto) del avance de las actividades y los entregables generados (prototipos, documentación)?', 51),
(186, '¿Se incluye a los directivos, desarrolladores, clientes, usuario y proveedores en las revisiones, cuando es necesario?', 51),
(187, '¿Se revisan los contratos, la planificación el estado actual y los riesgos del proyecto?', 51),
(188, '¿Se identifican y documenta problemas siginificatvos y  desviaciones del plan?', 51),
(189, '¿Se documentan las peticiones de cambio del software o el proceso?', 51),
(190, '¿Se documentan los resultados de las revisiones?', 51),
(191, '¿Se da seguimiento a las peticiones de cambios y reportes de problemas hasta su cierre?', 51),
(192, '¿Se realizan revisiones especiales en fechas planificadas?', 52),
(194, '¿Se documentan los problemas encontrados en las revisiones?', 52),
(195, '¿Se documentan los resultados de las revisiones y estrategias de correcciones en caso de existir?', 52),
(196, '¿Se da seguimiento a las correcciones hasta que se cumpla con estas?', 52),
(197, '¿Los problemas son detectados mediante revisiones?', 53),
(198, '¿Se revisan los problemas para establecer soluciones?', 53),
(199, '¿Se establecen y documentan las soluciones a los problemas detectados?', 54),
(200, '¿Se revisan las soluciones propuestas antes de aplicarse?', 54),
(201, '¿Se negocian los cambios y sus costos entre la organización, equipo de desarrollo y cliente?', 54),
(202, '¿Se da seguimiento a las correcciones hasta que se completen?', 55),
(203, '¿Se analizan resultados de las acciones correctivas para determinar se efectividad?', 55),
(204, '¿Se documentan las desviaciones provocadas por la aplicación de acciones correctivas?', 55),
(205, '¿Se tiene identificados a los elementos (código fuente, ejecutables, documentos, requisitos, etc.) a los cuales se aplicará control de cambios y control de versiones?', 56),
(206, '¿Se asignan identificadores únicos a los elementos (código fuente, ejecutables, documentos, requisitos, etc.)  para su reconocimiento?', 56),
(207, '¿Se establecen las características importantes de cada elemento?', 56),
(208, '¿Se establecen criterios para determinar cuándo realizar un control de cambios o control de versiones a los elementos?', 56),
(209, '¿Se asigna un responsable por cada elemento para llevar el control de cambio y control de versiones?', 56),
(210, '¿Se establece un sistema para el control de cambios y control de versiones?', 57),
(211, '¿Se establecen varios niveles de control de cambios y control de versiones?', 57),
(212, '¿Al manejar el control de cambios y control de versiones, se tiene acceso a los elementos a los que se aplican (es decir a las versiones anteriores)?', 57),
(213, '¿Los elementos de configuración se comparten entre los diferentes niveles establecidos (Responsables)?', 61),
(214, '¿Es posible almacenar y recuperan las versiones archivadas de los elementos?', 57),
(215, '¿El sistema de control de cambios y control de versiones permite la realización de reportes?', 57),
(216, '¿Se obtiene la autorización de todos los involucrados en el proyecto antes de crear o liberar las líneas base de los elementos de configuración?', 58),
(217, '¿Las versiones estables se liberan para uso interno o para el cliente con su respectiva documentación?', 58),
(218, '¿Las versiones estables sólo afectan a los elementos definidos en el control de cambios y control de versiones?', 58),
(219, '¿Se documentan los elementos que conforman una línea base y se accede fácilmente a ellos?', 58),
(220, '¿Las peticiones de cambios son analizadas para determinar el impacto que el cambio tendrá en el producto de trabajo, productos de trabajo relacionados, calendario y costos?', 59),
(221, '¿Se analiza el impacto de los cambios y arreglos propuestos en las peticiones de cambios?', 59),
(222, '¿Se revisan las peticiones de cambios que se aplicaran a una versión ya estable?', 59),
(223, '¿Se da un seguimiento del estado de la petición de cambio hasta cerrarla?', 59),
(224, '¿Se controlan los cambios realizados sobre los elementos para que no se afecte a las versiones de software o documentos ya estables?', 60),
(225, '¿Se pide autorización a los responsables antes de subir una nueva versión al sistema de control de cambios o control de versiones? ', 60),
(226, '¿Se comprueba que los cambios internos y externos respeten el control de cambio y control de versiones?', 60),
(227, '¿Se da seguimiento el estado de las peticiones de cambio hasta su cierre?', 60),
(228, '¿El sistema de control de cambios y control de versiones contienen los contenidos de cada elemento y se pueden recuperar las versiones previas?', 61),
(229, '¿Los involucrados en el proyecto tiene acceso al control de cambios y control de versiones?', 61),
(230, '¿Se especifica de manera correcta una versión estable y los elementos que la integran?', 61),
(231, '¿Se realizan correcciones al estado y el historial de cambios y versiones de cada elemento cuando es necesario?', 61),
(232, '¿Se evalúa la integridad (consistencia) de las líneas base?', 62),
(233, '¿Se confirma que los registros identifiquen el estado actual de los elementos en el control de cambios y control de versiones?', 62),
(234, '¿Se revisa la estructura del sistema de control de cambios y control de versiones y la integridad de los elementos que lo conforman?', 62),
(235, '¿Se confirma la completitud y la exactitud de los elementos en el sistema de control de cambios y de versiones?', 62),
(236, '¿Se aplican procedimientos y/o estándares al sistema de control de cambios y control de versiones?', 62),
(237, '¿Se lleva un seguimiento de los elementos del control de cambios y control de versiones desde su revisión hasta el término del proyecto?', 62),
(238, '¿Se promueve la calidad dentro del entorno de desarrollo de proyectos?', 63),
(239, '¿Se establecen criterios para realizar evaluaciones de calidad de procesos y productos (Software)?', 63),
(240, '¿Se evalúa que los procesos de desarrollo se apeguen a estándares y procedimientos de calidad?', 63),
(241, '¿Se identifican las fallas en cuanto a calidad en la evaluación de los procesos?', 64),
(242, '¿Se identifican lecciones aprendidas para mejorar las futuras evaluaciones del software?', 63),
(243, '¿Se seleccionan los productos que van a ser evaluados?', 64),
(244, '¿Se establecen criterios para la evaluación de calidad del software?', 64),
(245, '¿Se utilizan los criterios establecidos durante la evaluación de los productos?', 64),
(246, '¿Se realizan pruebas de calidad el software antes de entregarse al cliente?', 64),
(247, '¿Se realizan evaluaciones de calidad al software en puntos específicos del desarrollo?', 64),
(248, '¿Se realizan evaluaciones del software de acuerdo a estándares y procedimientos de calidad?', 64),
(249, '¿Se detectan las fallas en cuanto a calidad en la evaluación del software?', 64),
(250, '¿Se identifican las lecciones aprendidas que podrían mejorar los procesos de futuros productos y servicios?', 64),
(251, '¿Si no se cumple con la calidad deseada del software se resuelven los casos de incumplimiento con el personal responsable?', 65),
(252, '¿Se documentan los casos de incumplimiento cuando no pueden ser resueltos dentro de un proyecto?', 65),
(253, '¿Si no se resuelve un caso de incumplimiento con una persona se envía el caso a un nivel superior para que se resuelva?', 65),
(254, '¿Existe un nivel en la dirección que se encargue de recibir y actuar sobre los casos de incumplimiento?', 65),
(255, '¿Se analizan los casos de incumplimiento para ver si existe alguna tendencia de calidad que pueda ser identificada y tratada?', 65),
(256, '¿Se establece que los involucrados están de acuerdo con los resultados de las evaluaciones de calidad?', 65),
(257, '¿Se revisa que se resuelvan los casos de incumplimiento de calidad con el director o responsable asignado?', 65),
(258, '¿Se hace un seguimiento de los casos de incumplimiento hasta su resolución?', 65),
(259, '¿Se registran las actividades de aseguramiento de la calidad del proceso y del producto con suficiente detalle como para que el estado y los resultados de la calidad se conozcan?', 66),
(260, '¿Se revisa el estado y el histórico de las actividades de aseguramiento de la calidad siempre que sea necesario?', 66),
(261, '¿Se revisa la planificación del proyecto para asegurarse que no se sobreestimo o subestimo y que se puedan cumplir todas las actividades?', 45),
(262, '¿Se evalúa que los procesos de desarrollo se apeguen a estándares y procedimientos de calidad?', 63),
(263, '¿Se identifican y documentan los problemas y su impacto al proyecto?', 51),
(264, '¿Se documentan los casos de incumplimiento cuando no pueden ser resueltos dentro de un proyecto?', 65);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_pregunta_patrones`
--

CREATE TABLE IF NOT EXISTS `sistema_pregunta_patrones` (
  `id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `patron_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_pregunta_patrones`
--

INSERT INTO `sistema_pregunta_patrones` (`id`, `pregunta_id`, `patron_id`) VALUES
(430, 123, 20),
(429, 124, 20),
(151, 125, 20),
(428, 126, 20),
(427, 127, 20),
(426, 128, 20),
(425, 129, 20),
(424, 130, 20),
(423, 131, 20),
(422, 132, 20),
(421, 133, 20),
(420, 134, 20),
(419, 135, 20),
(418, 136, 20),
(417, 137, 20),
(416, 138, 20),
(415, 139, 20),
(414, 140, 20),
(413, 141, 20),
(411, 142, 20),
(410, 143, 20),
(409, 144, 20),
(408, 145, 20),
(407, 146, 20),
(406, 147, 20),
(405, 148, 20),
(404, 149, 20),
(403, 150, 20),
(402, 151, 20),
(401, 152, 20),
(400, 153, 20),
(399, 154, 20),
(398, 155, 20),
(397, 156, 20),
(396, 157, 20),
(395, 158, 20),
(394, 159, 20),
(393, 160, 20),
(392, 161, 20),
(391, 162, 20),
(390, 163, 20),
(389, 164, 20),
(388, 165, 20),
(387, 166, 20),
(386, 167, 20),
(385, 168, 20),
(384, 169, 20),
(382, 170, 20),
(381, 171, 20),
(380, 172, 20),
(379, 173, 20),
(378, 174, 20),
(377, 175, 20),
(376, 176, 20),
(375, 177, 20),
(374, 178, 20),
(373, 179, 20),
(372, 180, 20),
(371, 181, 20),
(370, 182, 20),
(369, 183, 20),
(368, 184, 20),
(367, 185, 20),
(366, 186, 20),
(365, 187, 20),
(364, 188, 20),
(363, 189, 20),
(362, 190, 20),
(361, 191, 20),
(360, 192, 20),
(358, 194, 20),
(357, 195, 20),
(356, 196, 20),
(355, 197, 20),
(354, 198, 20),
(353, 199, 20),
(352, 200, 20),
(351, 201, 20),
(350, 202, 20),
(349, 203, 20),
(348, 204, 20),
(347, 205, 20),
(346, 206, 20),
(345, 207, 20),
(344, 208, 20),
(343, 209, 20),
(342, 210, 20),
(341, 211, 20),
(340, 212, 20),
(339, 213, 20),
(338, 214, 20),
(337, 215, 20),
(336, 216, 20),
(335, 217, 20),
(334, 218, 20),
(333, 219, 20),
(332, 220, 20),
(331, 221, 20),
(330, 222, 20),
(329, 223, 20),
(328, 224, 20),
(327, 225, 20),
(326, 226, 20),
(325, 227, 20),
(324, 228, 20),
(323, 229, 20),
(322, 230, 20),
(321, 231, 20),
(320, 232, 20),
(319, 233, 20),
(317, 234, 20),
(316, 235, 20),
(315, 236, 20),
(314, 237, 20),
(313, 238, 20),
(312, 239, 20),
(311, 240, 20),
(310, 241, 20),
(309, 242, 20),
(308, 243, 20),
(307, 244, 20),
(306, 245, 20),
(305, 246, 20),
(304, 247, 20),
(303, 248, 20),
(302, 249, 20),
(276, 250, 20),
(301, 251, 20),
(300, 252, 20),
(299, 253, 20),
(298, 254, 20),
(297, 255, 20),
(296, 256, 20),
(295, 257, 20),
(284, 258, 20),
(285, 259, 20),
(286, 260, 20),
(294, 261, 21),
(293, 262, 23),
(292, 263, 25),
(291, 264, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_problema`
--

CREATE TABLE IF NOT EXISTS `sistema_problema` (
  `id` int(11) NOT NULL,
  `problema` longtext NOT NULL,
  `patron_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_problema`
--

INSERT INTO `sistema_problema` (`id`, `problema`, `patron_id`) VALUES
(2, 'Tareas que se ejecutaron incorrectamente', 20),
(3, 'Tareas nuevas por cambios continuos de un proyecto', 20),
(4, 'Tareas duplicadas por mala gestión de los documentos/productos compartidos', 20),
(5, 'Costos de presupuesto sobre el personal', 20),
(6, 'Inversión de esfuerzo en soluciones a la problemática', 20),
(7, 'Inconformidad de los clientes', 20),
(8, 'Estimaciones inexactas de los recursos necesarios', 21),
(9, 'No existe una base de datos para la realización de la fase de planeación para futuros proyectos', 21),
(10, 'Desconocimiento de mejores prácticas dentro de la organización ', 21),
(11, 'Aplicaciones entregadas fuera de plazos o no finalizadas', 22),
(12, 'Aplicaciones entregadas sin las funcionalidades mínimas', 22),
(13, 'Recursos extras por mantenimiento futuro', 22),
(14, 'Mala definición de requisitos', 23),
(15, 'Mala comunicación con el cliente', 23),
(16, 'Errores de codificación', 23),
(17, 'Incumplimiento de estándares de codificación y documentación ', 23),
(18, 'Pruebas incompletas o Programas con fallos en la ejecución (pocos fiables)', 23),
(19, 'Riesgos no identificados', 24),
(20, 'Errores imprevistos', 24),
(21, 'Mala gestión del riesgo', 24),
(22, 'Insuficiente definición del alcance del proyecto', 25),
(23, 'Modificaciones tecnológicas', 25),
(24, 'Falta de estrategias de mitigación en caso de cambios en los requerimientos', 25),
(25, 'Carencia de una correcta planificación del proyecto', 25),
(26, 'Fallas en la toma de decisiones', 25),
(27, 'Estimaciones de plazos demasiado optimistas o pesimistas', 25),
(28, 'El software no es mantenible', 26),
(29, 'Se realizan constantes modificaciones por falta de documentación de los requisitos', 26),
(30, 'personal poco calificados', 27),
(31, 'no hay comunicación', 27),
(32, 'no se tiene roles definidos', 27),
(33, 'Conflictos laborales constantes o incremento de las tensiones laborales', 27),
(34, 'Conflictos laborales constantes o incremento de las tensiones laborales', 27),
(35, 'Falta de responsabilidad por el nivel de confusión', 27),
(36, 'Improductividad', 28),
(37, 'Desconocimiento de los procesos que se realizan en la organización', 28),
(38, 'Ausencia de una estrategia para optimización de recursos de los proyectos', 28),
(39, 'Falta de compromiso de los involucrados', 28),
(40, 'Ausencia de colaboración entre los miembros del equipo de desarrollo', 28),
(41, 'Ausencia de métricas para mejora de procesos, productos y proyectos', 28),
(42, 'Pobre monitorización del desempeño del personal', 28),
(43, 'Fallas en la implementación de estándares y modelos de calidad', 29),
(44, 'Desconocimiento de las mejores prácticas de la organización sobre sus procesos', 29),
(45, 'Ausencia de objetivos a corto y largo plazo', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_problema_fuerzas`
--

CREATE TABLE IF NOT EXISTS `sistema_problema_fuerzas` (
  `id` int(11) NOT NULL,
  `problema_id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_problema_fuerzas`
--

INSERT INTO `sistema_problema_fuerzas` (`id`, `problema_id`, `pregunta_id`) VALUES
(11, 2, 198),
(15, 3, 189),
(16, 3, 220),
(17, 3, 221),
(18, 3, 222),
(19, 3, 223),
(14, 3, 224),
(20, 4, 137),
(25, 5, 132),
(24, 6, 183),
(22, 6, 197),
(23, 6, 198),
(26, 7, 246),
(29, 8, 124),
(27, 8, 129),
(28, 8, 130),
(30, 8, 133),
(31, 8, 135),
(34, 9, 155),
(35, 9, 189),
(36, 9, 261),
(37, 10, 242),
(39, 11, 138),
(40, 11, 163),
(38, 11, 164),
(42, 11, 166),
(41, 11, 172),
(43, 12, 232),
(45, 12, 246),
(46, 12, 247),
(44, 12, 249),
(47, 13, 165),
(48, 14, 144),
(49, 14, 147),
(50, 14, 148),
(51, 14, 149),
(52, 15, 186),
(53, 16, 216),
(54, 16, 217),
(55, 16, 218),
(56, 17, 240),
(58, 18, 243),
(59, 18, 244),
(60, 18, 246),
(61, 18, 247),
(57, 18, 248),
(65, 19, 174),
(62, 19, 176),
(63, 19, 177),
(64, 19, 178),
(68, 20, 197),
(69, 20, 198),
(70, 20, 199),
(66, 20, 200),
(67, 20, 201),
(76, 21, 140),
(77, 21, 141),
(78, 21, 142),
(79, 21, 143),
(75, 21, 178),
(80, 22, 155),
(81, 23, 149),
(82, 24, 147),
(83, 24, 148),
(99, 25, 163),
(100, 25, 164),
(101, 25, 165),
(102, 25, 166),
(103, 25, 167),
(104, 25, 168),
(105, 25, 169),
(106, 25, 170),
(107, 25, 171),
(108, 25, 172),
(95, 26, 131),
(97, 26, 158),
(98, 26, 159),
(94, 26, 161),
(96, 26, 261),
(116, 27, 173),
(117, 27, 174),
(118, 27, 175),
(119, 27, 185),
(120, 27, 187),
(115, 27, 263),
(121, 28, 210),
(122, 28, 211),
(123, 28, 212),
(124, 28, 213),
(125, 28, 214),
(126, 28, 215),
(127, 29, 224),
(128, 29, 225),
(129, 29, 226),
(130, 29, 227),
(133, 30, 150),
(134, 30, 151),
(131, 30, 152),
(132, 30, 154),
(138, 31, 178),
(137, 31, 185),
(139, 31, 229),
(141, 32, 124),
(140, 32, 131),
(142, 32, 150),
(143, 32, 151),
(145, 33, 162),
(144, 33, 185),
(146, 33, 186),
(148, 34, 162),
(147, 34, 185),
(149, 34, 186),
(150, 34, 229),
(155, 35, 251),
(156, 35, 253),
(157, 35, 254),
(158, 35, 255),
(151, 35, 256),
(152, 35, 257),
(153, 35, 258),
(154, 35, 264),
(168, 36, 123),
(169, 36, 124),
(170, 36, 125),
(166, 36, 152),
(167, 36, 153),
(164, 37, 228),
(165, 37, 229),
(171, 38, 136),
(173, 38, 138),
(174, 38, 149),
(172, 38, 169),
(179, 39, 154),
(180, 39, 158),
(181, 39, 159),
(175, 39, 160),
(176, 39, 161),
(177, 39, 162),
(178, 39, 173),
(182, 40, 251),
(183, 40, 254),
(186, 41, 163),
(187, 41, 165),
(184, 41, 170),
(185, 41, 259),
(189, 42, 182),
(188, 42, 184),
(191, 43, 131),
(192, 43, 137),
(193, 43, 141),
(194, 43, 145),
(195, 43, 146),
(198, 44, 147),
(200, 44, 151),
(197, 44, 259),
(196, 44, 260),
(199, 44, 262),
(201, 45, 259),
(202, 45, 260);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_problema_soluciones`
--

CREATE TABLE IF NOT EXISTS `sistema_problema_soluciones` (
  `id` int(11) NOT NULL,
  `problema_id` int(11) NOT NULL,
  `solucion_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_problema_soluciones`
--

INSERT INTO `sistema_problema_soluciones` (`id`, `problema_id`, `solucion_id`) VALUES
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(9, 3, 4),
(10, 3, 5),
(11, 3, 6),
(12, 3, 7),
(13, 3, 9),
(14, 3, 10),
(15, 3, 11),
(16, 3, 12),
(18, 4, 13),
(19, 4, 14),
(20, 4, 15),
(17, 4, 16),
(30, 5, 13),
(31, 5, 14),
(32, 5, 15),
(29, 5, 16),
(25, 6, 4),
(26, 6, 5),
(27, 6, 6),
(28, 6, 7),
(33, 7, 17),
(34, 7, 18),
(35, 7, 19),
(36, 7, 20),
(38, 8, 13),
(39, 8, 14),
(40, 8, 15),
(37, 8, 16),
(45, 9, 4),
(46, 9, 5),
(47, 9, 6),
(48, 9, 7),
(49, 9, 13),
(50, 9, 14),
(51, 9, 15),
(52, 9, 16),
(53, 10, 17),
(54, 10, 18),
(55, 10, 19),
(56, 10, 20),
(57, 11, 4),
(58, 11, 5),
(59, 11, 6),
(60, 11, 7),
(61, 11, 13),
(62, 11, 14),
(63, 11, 15),
(64, 11, 16),
(65, 12, 9),
(66, 12, 10),
(67, 12, 11),
(68, 12, 12),
(69, 12, 17),
(70, 12, 18),
(71, 12, 19),
(72, 12, 20),
(73, 13, 4),
(74, 13, 5),
(75, 13, 6),
(76, 13, 7),
(78, 14, 13),
(79, 14, 14),
(80, 14, 15),
(77, 14, 16),
(81, 15, 4),
(82, 15, 5),
(83, 15, 6),
(84, 15, 7),
(85, 16, 9),
(86, 16, 10),
(87, 16, 11),
(88, 16, 12),
(89, 17, 17),
(90, 17, 18),
(91, 17, 19),
(92, 17, 20),
(93, 18, 17),
(94, 18, 18),
(95, 18, 19),
(96, 18, 20),
(97, 19, 4),
(98, 19, 5),
(99, 19, 6),
(100, 19, 7),
(101, 20, 4),
(102, 20, 5),
(103, 20, 6),
(104, 20, 7),
(109, 21, 4),
(110, 21, 5),
(111, 21, 6),
(112, 21, 7),
(113, 21, 13),
(114, 21, 14),
(115, 21, 15),
(116, 21, 16),
(118, 22, 13),
(119, 22, 14),
(120, 22, 15),
(117, 22, 16),
(122, 23, 13),
(123, 23, 14),
(124, 23, 15),
(121, 23, 16),
(126, 24, 13),
(127, 24, 14),
(128, 24, 15),
(125, 24, 16),
(137, 25, 4),
(138, 25, 5),
(139, 25, 6),
(140, 25, 7),
(134, 26, 13),
(135, 26, 14),
(136, 26, 15),
(133, 26, 16),
(142, 27, 4),
(143, 27, 5),
(144, 27, 6),
(145, 27, 7),
(146, 28, 9),
(147, 28, 10),
(148, 28, 11),
(149, 28, 12),
(150, 29, 9),
(151, 29, 10),
(152, 29, 11),
(153, 29, 12),
(155, 30, 13),
(156, 30, 14),
(157, 30, 15),
(154, 30, 16),
(162, 31, 4),
(163, 31, 5),
(164, 31, 6),
(165, 31, 7),
(166, 31, 9),
(167, 31, 10),
(168, 31, 11),
(169, 31, 12),
(170, 32, 4),
(171, 32, 5),
(172, 32, 6),
(173, 32, 7),
(174, 33, 4),
(175, 33, 5),
(176, 33, 6),
(177, 33, 7),
(178, 34, 9),
(179, 34, 10),
(180, 34, 11),
(181, 34, 12),
(182, 34, 17),
(183, 34, 18),
(184, 34, 19),
(185, 34, 20),
(186, 35, 17),
(187, 35, 18),
(188, 35, 19),
(189, 35, 20),
(199, 36, 13),
(200, 36, 14),
(201, 36, 15),
(198, 36, 16),
(194, 37, 9),
(195, 37, 10),
(196, 37, 11),
(197, 37, 12),
(202, 38, 4),
(203, 38, 5),
(204, 38, 6),
(205, 38, 7),
(206, 38, 13),
(207, 38, 14),
(208, 38, 15),
(209, 38, 16),
(210, 39, 4),
(211, 39, 5),
(212, 39, 6),
(213, 39, 7),
(214, 39, 13),
(215, 39, 14),
(216, 39, 15),
(217, 39, 16),
(219, 40, 13),
(220, 40, 14),
(221, 40, 15),
(218, 40, 16),
(222, 41, 4),
(223, 41, 5),
(224, 41, 6),
(225, 41, 7),
(226, 41, 17),
(227, 41, 18),
(228, 41, 19),
(229, 41, 20),
(230, 42, 4),
(231, 42, 5),
(232, 42, 6),
(233, 42, 7),
(234, 43, 4),
(235, 43, 5),
(236, 43, 6),
(237, 43, 7),
(238, 43, 13),
(239, 43, 14),
(240, 43, 15),
(241, 43, 16),
(242, 44, 13),
(243, 44, 14),
(244, 44, 15),
(245, 44, 16),
(246, 44, 17),
(247, 44, 18),
(248, 44, 19),
(249, 44, 20),
(250, 45, 17),
(251, 45, 18),
(252, 45, 19),
(253, 45, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_respuesta`
--

CREATE TABLE IF NOT EXISTS `sistema_respuesta` (
  `id` int(11) NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `respuesta` varchar(2) NOT NULL,
  `cuestionario_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3729 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_respuesta`
--

INSERT INTO `sistema_respuesta` (`id`, `pregunta_id`, `respuesta`, `cuestionario_id`) VALUES
(940, 151, '5', 16),
(941, 150, '5', 16),
(942, 153, '4', 16),
(943, 152, '2', 16),
(944, 155, '5', 16),
(945, 154, '5', 16),
(946, 157, '4', 16),
(947, 156, '5', 16),
(948, 159, '4', 16),
(949, 158, '4', 16),
(950, 133, '1', 16),
(951, 132, '4', 16),
(952, 131, '5', 16),
(953, 130, '5', 16),
(954, 137, '5', 16),
(955, 136, '5', 16),
(956, 135, '5', 16),
(957, 134, '4', 16),
(958, 139, '4', 16),
(959, 138, '5', 16),
(960, 146, '4', 16),
(961, 147, '5', 16),
(962, 144, '4', 16),
(963, 145, '2', 16),
(964, 142, '1', 16),
(965, 143, '2', 16),
(966, 140, '2', 16),
(967, 141, '1', 16),
(968, 148, '5', 16),
(969, 149, '5', 16),
(970, 261, '4', 16),
(971, 123, '4', 16),
(972, 124, '3', 16),
(973, 125, '3', 16),
(974, 126, '2', 16),
(975, 127, '1', 16),
(976, 128, '4', 16),
(977, 129, '5', 16),
(978, 160, '5', 16),
(979, 161, '4', 16),
(980, 162, '1', 16),
(981, 199, '2', 16),
(982, 198, '2', 16),
(983, 195, '2', 16),
(984, 194, '3', 16),
(985, 197, '4', 16),
(986, 196, '4', 16),
(987, 191, '2', 16),
(988, 190, '2', 16),
(990, 192, '4', 16),
(991, 179, '2', 16),
(992, 178, '3', 16),
(993, 177, '1', 16),
(994, 176, '1', 16),
(995, 175, '4', 16),
(996, 174, '3', 16),
(997, 173, '3', 16),
(998, 172, '1', 16),
(999, 171, '1', 16),
(1000, 170, '4', 16),
(1001, 182, '4', 16),
(1002, 183, '2', 16),
(1003, 180, '2', 16),
(1004, 181, '1', 16),
(1005, 186, '4', 16),
(1006, 187, '4', 16),
(1007, 184, '2', 16),
(1008, 185, '4', 16),
(1009, 189, '3', 16),
(1010, 201, '4', 16),
(1011, 200, '5', 16),
(1012, 203, '2', 16),
(1013, 202, '4', 16),
(1014, 204, '1', 16),
(1015, 263, '1', 16),
(1016, 168, '1', 16),
(1017, 169, '4', 16),
(1018, 164, '2', 16),
(1019, 165, '3', 16),
(1020, 166, '2', 16),
(1021, 167, '3', 16),
(1022, 188, '1', 16),
(1023, 163, '2', 16),
(1024, 216, '2', 16),
(1025, 217, '1', 16),
(1026, 214, '2', 16),
(1027, 215, '1', 16),
(1028, 212, '1', 16),
(1029, 213, '1', 16),
(1030, 210, '1', 16),
(1031, 211, '1', 16),
(1032, 218, '2', 16),
(1033, 219, '1', 16),
(1034, 234, '2', 16),
(1035, 235, '2', 16),
(1036, 236, '2', 16),
(1037, 237, '4', 16),
(1038, 230, '1', 16),
(1039, 231, '1', 16),
(1040, 232, '2', 16),
(1041, 233, '2', 16),
(1042, 205, '2', 16),
(1043, 207, '4', 16),
(1044, 206, '2', 16),
(1045, 209, '4', 16),
(1046, 208, '1', 16),
(1047, 229, '4', 16),
(1048, 228, '2', 16),
(1049, 227, '4', 16),
(1050, 226, '1', 16),
(1051, 225, '1', 16),
(1052, 224, '1', 16),
(1053, 223, '4', 16),
(1054, 222, '4', 16),
(1055, 221, '4', 16),
(1056, 220, '3', 16),
(1057, 264, '4', 16),
(1058, 258, '2', 16),
(1059, 259, '2', 16),
(1060, 238, '3', 16),
(1061, 239, '1', 16),
(1062, 252, '3', 16),
(1063, 253, '5', 16),
(1064, 250, '3', 16),
(1065, 251, '2', 16),
(1066, 256, '2', 16),
(1067, 257, '2', 16),
(1068, 254, '5', 16),
(1069, 255, '3', 16),
(1070, 245, '4', 16),
(1071, 244, '2', 16),
(1072, 247, '3', 16),
(1073, 260, '2', 16),
(1074, 241, '1', 16),
(1075, 240, '4', 16),
(1076, 243, '3', 16),
(1077, 242, '3', 16),
(1078, 249, '2', 16),
(1079, 248, '5', 16),
(1080, 262, '2', 16),
(1081, 246, '2', 16),
(1224, 151, '5', 18),
(1225, 150, '5', 18),
(1226, 153, '3', 18),
(1227, 152, '3', 18),
(1228, 155, '5', 18),
(1229, 154, '1', 18),
(1230, 157, '4', 18),
(1231, 156, '1', 18),
(1232, 159, '3', 18),
(1233, 158, '4', 18),
(1234, 133, '1', 18),
(1235, 132, '4', 18),
(1236, 131, '4', 18),
(1237, 130, '4', 18),
(1238, 137, '4', 18),
(1239, 136, '4', 18),
(1240, 135, '4', 18),
(1241, 134, '3', 18),
(1242, 139, '4', 18),
(1243, 138, '5', 18),
(1244, 146, '1', 18),
(1245, 147, '5', 18),
(1246, 144, '1', 18),
(1247, 145, '1', 18),
(1248, 142, '2', 18),
(1249, 143, '3', 18),
(1250, 140, '4', 18),
(1251, 141, '3', 18),
(1252, 148, '4', 18),
(1253, 149, '3', 18),
(1254, 261, '5', 18),
(1255, 123, '2', 18),
(1256, 124, '4', 18),
(1257, 125, '4', 18),
(1258, 126, '1', 18),
(1259, 127, '1', 18),
(1260, 128, '2', 18),
(1261, 129, '4', 18),
(1262, 160, '1', 18),
(1263, 161, '2', 18),
(1264, 162, '5', 18),
(1265, 199, '3', 18),
(1266, 198, '4', 18),
(1267, 195, '2', 18),
(1268, 194, '5', 18),
(1269, 197, '4', 18),
(1270, 196, '2', 18),
(1271, 191, '3', 18),
(1272, 190, '2', 18),
(1274, 192, '3', 18),
(1275, 179, '3', 18),
(1276, 178, '3', 18),
(1277, 177, '2', 18),
(1278, 176, '3', 18),
(1279, 175, '2', 18),
(1280, 174, '3', 18),
(1281, 173, '3', 18),
(1282, 172, '5', 18),
(1283, 171, '2', 18),
(1284, 170, '3', 18),
(1285, 182, '3', 18),
(1286, 183, '5', 18),
(1287, 180, '4', 18),
(1288, 181, '3', 18),
(1289, 186, '3', 18),
(1290, 187, '3', 18),
(1291, 184, '2', 18),
(1292, 185, '2', 18),
(1293, 189, '4', 18),
(1294, 201, '4', 18),
(1295, 200, '4', 18),
(1296, 203, '2', 18),
(1297, 202, '1', 18),
(1298, 204, '2', 18),
(1299, 263, '5', 18),
(1300, 168, '4', 18),
(1301, 169, '3', 18),
(1302, 164, '4', 18),
(1303, 165, '4', 18),
(1304, 166, '5', 18),
(1305, 167, '4', 18),
(1306, 188, '3', 18),
(1307, 163, '4', 18),
(1308, 216, '1', 18),
(1309, 217, '1', 18),
(1310, 214, '2', 18),
(1311, 215, '2', 18),
(1312, 212, '3', 18),
(1313, 213, '1', 18),
(1314, 210, '4', 18),
(1315, 211, '3', 18),
(1316, 218, '1', 18),
(1317, 219, '2', 18),
(1318, 234, '1', 18),
(1319, 235, '2', 18),
(1320, 236, '2', 18),
(1321, 237, '1', 18),
(1322, 230, '2', 18),
(1323, 231, '2', 18),
(1324, 232, '1', 18),
(1325, 233, '2', 18),
(1326, 205, '4', 18),
(1327, 207, '2', 18),
(1328, 206, '3', 18),
(1329, 209, '4', 18),
(1330, 208, '4', 18),
(1331, 229, '4', 18),
(1332, 228, '5', 18),
(1333, 227, '5', 18),
(1334, 226, '3', 18),
(1335, 225, '2', 18),
(1336, 224, '3', 18),
(1337, 223, '1', 18),
(1338, 222, '1', 18),
(1339, 221, '1', 18),
(1340, 220, '1', 18),
(1341, 264, '4', 18),
(1342, 258, '4', 18),
(1343, 259, '4', 18),
(1344, 238, '3', 18),
(1345, 239, '2', 18),
(1346, 252, '2', 18),
(1347, 253, '1', 18),
(1348, 250, '2', 18),
(1349, 251, '2', 18),
(1350, 256, '4', 18),
(1351, 257, '4', 18),
(1352, 254, '3', 18),
(1353, 255, '2', 18),
(1354, 245, '4', 18),
(1355, 244, '3', 18),
(1356, 247, '3', 18),
(1357, 260, '4', 18),
(1358, 241, '3', 18),
(1359, 240, '2', 18),
(1360, 243, '5', 18),
(1361, 242, '3', 18),
(1362, 249, '2', 18),
(1363, 248, '2', 18),
(1364, 262, '4', 18),
(1365, 246, '3', 18),
(1366, 264, '4', 18),
(1367, 258, '4', 18),
(1368, 259, '4', 18),
(1369, 238, '3', 18),
(1370, 239, '2', 18),
(1371, 252, '2', 18),
(1372, 253, '1', 18),
(1373, 250, '2', 18),
(1374, 251, '2', 18),
(1375, 256, '4', 18),
(1376, 257, '4', 18),
(1377, 254, '3', 18),
(1378, 255, '2', 18),
(1379, 245, '4', 18),
(1380, 244, '3', 18),
(1381, 247, '3', 18),
(1382, 260, '4', 18),
(1383, 241, '3', 18),
(1384, 240, '2', 18),
(1385, 243, '5', 18),
(1386, 242, '3', 18),
(1387, 249, '2', 18),
(1388, 248, '2', 18),
(1389, 262, '4', 18),
(1390, 246, '3', 18),
(1391, 264, '4', 18),
(1392, 258, '4', 18),
(1393, 259, '4', 18),
(1394, 238, '3', 18),
(1395, 239, '2', 18),
(1396, 252, '2', 18),
(1397, 253, '1', 18),
(1398, 250, '2', 18),
(1399, 251, '2', 18),
(1400, 256, '4', 18),
(1401, 257, '4', 18),
(1402, 254, '3', 18),
(1403, 255, '2', 18),
(1404, 245, '4', 18),
(1405, 244, '3', 18),
(1406, 247, '3', 18),
(1407, 260, '4', 18),
(1408, 241, '3', 18),
(1409, 240, '2', 18),
(1410, 243, '5', 18),
(1411, 242, '3', 18),
(1412, 249, '2', 18),
(1413, 248, '2', 18),
(1414, 262, '4', 18),
(1415, 246, '3', 18),
(1420, 151, '4', 39),
(1421, 150, '3', 39),
(1422, 153, '2', 39),
(1423, 152, '3', 39),
(1424, 155, '3', 39),
(1425, 154, '2', 39),
(1426, 157, '3', 39),
(1427, 156, '4', 39),
(1428, 159, '4', 39),
(1429, 158, '2', 39),
(1430, 133, '1', 39),
(1431, 132, '5', 39),
(1432, 131, '1', 39),
(1433, 130, '3', 39),
(1434, 137, '2', 39),
(1435, 136, '3', 39),
(1436, 135, '1', 39),
(1437, 134, '3', 39),
(1438, 139, '5', 39),
(1439, 138, '1', 39),
(1440, 146, '4', 39),
(1441, 147, '3', 39),
(1442, 144, '1', 39),
(1443, 145, '4', 39),
(1444, 142, '4', 39),
(1445, 143, '3', 39),
(1446, 140, '4', 39),
(1447, 141, '4', 39),
(1448, 148, '3', 39),
(1449, 149, '3', 39),
(1450, 261, '1', 39),
(1451, 123, '1', 39),
(1452, 124, '3', 39),
(1453, 125, '3', 39),
(1454, 126, '4', 39),
(1455, 127, '3', 39),
(1456, 128, '1', 39),
(1457, 129, '5', 39),
(1458, 160, '4', 39),
(1459, 161, '3', 39),
(1460, 162, '2', 39),
(1461, 199, '5', 39),
(1462, 198, '1', 39),
(1463, 195, '2', 39),
(1464, 194, '5', 39),
(1465, 197, '5', 39),
(1466, 196, '3', 39),
(1467, 191, '5', 39),
(1468, 190, '2', 39),
(1470, 192, '1', 39),
(1471, 179, '3', 39),
(1472, 178, '4', 39),
(1473, 177, '1', 39),
(1474, 176, '5', 39),
(1475, 175, '2', 39),
(1476, 174, '3', 39),
(1477, 173, '4', 39),
(1478, 172, '2', 39),
(1479, 171, '5', 39),
(1480, 170, '5', 39),
(1481, 182, '3', 39),
(1482, 183, '5', 39),
(1483, 180, '5', 39),
(1484, 181, '1', 39),
(1485, 186, '4', 39),
(1486, 187, '3', 39),
(1487, 184, '2', 39),
(1488, 185, '3', 39),
(1489, 189, '3', 39),
(1490, 201, '3', 39),
(1491, 200, '3', 39),
(1492, 203, '2', 39),
(1493, 202, '2', 39),
(1494, 204, '2', 39),
(1495, 263, '1', 39),
(1496, 168, '3', 39),
(1497, 169, '2', 39),
(1498, 164, '2', 39),
(1499, 165, '5', 39),
(1500, 166, '1', 39),
(1501, 167, '4', 39),
(1502, 188, '3', 39),
(1503, 163, '2', 39),
(1504, 216, '5', 39),
(1505, 217, '2', 39),
(1506, 214, '3', 39),
(1507, 215, '3', 39),
(1508, 212, '5', 39),
(1509, 213, '4', 39),
(1510, 210, '4', 39),
(1511, 211, '2', 39),
(1512, 218, '4', 39),
(1513, 219, '4', 39),
(1514, 234, '5', 39),
(1515, 235, '1', 39),
(1516, 236, '4', 39),
(1517, 237, '2', 39),
(1518, 230, '5', 39),
(1519, 231, '2', 39),
(1520, 232, '4', 39),
(1521, 233, '5', 39),
(1522, 205, '4', 39),
(1523, 207, '3', 39),
(1524, 206, '4', 39),
(1525, 209, '5', 39),
(1526, 208, '3', 39),
(1527, 229, '4', 39),
(1528, 228, '2', 39),
(1529, 227, '3', 39),
(1530, 226, '4', 39),
(1531, 225, '5', 39),
(1532, 224, '5', 39),
(1533, 223, '4', 39),
(1534, 222, '2', 39),
(1535, 221, '1', 39),
(1536, 220, '4', 39),
(1537, 264, '3', 39),
(1538, 258, '4', 39),
(1539, 259, '1', 39),
(1540, 238, '5', 39),
(1541, 239, '3', 39),
(1542, 252, '1', 39),
(1543, 253, '4', 39),
(1544, 250, '5', 39),
(1545, 251, '4', 39),
(1546, 256, '2', 39),
(1547, 257, '5', 39),
(1548, 254, '2', 39),
(1549, 255, '5', 39),
(1550, 245, '3', 39),
(1551, 244, '2', 39),
(1552, 247, '5', 39),
(1553, 260, '2', 39),
(1554, 241, '5', 39),
(1555, 240, '1', 39),
(1556, 243, '4', 39),
(1557, 242, '2', 39),
(1558, 249, '4', 39),
(1559, 248, '2', 39),
(1560, 262, '2', 39),
(1561, 246, '2', 39),
(1562, 159, '2', 42),
(1563, 158, '3', 42),
(1564, 261, '1', 42),
(1565, 160, '3', 42),
(1566, 161, '4', 42),
(1567, 162, '3', 42),
(1568, 151, '4', 42),
(1569, 150, '3', 42),
(1570, 153, '3', 42),
(1571, 152, '3', 42),
(1572, 155, '3', 42),
(1573, 154, '3', 42),
(1574, 157, '2', 42),
(1575, 156, '4', 42),
(1576, 133, '1', 42),
(1577, 132, '5', 42),
(1578, 131, '2', 42),
(1579, 130, '3', 42),
(1580, 137, '3', 42),
(1581, 136, '3', 42),
(1582, 135, '3', 42),
(1583, 134, '1', 42),
(1584, 139, '2', 42),
(1585, 138, '3', 42),
(1586, 146, '1', 42),
(1587, 147, '1', 42),
(1588, 144, '1', 42),
(1589, 145, '2', 42),
(1590, 142, '2', 42),
(1591, 143, '3', 42),
(1592, 140, '1', 42),
(1593, 141, '5', 42),
(1594, 148, '5', 42),
(1595, 149, '1', 42),
(1596, 123, '1', 42),
(1597, 124, '2', 42),
(1598, 125, '1', 42),
(1599, 126, '1', 42),
(1600, 127, '2', 42),
(1601, 128, '1', 42),
(1602, 129, '4', 42),
(1603, 199, '2', 42),
(1604, 198, '3', 42),
(1605, 195, '3', 42),
(1606, 194, '3', 42),
(1607, 197, '2', 42),
(1608, 196, '4', 42),
(1609, 191, '1', 42),
(1610, 190, '2', 42),
(1612, 192, '1', 42),
(1613, 179, '2', 42),
(1614, 178, '3', 42),
(1615, 177, '2', 42),
(1616, 176, '3', 42),
(1617, 175, '2', 42),
(1618, 174, '3', 42),
(1619, 173, '2', 42),
(1620, 172, '2', 42),
(1621, 171, '3', 42),
(1622, 170, '5', 42),
(1623, 182, '1', 42),
(1624, 183, '1', 42),
(1625, 180, '1', 42),
(1626, 181, '1', 42),
(1627, 186, '2', 42),
(1628, 187, '2', 42),
(1629, 184, '5', 42),
(1630, 185, '2', 42),
(1631, 189, '1', 42),
(1632, 201, '3', 42),
(1633, 200, '4', 42),
(1634, 203, '4', 42),
(1635, 202, '1', 42),
(1636, 204, '3', 42),
(1637, 263, '2', 42),
(1638, 168, '3', 42),
(1639, 169, '1', 42),
(1640, 164, '5', 42),
(1641, 165, '2', 42),
(1642, 166, '1', 42),
(1643, 167, '5', 42),
(1644, 188, '1', 42),
(1645, 163, '1', 42),
(1646, 216, '2', 42),
(1647, 217, '4', 42),
(1648, 214, '3', 42),
(1649, 215, '2', 42),
(1650, 212, '4', 42),
(1651, 213, '5', 42),
(1652, 210, '1', 42),
(1653, 211, '1', 42),
(1654, 218, '4', 42),
(1655, 219, '3', 42),
(1656, 234, '3', 42),
(1657, 235, '3', 42),
(1658, 236, '2', 42),
(1659, 237, '3', 42),
(1660, 230, '4', 42),
(1661, 231, '1', 42),
(1662, 232, '3', 42),
(1663, 233, '3', 42),
(1664, 205, '1', 42),
(1665, 207, '4', 42),
(1666, 206, '2', 42),
(1667, 209, '2', 42),
(1668, 208, '3', 42),
(1669, 229, '5', 42),
(1670, 228, '1', 42),
(1671, 227, '3', 42),
(1672, 226, '4', 42),
(1673, 225, '3', 42),
(1674, 224, '4', 42),
(1675, 223, '2', 42),
(1676, 222, '4', 42),
(1677, 221, '1', 42),
(1678, 220, '3', 42),
(1679, 264, '1', 42),
(1680, 258, '2', 42),
(1681, 259, '1', 42),
(1682, 238, '4', 42),
(1683, 239, '2', 42),
(1684, 252, '3', 42),
(1685, 253, '3', 42),
(1686, 250, '1', 42),
(1687, 251, '5', 42),
(1688, 256, '5', 42),
(1689, 257, '2', 42),
(1690, 254, '3', 42),
(1691, 255, '2', 42),
(1692, 245, '4', 42),
(1693, 244, '4', 42),
(1694, 247, '3', 42),
(1695, 260, '3', 42),
(1696, 241, '5', 42),
(1697, 240, '2', 42),
(1698, 243, '2', 42),
(1699, 242, '2', 42),
(1700, 249, '2', 42),
(1701, 248, '3', 42),
(1702, 262, '3', 42),
(1703, 246, '2', 42),
(2271, 261, '1', 46),
(2272, 160, '3', 46),
(2273, 161, '3', 46),
(2274, 162, '3', 46),
(2275, 155, '5', 46),
(2276, 157, '4', 46),
(2277, 156, '1', 46),
(2278, 159, '3', 46),
(2279, 158, '2', 46),
(2280, 153, '2', 46),
(2281, 152, '2', 46),
(2282, 154, '1', 46),
(2424, 261, '2', 58),
(2425, 162, '2', 58),
(2426, 151, '3', 58),
(2427, 150, '2', 58),
(2428, 153, '1', 58),
(2429, 152, '2', 58),
(2430, 155, '3', 58),
(2431, 154, '5', 58),
(2432, 157, '2', 58),
(2433, 156, '2', 58),
(2434, 159, '2', 58),
(2435, 158, '2', 58),
(2436, 133, '2', 58),
(2437, 132, '2', 58),
(2438, 131, '3', 58),
(2439, 130, '5', 58),
(2440, 137, '5', 58),
(2441, 136, '2', 58),
(2442, 135, '4', 58),
(2443, 134, '4', 58),
(2444, 139, '1', 58),
(2445, 138, '3', 58),
(2446, 146, '1', 58),
(2447, 147, '2', 58),
(2448, 144, '2', 58),
(2449, 145, '1', 58),
(2450, 142, '1', 58),
(2451, 143, '1', 58),
(2452, 140, '1', 58),
(2453, 141, '1', 58),
(2454, 148, '5', 58),
(2455, 149, '2', 58),
(2456, 123, '5', 58),
(2457, 124, '3', 58),
(2458, 125, '1', 58),
(2459, 126, '5', 58),
(2460, 127, '4', 58),
(2461, 128, '2', 58),
(2462, 129, '3', 58),
(2463, 160, '1', 58),
(2464, 161, '3', 58),
(2465, 204, '2', 58),
(2466, 263, '3', 58),
(2467, 199, '2', 58),
(2468, 198, '3', 58),
(2469, 195, '1', 58),
(2470, 194, '1', 58),
(2471, 197, '2', 58),
(2472, 196, '2', 58),
(2473, 191, '1', 58),
(2474, 190, '1', 58),
(2475, 192, '5', 58),
(2476, 179, '3', 58),
(2477, 178, '1', 58),
(2478, 177, '1', 58),
(2479, 176, '1', 58),
(2480, 175, '2', 58),
(2481, 174, '1', 58),
(2482, 173, '2', 58),
(2483, 172, '1', 58),
(2484, 171, '3', 58),
(2485, 170, '2', 58),
(2486, 182, '5', 58),
(2487, 183, '2', 58),
(2488, 180, '1', 58),
(2489, 181, '2', 58),
(2490, 186, '5', 58),
(2491, 187, '1', 58),
(2492, 184, '2', 58),
(2493, 185, '5', 58),
(2494, 189, '1', 58),
(2495, 201, '2', 58),
(2496, 200, '2', 58),
(2497, 203, '2', 58),
(2498, 202, '1', 58),
(2499, 168, '3', 58),
(2500, 169, '2', 58),
(2501, 164, '3', 58),
(2502, 165, '3', 58),
(2503, 166, '2', 58),
(2504, 167, '2', 58),
(2505, 188, '1', 58),
(2506, 163, '2', 58),
(2507, 216, '2', 58),
(2508, 217, '3', 58),
(2509, 214, '5', 58),
(2510, 215, '1', 58),
(2511, 212, '5', 58),
(2512, 213, '3', 58),
(2513, 210, '2', 58),
(2514, 211, '2', 58),
(2515, 218, '2', 58),
(2516, 219, '2', 58),
(2517, 234, '2', 58),
(2518, 235, '1', 58),
(2519, 236, '1', 58),
(2520, 237, '2', 58),
(2521, 230, '3', 58),
(2522, 231, '2', 58),
(2523, 232, '3', 58),
(2524, 233, '1', 58),
(2525, 205, '3', 58),
(2526, 207, '2', 58),
(2527, 206, '3', 58),
(2528, 209, '2', 58),
(2529, 208, '3', 58),
(2530, 229, '5', 58),
(2531, 228, '5', 58),
(2532, 227, '5', 58),
(2533, 226, '2', 58),
(2534, 225, '2', 58),
(2535, 224, '2', 58),
(2536, 223, '3', 58),
(2537, 222, '2', 58),
(2538, 221, '2', 58),
(2539, 220, '4', 58),
(2540, 264, '1', 58),
(2541, 258, '3', 58),
(2542, 259, '2', 58),
(2543, 238, '5', 58),
(2544, 239, '2', 58),
(2545, 252, '1', 58),
(2546, 253, '1', 58),
(2547, 250, '3', 58),
(2548, 251, '3', 58),
(2549, 256, '4', 58),
(2550, 257, '2', 58),
(2551, 254, '3', 58),
(2552, 255, '3', 58),
(2553, 245, '4', 58),
(2554, 244, '3', 58),
(2555, 247, '3', 58),
(2556, 260, '1', 58),
(2557, 241, '4', 58),
(2558, 240, '3', 58),
(2559, 243, '5', 58),
(2560, 242, '5', 58),
(2561, 249, '5', 58),
(2562, 248, '4', 58),
(2563, 262, '1', 58),
(2564, 246, '5', 58),
(2565, 261, '1', 59),
(2566, 161, '3', 59),
(2567, 162, '2', 59),
(2568, 151, '4', 60),
(2569, 150, '4', 60),
(2570, 153, '3', 60),
(2571, 152, '4', 60),
(2572, 155, '4', 60),
(2573, 154, '5', 60),
(2574, 157, '4', 60),
(2575, 156, '4', 60),
(2576, 159, '5', 60),
(2577, 158, '5', 60),
(2578, 133, '4', 60),
(2579, 132, '5', 60),
(2580, 131, '5', 60),
(2581, 130, '2', 60),
(2582, 137, '4', 60),
(2583, 136, '4', 60),
(2584, 135, '5', 60),
(2585, 134, '5', 60),
(2586, 139, '4', 60),
(2587, 138, '5', 60),
(2588, 146, '4', 60),
(2589, 147, '5', 60),
(2590, 144, '5', 60),
(2591, 145, '5', 60),
(2592, 142, '4', 60),
(2593, 143, '3', 60),
(2594, 140, '4', 60),
(2595, 141, '4', 60),
(2596, 148, '4', 60),
(2597, 149, '4', 60),
(2598, 261, '4', 60),
(2599, 123, '5', 60),
(2600, 124, '5', 60),
(2601, 125, '3', 60),
(2602, 126, '3', 60),
(2603, 127, '4', 60),
(2604, 128, '4', 60),
(2605, 129, '5', 60),
(2606, 160, '5', 60),
(2607, 161, '5', 60),
(2608, 162, '5', 60),
(2609, 199, '4', 60),
(2610, 198, '5', 60),
(2611, 195, '3', 60),
(2612, 194, '3', 60),
(2613, 197, '2', 60),
(2614, 196, '4', 60),
(2615, 191, '4', 60),
(2616, 190, '4', 60),
(2617, 192, '4', 60),
(2618, 179, '3', 60),
(2619, 178, '5', 60),
(2620, 177, '4', 60),
(2621, 176, '4', 60),
(2622, 175, '5', 60),
(2623, 174, '4', 60),
(2624, 173, '4', 60),
(2625, 172, '3', 60),
(2626, 171, '3', 60),
(2627, 170, '4', 60),
(2628, 182, '5', 60),
(2629, 183, '4', 60),
(2630, 180, '4', 60),
(2631, 181, '4', 60),
(2632, 186, '2', 60),
(2633, 187, '4', 60),
(2634, 184, '4', 60),
(2635, 185, '4', 60),
(2636, 189, '4', 60),
(2637, 201, '5', 60),
(2638, 200, '5', 60),
(2639, 203, '3', 60),
(2640, 202, '5', 60),
(2641, 204, '2', 60),
(2642, 263, '4', 60),
(2643, 168, '3', 60),
(2644, 169, '4', 60),
(2645, 164, '5', 60),
(2646, 165, '4', 60),
(2647, 166, '4', 60),
(2648, 167, '5', 60),
(2649, 188, '4', 60),
(2650, 163, '5', 60),
(2651, 216, '4', 60),
(2652, 217, '5', 60),
(2653, 214, '4', 60),
(2654, 215, '4', 60),
(2655, 212, '4', 60),
(2656, 213, '4', 60),
(2657, 210, '5', 60),
(2658, 211, '4', 60),
(2659, 218, '4', 60),
(2660, 219, '4', 60),
(2661, 234, '4', 60),
(2662, 235, '4', 60),
(2663, 236, '4', 60),
(2664, 237, '4', 60),
(2665, 230, '3', 60),
(2666, 231, '4', 60),
(2667, 232, '4', 60),
(2668, 233, '3', 60),
(2669, 205, '4', 60),
(2670, 207, '4', 60),
(2671, 206, '4', 60),
(2672, 209, '3', 60),
(2673, 208, '3', 60),
(2674, 229, '4', 60),
(2675, 228, '5', 60),
(2676, 227, '4', 60),
(2677, 226, '4', 60),
(2678, 225, '4', 60),
(2679, 224, '4', 60),
(2680, 223, '4', 60),
(2681, 222, '5', 60),
(2682, 221, '5', 60),
(2683, 220, '4', 60),
(2684, 264, '2', 60),
(2685, 258, '4', 60),
(2686, 259, '3', 60),
(2687, 238, '4', 60),
(2688, 239, '3', 60),
(2689, 252, '3', 60),
(2690, 253, '4', 60),
(2691, 250, '4', 60),
(2692, 251, '4', 60),
(2693, 256, '4', 60),
(2694, 257, '4', 60),
(2695, 254, '5', 60),
(2696, 255, '3', 60),
(2697, 245, '4', 60),
(2698, 244, '4', 60),
(2699, 247, '3', 60),
(2700, 260, '3', 60),
(2701, 241, '4', 60),
(2702, 240, '4', 60),
(2703, 243, '5', 60),
(2704, 242, '3', 60),
(2705, 249, '5', 60),
(2706, 248, '3', 60),
(2707, 262, '4', 60),
(2708, 246, '5', 60),
(2709, 151, '4', 51),
(2710, 150, '4', 51),
(2711, 153, '4', 51),
(2712, 152, '2', 51),
(2713, 155, '4', 51),
(2714, 154, '2', 51),
(2715, 157, '4', 51),
(2716, 156, '2', 51),
(2717, 159, '2', 51),
(2718, 158, '4', 51),
(2719, 133, '2', 51),
(2720, 132, '4', 51),
(2721, 131, '5', 51),
(2722, 130, '4', 51),
(2723, 137, '5', 51),
(2724, 136, '4', 51),
(2725, 135, '4', 51),
(2726, 134, '4', 51),
(2727, 139, '3', 51),
(2728, 138, '4', 51),
(2729, 146, '3', 51),
(2730, 147, '2', 51),
(2731, 144, '1', 51),
(2732, 145, '1', 51),
(2733, 142, '1', 51),
(2734, 143, '2', 51),
(2735, 140, '2', 51),
(2736, 141, '2', 51),
(2737, 148, '2', 51),
(2738, 149, '4', 51),
(2739, 261, '5', 51),
(2740, 123, '5', 51),
(2741, 124, '4', 51),
(2742, 125, '3', 51),
(2743, 126, '4', 51),
(2744, 127, '4', 51),
(2745, 128, '4', 51),
(2746, 129, '5', 51),
(2747, 160, '2', 51),
(2748, 161, '2', 51),
(2749, 162, '1', 51),
(2750, 199, '2', 51),
(2751, 198, '4', 51),
(2752, 195, '2', 51),
(2753, 194, '2', 51),
(2754, 197, '4', 51),
(2755, 196, '4', 51),
(2756, 191, '2', 51),
(2757, 190, '2', 51),
(2758, 192, '2', 51),
(2759, 179, '4', 51),
(2760, 178, '4', 51),
(2761, 177, '4', 51),
(2762, 176, '4', 51),
(2763, 175, '3', 51),
(2764, 174, '4', 51),
(2765, 173, '3', 51),
(2766, 172, '3', 51),
(2767, 171, '4', 51),
(2768, 170, '3', 51),
(2769, 182, '4', 51),
(2770, 183, '2', 51),
(2771, 180, '4', 51),
(2772, 181, '4', 51),
(2773, 186, '4', 51),
(2774, 187, '2', 51),
(2775, 184, '4', 51),
(2776, 185, '4', 51),
(2777, 189, '2', 51),
(2778, 201, '4', 51),
(2779, 200, '4', 51),
(2780, 203, '1', 51),
(2781, 202, '5', 51),
(2782, 204, '1', 51),
(2783, 263, '2', 51),
(2784, 168, '3', 51),
(2785, 169, '3', 51),
(2786, 164, '4', 51),
(2787, 165, '4', 51),
(2788, 166, '4', 51),
(2789, 167, '4', 51),
(2790, 188, '2', 51),
(2791, 163, '2', 51),
(2792, 216, '3', 51),
(2793, 217, '3', 51),
(2794, 214, '3', 51),
(2795, 215, '4', 51),
(2796, 212, '3', 51),
(2797, 213, '4', 51),
(2798, 210, '4', 51),
(2799, 211, '4', 51),
(2800, 218, '4', 51),
(2801, 219, '4', 51),
(2802, 234, '2', 51),
(2803, 235, '2', 51),
(2804, 236, '4', 51),
(2805, 237, '2', 51),
(2806, 230, '2', 51),
(2807, 231, '2', 51),
(2808, 232, '2', 51),
(2809, 233, '2', 51),
(2810, 205, '4', 51),
(2811, 207, '4', 51),
(2812, 206, '4', 51),
(2813, 209, '4', 51),
(2814, 208, '2', 51),
(2815, 229, '2', 51),
(2816, 228, '2', 51),
(2817, 227, '4', 51),
(2818, 226, '3', 51),
(2819, 225, '4', 51),
(2820, 224, '5', 51),
(2821, 223, '1', 51),
(2822, 222, '3', 51),
(2823, 221, '3', 51),
(2824, 220, '4', 51),
(2825, 264, '1', 51),
(2826, 258, '1', 51),
(2827, 259, '4', 51),
(2828, 238, '4', 51),
(2829, 239, '4', 51),
(2830, 252, '4', 51),
(2831, 253, '4', 51),
(2832, 250, '2', 51),
(2833, 251, '2', 51),
(2834, 256, '2', 51),
(2835, 257, '2', 51),
(2836, 254, '1', 51),
(2837, 255, '2', 51),
(2838, 245, '4', 51),
(2839, 244, '4', 51),
(2840, 247, '2', 51),
(2841, 260, '4', 51),
(2842, 241, '4', 51),
(2843, 240, '4', 51),
(2844, 243, '4', 51),
(2845, 242, '4', 51),
(2846, 249, '2', 51),
(2847, 248, '2', 51),
(2848, 262, '4', 51),
(2849, 246, '4', 51),
(2850, 151, '5', 62),
(2851, 150, '5', 62),
(2852, 153, '5', 62),
(2853, 152, '5', 62),
(2854, 155, '5', 62),
(2855, 154, '4', 62),
(2856, 157, '5', 62),
(2857, 156, '5', 62),
(2858, 159, '2', 62),
(2859, 158, '4', 62),
(2860, 133, '5', 62),
(2861, 132, '5', 62),
(2862, 131, '4', 62),
(2863, 130, '5', 62),
(2864, 137, '5', 62),
(2865, 136, '5', 62),
(2866, 135, '5', 62),
(2867, 134, '4', 62),
(2868, 139, '4', 62),
(2869, 138, '4', 62),
(2870, 146, '4', 62),
(2871, 147, '5', 62),
(2872, 144, '2', 62),
(2873, 145, '3', 62),
(2874, 142, '5', 62),
(2875, 143, '5', 62),
(2876, 140, '5', 62),
(2877, 141, '4', 62),
(2878, 148, '4', 62),
(2879, 149, '5', 62),
(2880, 261, '5', 62),
(2881, 123, '4', 62),
(2882, 124, '4', 62),
(2883, 125, '3', 62),
(2884, 126, '3', 62),
(2885, 127, '4', 62),
(2886, 128, '5', 62),
(2887, 129, '4', 62),
(2888, 160, '4', 62),
(2889, 161, '2', 62),
(2890, 162, '3', 62),
(2891, 199, '2', 62),
(2892, 198, '4', 62),
(2893, 195, '2', 62),
(2894, 194, '2', 62),
(2895, 197, '3', 62),
(2896, 196, '5', 62),
(2897, 191, '5', 62),
(2898, 190, '2', 62),
(2899, 192, '4', 62),
(2900, 179, '4', 62),
(2901, 178, '5', 62),
(2902, 177, '2', 62),
(2903, 176, '4', 62),
(2904, 175, '2', 62),
(2905, 174, '2', 62),
(2906, 173, '2', 62),
(2907, 172, '2', 62),
(2908, 171, '5', 62),
(2909, 170, '3', 62),
(2910, 182, '4', 62),
(2911, 183, '2', 62),
(2912, 180, '2', 62),
(2913, 181, '2', 62),
(2914, 186, '5', 62),
(2915, 187, '3', 62),
(2916, 184, '2', 62),
(2917, 185, '5', 62),
(2918, 189, '1', 62),
(2919, 201, '5', 62),
(2920, 200, '5', 62),
(2921, 203, '2', 62),
(2922, 202, '5', 62),
(2923, 204, '4', 62),
(2924, 263, '3', 62),
(2925, 168, '4', 62),
(2926, 169, '4', 62),
(2927, 164, '4', 62),
(2928, 165, '4', 62),
(2929, 166, '4', 62),
(2930, 167, '5', 62),
(2931, 188, '4', 62),
(2932, 163, '4', 62),
(2933, 216, '4', 62),
(2934, 217, '2', 62),
(2935, 214, '4', 62),
(2936, 215, '3', 62),
(2937, 212, '4', 62),
(2938, 213, '4', 62),
(2939, 210, '4', 62),
(2940, 211, '4', 62),
(2941, 218, '4', 62),
(2942, 219, '2', 62),
(2943, 234, '4', 62),
(2944, 235, '3', 62),
(2945, 236, '4', 62),
(2946, 237, '4', 62),
(2947, 230, '5', 62),
(2948, 231, '4', 62),
(2949, 232, '4', 62),
(2950, 233, '4', 62),
(2951, 205, '4', 62),
(2952, 207, '4', 62),
(2953, 206, '4', 62),
(2954, 209, '4', 62),
(2955, 208, '4', 62),
(2956, 229, '4', 62),
(2957, 228, '4', 62),
(2958, 227, '4', 62),
(2959, 226, '4', 62),
(2960, 225, '4', 62),
(2961, 224, '4', 62),
(2962, 223, '4', 62),
(2963, 222, '4', 62),
(2964, 221, '4', 62),
(2965, 220, '5', 62),
(2966, 216, '4', 62),
(2967, 217, '2', 62),
(2968, 214, '4', 62),
(2969, 215, '3', 62),
(2970, 212, '4', 62),
(2971, 213, '4', 62),
(2972, 210, '4', 62),
(2973, 211, '4', 62),
(2974, 218, '4', 62),
(2975, 219, '2', 62),
(2976, 234, '4', 62),
(2977, 235, '3', 62),
(2978, 236, '4', 62),
(2979, 237, '4', 62),
(2980, 230, '5', 62),
(2981, 231, '4', 62),
(2982, 232, '4', 62),
(2983, 233, '4', 62),
(2984, 205, '4', 62),
(2985, 207, '4', 62),
(2986, 206, '4', 62),
(2987, 209, '4', 62),
(2988, 208, '4', 62),
(2989, 229, '4', 62),
(2990, 228, '4', 62),
(2991, 227, '4', 62),
(2992, 226, '4', 62),
(2993, 225, '4', 62),
(2994, 224, '4', 62),
(2995, 223, '4', 62),
(2996, 222, '4', 62),
(2997, 221, '4', 62),
(2998, 220, '5', 62),
(2999, 264, '1', 62),
(3000, 258, '5', 62),
(3001, 259, '2', 62),
(3002, 238, '4', 62),
(3003, 239, '2', 62),
(3004, 252, '1', 62),
(3005, 253, '5', 62),
(3006, 250, '5', 62),
(3007, 251, '4', 62),
(3008, 256, '3', 62),
(3009, 257, '5', 62),
(3010, 254, '5', 62),
(3011, 255, '4', 62),
(3012, 245, '4', 62),
(3013, 244, '3', 62),
(3014, 247, '5', 62),
(3015, 260, '2', 62),
(3016, 241, '2', 62),
(3017, 240, '2', 62),
(3018, 243, '3', 62),
(3019, 242, '4', 62),
(3020, 249, '4', 62),
(3021, 248, '3', 62),
(3022, 262, '2', 62),
(3023, 246, '5', 62),
(3024, 151, '3', 63),
(3025, 150, '4', 63),
(3026, 153, '3', 63),
(3027, 152, '4', 63),
(3028, 155, '5', 63),
(3029, 154, '3', 63),
(3030, 157, '4', 63),
(3031, 156, '4', 63),
(3032, 159, '4', 63),
(3033, 158, '4', 63),
(3034, 133, '3', 63),
(3035, 132, '4', 63),
(3036, 131, '5', 63),
(3037, 130, '2', 63),
(3038, 137, '4', 63),
(3039, 136, '3', 63),
(3040, 135, '4', 63),
(3041, 134, '5', 63),
(3042, 139, '3', 63),
(3043, 138, '4', 63),
(3044, 146, '4', 63),
(3045, 147, '4', 63),
(3046, 144, '3', 63),
(3047, 145, '4', 63),
(3048, 142, '3', 63),
(3049, 143, '4', 63),
(3050, 140, '4', 63),
(3051, 141, '4', 63),
(3052, 148, '4', 63),
(3053, 149, '4', 63),
(3054, 261, '5', 63),
(3055, 123, '4', 63),
(3056, 124, '4', 63),
(3057, 125, '3', 63),
(3058, 126, '3', 63),
(3059, 127, '4', 63),
(3060, 128, '3', 63),
(3061, 129, '3', 63),
(3062, 160, '4', 63),
(3063, 161, '4', 63),
(3064, 162, '4', 63),
(3065, 199, '3', 63),
(3066, 198, '4', 63),
(3067, 195, '3', 63),
(3068, 194, '3', 63),
(3069, 197, '4', 63),
(3070, 196, '4', 63),
(3071, 191, '4', 63),
(3072, 190, '3', 63),
(3073, 192, '4', 63),
(3074, 179, '3', 63),
(3075, 178, '4', 63),
(3076, 177, '3', 63),
(3077, 176, '3', 63),
(3078, 175, '3', 63),
(3079, 174, '4', 63),
(3080, 173, '4', 63),
(3081, 172, '3', 63),
(3082, 171, '2', 63),
(3083, 170, '2', 63),
(3084, 182, '4', 63),
(3085, 183, '3', 63),
(3086, 180, '3', 63),
(3087, 181, '4', 63),
(3088, 186, '2', 63),
(3089, 187, '4', 63),
(3090, 184, '3', 63),
(3091, 185, '4', 63),
(3092, 189, '4', 63),
(3093, 201, '4', 63),
(3094, 200, '3', 63),
(3095, 203, '2', 63),
(3096, 202, '4', 63),
(3097, 204, '3', 63),
(3098, 263, '3', 63),
(3099, 168, '3', 63),
(3100, 169, '3', 63),
(3101, 164, '4', 63),
(3102, 165, '4', 63),
(3103, 166, '3', 63),
(3104, 167, '3', 63),
(3105, 188, '4', 63),
(3106, 163, '4', 63),
(3107, 216, '5', 63),
(3108, 217, '4', 63),
(3109, 214, '4', 63),
(3110, 215, '4', 63),
(3111, 212, '4', 63),
(3112, 213, '5', 63),
(3113, 210, '5', 63),
(3114, 211, '3', 63),
(3115, 218, '4', 63),
(3116, 219, '3', 63),
(3117, 234, '5', 63),
(3118, 235, '5', 63),
(3119, 236, '4', 63),
(3120, 237, '5', 63),
(3121, 230, '5', 63),
(3122, 231, '4', 63),
(3123, 232, '5', 63),
(3124, 233, '4', 63),
(3125, 205, '4', 63),
(3126, 207, '3', 63),
(3127, 206, '4', 63),
(3128, 209, '3', 63),
(3129, 208, '4', 63),
(3130, 229, '5', 63),
(3131, 228, '5', 63),
(3132, 227, '5', 63),
(3133, 226, '5', 63),
(3134, 225, '4', 63),
(3135, 224, '4', 63),
(3136, 223, '4', 63),
(3137, 222, '4', 63),
(3138, 221, '3', 63),
(3139, 220, '4', 63),
(3140, 264, '3', 63),
(3141, 258, '3', 63),
(3142, 259, '3', 63),
(3143, 238, '4', 63),
(3144, 239, '4', 63),
(3145, 252, '3', 63),
(3146, 253, '3', 63),
(3147, 250, '2', 63),
(3148, 251, '3', 63),
(3149, 256, '3', 63),
(3150, 257, '4', 63),
(3151, 254, '3', 63),
(3152, 255, '3', 63),
(3153, 245, '4', 63),
(3154, 244, '4', 63),
(3155, 247, '4', 63),
(3156, 260, '3', 63),
(3157, 241, '3', 63),
(3158, 240, '4', 63),
(3159, 243, '4', 63),
(3160, 242, '3', 63),
(3161, 249, '3', 63),
(3162, 248, '3', 63),
(3163, 262, '4', 63),
(3164, 246, '4', 63),
(3165, 151, '3', 67),
(3166, 150, '5', 67),
(3167, 153, '1', 67),
(3168, 152, '2', 67),
(3169, 155, '3', 67),
(3170, 154, '3', 67),
(3171, 157, '1', 67),
(3172, 156, '2', 67),
(3173, 159, '4', 67),
(3174, 158, '3', 67),
(3175, 133, '5', 67),
(3176, 132, '1', 67),
(3177, 131, '2', 67),
(3178, 130, '3', 67),
(3179, 137, '5', 67),
(3180, 136, '4', 67),
(3181, 135, '4', 67),
(3182, 134, '3', 67),
(3183, 139, '1', 67),
(3184, 138, '3', 67),
(3185, 146, '3', 67),
(3186, 147, '2', 67),
(3187, 144, '5', 67),
(3188, 145, '4', 67),
(3189, 142, '4', 67),
(3190, 143, '4', 67),
(3191, 140, '5', 67),
(3192, 141, '2', 67),
(3193, 148, '5', 67),
(3194, 149, '2', 67),
(3195, 261, '2', 67),
(3196, 123, '1', 67),
(3197, 124, '4', 67),
(3198, 125, '4', 67),
(3199, 126, '2', 67),
(3200, 127, '5', 67),
(3201, 128, '2', 67),
(3202, 129, '4', 67),
(3203, 160, '5', 67),
(3204, 161, '5', 67),
(3205, 162, '4', 67),
(3206, 199, '1', 67),
(3207, 198, '2', 67),
(3208, 195, '2', 67),
(3209, 194, '4', 67),
(3210, 197, '5', 67),
(3211, 196, '5', 67),
(3212, 191, '5', 67),
(3213, 190, '4', 67),
(3214, 192, '3', 67),
(3215, 179, '5', 67),
(3216, 178, '3', 67),
(3217, 177, '5', 67),
(3218, 176, '3', 67),
(3219, 175, '3', 67),
(3220, 174, '3', 67),
(3221, 173, '4', 67),
(3222, 172, '1', 67),
(3223, 171, '4', 67),
(3224, 170, '4', 67),
(3225, 182, '2', 67),
(3226, 183, '5', 67),
(3227, 180, '4', 67),
(3228, 181, '3', 67),
(3229, 186, '3', 67),
(3230, 187, '3', 67),
(3231, 184, '4', 67),
(3232, 185, '3', 67),
(3233, 189, '1', 67),
(3234, 201, '5', 67),
(3235, 200, '5', 67),
(3236, 203, '5', 67),
(3237, 202, '3', 67),
(3238, 204, '1', 67),
(3239, 263, '3', 67),
(3240, 168, '3', 67),
(3241, 169, '3', 67),
(3242, 164, '5', 67),
(3243, 165, '2', 67),
(3244, 166, '3', 67),
(3245, 167, '2', 67),
(3246, 188, '5', 67),
(3247, 163, '5', 67),
(3248, 216, '5', 67),
(3249, 217, '3', 67),
(3250, 214, '5', 67),
(3251, 215, '5', 67),
(3252, 212, '5', 67),
(3253, 213, '5', 67),
(3254, 210, '4', 67),
(3255, 211, '2', 67),
(3256, 218, '4', 67),
(3257, 219, '4', 67),
(3258, 234, '5', 67),
(3259, 235, '5', 67),
(3260, 236, '4', 67),
(3261, 237, '4', 67),
(3262, 230, '2', 67),
(3263, 231, '5', 67),
(3264, 232, '3', 67),
(3265, 233, '3', 67),
(3266, 205, '5', 67),
(3267, 207, '3', 67),
(3268, 206, '4', 67),
(3269, 209, '5', 67),
(3270, 208, '5', 67),
(3271, 229, '5', 67),
(3272, 228, '3', 67),
(3273, 227, '4', 67),
(3274, 226, '5', 67),
(3275, 225, '3', 67),
(3276, 224, '3', 67),
(3277, 223, '4', 67),
(3278, 222, '2', 67),
(3279, 221, '5', 67),
(3280, 220, '3', 67),
(3281, 264, '1', 67),
(3282, 258, '3', 67),
(3283, 259, '3', 67),
(3284, 238, '5', 67),
(3285, 239, '4', 67),
(3286, 252, '4', 67),
(3287, 253, '3', 67),
(3288, 250, '5', 67),
(3289, 251, '4', 67),
(3290, 256, '2', 67),
(3291, 257, '1', 67),
(3292, 254, '3', 67),
(3293, 255, '4', 67),
(3294, 245, '3', 67),
(3295, 244, '4', 67),
(3296, 247, '4', 67),
(3297, 260, '2', 67),
(3298, 241, '3', 67),
(3299, 240, '3', 67),
(3300, 243, '5', 67),
(3301, 242, '3', 67),
(3302, 249, '3', 67),
(3303, 248, '3', 67),
(3304, 262, '1', 67),
(3305, 246, '3', 67),
(3306, 151, '3', 70),
(3307, 150, '4', 70),
(3308, 153, '3', 70),
(3309, 152, '3', 70),
(3310, 155, '5', 70),
(3311, 154, '4', 70),
(3312, 157, '3', 70),
(3313, 156, '3', 70),
(3314, 159, '4', 70),
(3315, 158, '2', 70),
(3316, 133, '4', 70),
(3317, 132, '5', 70),
(3318, 131, '5', 70),
(3319, 130, '4', 70),
(3320, 137, '5', 70),
(3321, 136, '4', 70),
(3322, 135, '5', 70),
(3323, 134, '5', 70),
(3324, 139, '2', 70),
(3325, 138, '4', 70),
(3326, 146, '4', 70),
(3327, 147, '5', 70),
(3328, 144, '2', 70),
(3329, 145, '4', 70),
(3330, 142, '3', 70),
(3331, 143, '3', 70),
(3332, 140, '5', 70),
(3333, 141, '4', 70),
(3334, 148, '4', 70),
(3335, 149, '2', 70),
(3336, 261, '3', 70),
(3337, 123, '4', 70),
(3338, 124, '5', 70),
(3339, 125, '4', 70),
(3340, 126, '3', 70),
(3341, 127, '5', 70),
(3342, 128, '2', 70),
(3343, 129, '5', 70),
(3344, 160, '2', 70),
(3345, 161, '4', 70),
(3346, 162, '2', 70),
(3347, 151, '4', 69),
(3348, 150, '4', 69),
(3349, 153, '5', 69),
(3350, 152, '5', 69),
(3351, 155, '5', 69),
(3352, 154, '1', 69),
(3353, 157, '5', 69),
(3354, 156, '2', 69),
(3355, 159, '4', 69),
(3356, 158, '2', 69),
(3357, 133, '1', 69),
(3358, 132, '5', 69),
(3359, 131, '5', 69),
(3360, 130, '1', 69),
(3361, 137, '5', 69),
(3362, 136, '5', 69),
(3363, 135, '5', 69),
(3364, 134, '5', 69),
(3365, 139, '5', 69),
(3366, 138, '5', 69),
(3367, 146, '2', 69),
(3368, 147, '2', 69),
(3369, 144, '5', 69),
(3370, 145, '5', 69),
(3371, 142, '1', 69),
(3372, 143, '1', 69),
(3373, 140, '1', 69),
(3374, 141, '1', 69),
(3375, 148, '1', 69),
(3376, 149, '1', 69),
(3377, 261, '2', 69),
(3378, 123, '5', 69),
(3379, 124, '5', 69),
(3380, 125, '1', 69),
(3381, 126, '1', 69),
(3382, 127, '5', 69),
(3383, 128, '5', 69),
(3384, 129, '5', 69),
(3385, 160, '5', 69),
(3386, 161, '5', 69),
(3387, 162, '5', 69),
(3388, 151, '5', 71),
(3389, 150, '5', 71),
(3390, 153, '5', 71),
(3391, 152, '5', 71),
(3392, 155, '4', 71),
(3393, 154, '4', 71),
(3394, 157, '4', 71),
(3395, 156, '2', 71),
(3396, 159, '2', 71),
(3397, 158, '5', 71),
(3398, 133, '1', 71),
(3399, 132, '4', 71),
(3400, 131, '2', 71),
(3401, 130, '1', 71),
(3402, 137, '4', 71),
(3403, 136, '3', 71),
(3404, 135, '3', 71),
(3405, 134, '5', 71),
(3406, 139, '2', 71),
(3407, 138, '3', 71),
(3408, 146, '5', 71),
(3409, 147, '4', 71),
(3410, 144, '1', 71),
(3411, 145, '5', 71),
(3412, 142, '2', 71),
(3413, 143, '1', 71),
(3414, 140, '1', 71),
(3415, 141, '1', 71),
(3416, 148, '5', 71),
(3417, 149, '5', 71),
(3418, 261, '2', 71),
(3419, 123, '4', 71),
(3420, 124, '3', 71),
(3421, 125, '2', 71),
(3422, 126, '2', 71),
(3423, 127, '5', 71),
(3424, 128, '2', 71),
(3425, 129, '1', 71),
(3426, 160, '2', 71),
(3427, 161, '2', 71),
(3428, 162, '3', 71),
(3429, 199, '1', 69),
(3430, 198, '5', 69),
(3431, 195, '1', 69),
(3432, 194, '1', 69),
(3433, 197, '5', 69),
(3434, 196, '5', 69),
(3435, 191, '5', 69),
(3436, 190, '1', 69),
(3437, 192, '1', 69),
(3438, 179, '1', 69),
(3439, 178, '4', 69),
(3440, 177, '1', 69),
(3441, 176, '1', 69),
(3442, 175, '1', 69),
(3443, 174, '1', 69),
(3444, 173, '3', 69),
(3445, 172, '1', 69),
(3446, 171, '5', 69),
(3447, 170, '5', 69),
(3448, 182, '5', 69),
(3449, 183, '4', 69),
(3450, 180, '1', 69),
(3451, 181, '1', 69),
(3452, 186, '1', 69),
(3453, 187, '1', 69),
(3454, 184, '4', 69),
(3455, 185, '4', 69),
(3456, 189, '5', 69),
(3457, 201, '5', 69),
(3458, 200, '5', 69),
(3459, 203, '2', 69),
(3460, 202, '4', 69),
(3461, 204, '2', 69),
(3462, 263, '1', 69),
(3463, 168, '5', 69),
(3464, 169, '3', 69),
(3465, 164, '3', 69),
(3466, 165, '5', 69),
(3467, 166, '5', 69),
(3468, 167, '5', 69),
(3469, 188, '1', 69),
(3470, 163, '4', 69),
(3471, 199, '3', 70),
(3472, 198, '3', 70),
(3473, 195, '2', 70),
(3474, 194, '5', 70),
(3475, 197, '4', 70),
(3476, 196, '5', 70),
(3477, 191, '5', 70),
(3478, 190, '5', 70),
(3479, 192, '4', 70),
(3480, 179, '4', 70),
(3481, 178, '3', 70),
(3482, 177, '2', 70),
(3483, 176, '4', 70),
(3484, 175, '4', 70),
(3485, 174, '4', 70),
(3486, 173, '2', 70),
(3487, 172, '2', 70),
(3488, 171, '2', 70),
(3489, 170, '3', 70),
(3490, 182, '4', 70),
(3491, 183, '4', 70),
(3492, 180, '4', 70),
(3493, 181, '4', 70),
(3494, 186, '2', 70),
(3495, 187, '4', 70),
(3496, 184, '4', 70),
(3497, 185, '3', 70),
(3498, 189, '4', 70),
(3499, 201, '2', 70),
(3500, 200, '2', 70),
(3501, 203, '2', 70),
(3502, 202, '5', 70),
(3503, 204, '2', 70),
(3504, 263, '3', 70),
(3505, 168, '4', 70),
(3506, 169, '3', 70),
(3507, 164, '4', 70),
(3508, 165, '4', 70),
(3509, 166, '4', 70),
(3510, 167, '5', 70),
(3511, 188, '4', 70),
(3512, 163, '4', 70),
(3513, 199, '1', 71),
(3514, 198, '5', 71),
(3515, 195, '1', 71),
(3516, 194, '2', 71),
(3517, 197, '4', 71),
(3518, 196, '5', 71),
(3519, 191, '5', 71),
(3520, 190, '4', 71),
(3521, 192, '3', 71),
(3522, 179, '1', 71),
(3523, 178, '1', 71),
(3524, 177, '1', 71),
(3525, 176, '1', 71),
(3526, 175, '1', 71),
(3527, 174, '2', 71),
(3528, 173, '1', 71),
(3529, 172, '1', 71),
(3530, 171, '1', 71),
(3531, 170, '5', 71),
(3532, 182, '4', 71),
(3533, 183, '1', 71),
(3534, 180, '2', 71),
(3535, 181, '3', 71),
(3536, 186, '2', 71),
(3537, 187, '1', 71),
(3538, 184, '4', 71),
(3539, 185, '3', 71),
(3540, 189, '5', 71),
(3541, 201, '3', 71),
(3542, 200, '3', 71),
(3543, 203, '1', 71),
(3544, 202, '5', 71),
(3545, 204, '1', 71),
(3546, 263, '1', 71),
(3547, 168, '1', 71),
(3548, 169, '2', 71),
(3549, 164, '1', 71),
(3550, 165, '1', 71),
(3551, 166, '1', 71),
(3552, 167, '2', 71),
(3553, 188, '1', 71),
(3554, 163, '3', 71),
(3555, 216, '5', 69),
(3556, 217, '5', 69),
(3557, 214, '5', 69),
(3558, 215, '5', 69),
(3559, 212, '5', 69),
(3560, 213, '5', 69),
(3561, 210, '5', 69),
(3562, 211, '5', 69),
(3563, 218, '3', 69),
(3564, 219, '1', 69),
(3565, 234, '5', 69),
(3566, 235, '5', 69),
(3567, 236, '1', 69),
(3568, 237, '5', 69),
(3569, 230, '5', 69),
(3570, 231, '5', 69),
(3571, 232, '5', 69),
(3572, 233, '5', 69),
(3573, 205, '5', 69),
(3574, 207, '5', 69),
(3575, 206, '5', 69),
(3576, 209, '5', 69),
(3577, 208, '5', 69),
(3578, 229, '4', 69),
(3579, 228, '5', 69),
(3580, 227, '5', 69),
(3581, 226, '5', 69),
(3582, 225, '4', 69),
(3583, 224, '5', 69),
(3584, 223, '5', 69),
(3585, 222, '5', 69),
(3586, 221, '5', 69),
(3587, 220, '5', 69),
(3588, 216, '2', 70),
(3589, 217, '5', 70),
(3590, 214, '5', 70),
(3591, 215, '2', 70),
(3592, 212, '5', 70),
(3593, 213, '3', 70),
(3594, 210, '5', 70),
(3595, 211, '5', 70),
(3596, 218, '5', 70),
(3597, 219, '3', 70),
(3598, 234, '5', 70),
(3599, 235, '5', 70),
(3600, 236, '5', 70),
(3601, 237, '5', 70),
(3602, 230, '4', 70),
(3603, 231, '5', 70),
(3604, 232, '5', 70),
(3605, 233, '5', 70),
(3606, 205, '5', 70),
(3607, 207, '2', 70),
(3608, 206, '5', 70),
(3609, 209, '2', 70),
(3610, 208, '2', 70),
(3611, 229, '5', 70),
(3612, 228, '5', 70),
(3613, 227, '4', 70),
(3614, 226, '5', 70),
(3615, 225, '2', 70),
(3616, 224, '4', 70),
(3617, 223, '3', 70),
(3618, 222, '2', 70),
(3619, 221, '3', 70),
(3620, 220, '3', 70),
(3621, 264, '1', 69),
(3622, 258, '5', 69),
(3623, 259, '2', 69),
(3624, 238, '4', 69),
(3625, 239, '5', 69),
(3626, 252, '1', 69),
(3627, 253, '2', 69),
(3628, 250, '1', 69),
(3629, 251, '5', 69),
(3630, 256, '3', 69),
(3631, 257, '5', 69),
(3632, 254, '2', 69),
(3633, 255, '5', 69),
(3634, 245, '4', 69),
(3635, 244, '4', 69),
(3636, 247, '3', 69),
(3637, 260, '2', 69),
(3638, 241, '4', 69),
(3639, 240, '4', 69),
(3640, 243, '4', 69),
(3641, 242, '2', 69),
(3642, 249, '3', 69),
(3643, 248, '1', 69),
(3644, 262, '1', 69),
(3645, 246, '5', 69),
(3646, 216, '2', 71),
(3647, 217, '5', 71),
(3648, 214, '5', 71),
(3649, 215, '5', 71),
(3650, 212, '5', 71),
(3651, 213, '5', 71),
(3652, 210, '5', 71),
(3653, 211, '2', 71),
(3654, 218, '1', 71),
(3655, 219, '1', 71),
(3656, 234, '2', 71),
(3657, 235, '2', 71),
(3658, 236, '2', 71),
(3659, 237, '3', 71),
(3660, 230, '1', 71),
(3661, 231, '1', 71),
(3662, 232, '1', 71),
(3663, 233, '1', 71),
(3664, 205, '5', 71),
(3665, 207, '2', 71),
(3666, 206, '1', 71),
(3667, 209, '3', 71),
(3668, 208, '2', 71),
(3669, 229, '5', 71),
(3670, 228, '5', 71),
(3671, 227, '5', 71),
(3672, 226, '2', 71),
(3673, 225, '5', 71),
(3674, 224, '2', 71),
(3675, 223, '5', 71),
(3676, 222, '2', 71),
(3677, 221, '1', 71),
(3678, 220, '1', 71),
(3679, 264, '1', 70),
(3680, 258, '3', 70),
(3681, 259, '4', 70),
(3682, 238, '4', 70),
(3683, 239, '4', 70),
(3684, 252, '2', 70),
(3685, 253, '2', 70),
(3686, 250, '4', 70),
(3687, 251, '2', 70),
(3688, 256, '2', 70),
(3689, 257, '3', 70),
(3690, 254, '2', 70),
(3691, 255, '1', 70),
(3692, 245, '4', 70),
(3693, 244, '4', 70),
(3694, 247, '4', 70),
(3695, 260, '3', 70),
(3696, 241, '3', 70),
(3697, 240, '4', 70),
(3698, 243, '5', 70),
(3699, 242, '3', 70),
(3700, 249, '5', 70),
(3701, 248, '4', 70),
(3702, 262, '3', 70),
(3703, 246, '4', 70),
(3704, 264, '2', 71),
(3705, 258, '5', 71),
(3706, 259, '1', 71),
(3707, 238, '1', 71),
(3708, 239, '1', 71),
(3709, 252, '1', 71),
(3710, 253, '1', 71),
(3711, 250, '1', 71),
(3712, 251, '5', 71),
(3713, 256, '2', 71),
(3714, 257, '3', 71),
(3715, 254, '5', 71),
(3716, 255, '1', 71),
(3717, 245, '4', 71),
(3718, 244, '2', 71),
(3719, 247, '1', 71),
(3720, 260, '1', 71),
(3721, 241, '3', 71),
(3722, 240, '1', 71),
(3723, 243, '5', 71),
(3724, 242, '1', 71),
(3725, 249, '5', 71),
(3726, 248, '1', 71),
(3727, 262, '1', 71),
(3728, 246, '5', 71);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_solucion`
--

CREATE TABLE IF NOT EXISTS `sistema_solucion` (
  `id` int(11) NOT NULL,
  `solucion` longtext NOT NULL,
  `modelo_id` int(11) DEFAULT NULL,
  `porcentaje` int(11) NOT NULL,
  `resultado_contexto` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_solucion`
--

INSERT INTO `sistema_solucion` (`id`, `solucion`, `modelo_id`, `porcentaje`, `resultado_contexto`) VALUES
(4, 'Monitorización Y Control De Proyecto', 1, 100, '-Monitorice el proyecto frente al plan.  \r\n-Monitorice los parámetros de planificación del proyecto.  \r\n-Monitorice los compromisos.  \r\n-Monitorice los riesgos del proyecto.  \r\n-Monitorice la gestión de los datos.  \r\n-Monitorice la involucración de las partes interesadas.  \r\n-Lleve a cabo las revisiones del progreso.   \r\n-Gestione las acciones correctivas hasta su cierre.  \r\n-Lleve a cabo las acciones correctivas.  \r\n-Gestione las acciones correctivas'),
(5, 'Administración de Proyectos Específicos', 2, 75, '-Determine el Tiempo Estimado para cada actividad \r\n-Defina el Protocolo de Entrega con el Cliente. \r\nEstablecer el Equipo de Trabajo que realizará el proyecto \r\n-Revise el cumplimiento del Plan de Adquisiciones y Capacitación.  \r\n-Registre el costo real del proyecto.  \r\n-Revise los productos terminados durante el proyecto \r\n-Analice y controlar los riesgos.  '),
(6, 'Evaluación y Control del Proyecto', 7, 60, '-Controle e informe sobre proceso del proyecto.  \r\n-Controle la relación  entre  los elementos del proyecto, con otros proyectos y con unidades de la organización.  \r\n-Tome acciones para corregir las desviaciones de los planes y prevenir problemas.  \r\n-Alcance y registre los objetivos del proyecto.  '),
(7, 'Scrum Diario', 5, 30, '-Evalué el progreso hacia el Objetivo del Sprint \r\n-Optimizo las posibilidades de que el Equipo de Desarrollo cumpla el Objetivo del Sprint \r\n-Replanifique el resto del trabajo del Sprint \r\n-Equipo de Trabajo deberá explicar al Dueño de Producto y al Scrum Master cómo pretende trabajar en conjunto como un equipo auto organizado, para lograr el objetivo y crear el Incremento anticipado durante el resto del Sprint.\r\n'),
(9, 'Gestión de la  Configuración', 1, 10, '-Establezca las líneas base.  \r\n-Identifique los elementos de configuración.  \r\n-Establezca un sistema de gestión de configuración.  \r\n-Cree o libere las líneas base.  \r\n-Siga y controle los cambios.  \r\n-Siga las peticiones de cambio.  \r\n-Controle los elementos de configuración. \r\n-Establezca la integridad.  \r\n-Establezca los registros de gestión de configuración.  \r\n-Realice las auditorias de configuración.'),
(10, 'Gestión de Recursos', 2, 20, '-Planee los Recursos   \r\n-Proporcione Seguimiento y Control a los recursos planeados.  \r\n-Investigigue de Tendencias Tecnológicas'),
(11, 'Gestión de la Configuración del Software', 7, 10, '-Establezca  una estrategia de gestión de configuración.  \r\n-Defina los productos generados por los procesos y el proyecto.  \r\n-Controle las modificaciones y versiones.  \r\n-Registre e informe el estado de los elementos y modificaciones.  \r\n-Asegure la integridad y consistencia de los elementos.  \r\n-Controle el almacenamiento, tratamiento y entrega de los productos. '),
(12, 'Revisión de Sprint ', 5, 5, '-El Dueño de Producto identifica lo que ha sido realizado por el equipo. \r\n-El Equipo de Desarrollo habla acerca de qué fue bien durante el Sprint, qué problemas \r\naparecieron, y cómo fueron resueltos esos problemas. \r\n-El Equipo de Desarrollo demuestra el trabajo que fue realizado y responde preguntas acerca  \r\ndel Incremento.\r\n-El Dueño de Producto habla acerca de la Pila de Producto en el estado actual. Proyecta  \r\nfechas de finalización probables en el tiempo basándose en el progreso obtenido hasta la  \r\nfecha.\r\n-El equipo al completo colabora acerca de qué hacer en siguiente lugar, de modo que la  \r\nRevisión de Sprint proporcione información de entrada valiosa para Reuniones de  \r\nPlanificación de Sprint subsiguientes.'),
(13, 'Planificación de Proyectos', 1, 10, '-Establezca las estimaciones.  \r\n-Estime el alcance del proyecto.  \r\n-Defina las fases del ciclo de vida del proyecto.\r\n-Estime el esfuerzo y el coste.\r\n-Desarrolle un plan de proyecto. \r\n-Establezca el presupuesto y el calendario.\r\n-Identifique los riesgos del proyecto.\r\n-Planifique el conocimiento y las habilidades necesarias.  \r\n-Planifique la involucración de las partes interesadas.\r\n'),
(14, 'Gestión de Proyecto', 2, 15, '-Definida los Elementos de Procesos(Calendario, Plan de Adquisiciones y Capacitación, Plan de Evaluación de procesos y Plan de Mediciones de Procesos).\r\n- Supervise y controle los riesgos identificados en el Plan de Manejo de Riesgo.\r\n-Identifique y documente las Lecciones Aprendidas.  '),
(15, 'Planificación del Proyecto', 7, 10, '-Defina el alcance del proyecto.  \r\n-Evalué la viabilidad del proyecto (objetivos,  recursos  y restricciones).  \r\n-Estima los  recursos,  tamaño  y esfuerzo de las tareas.  \r\n-Identifique la  relación  entre  los elementos  del  proyecto,  con otros  proyectos  y  con  unidades de la organización.  \r\n-Defina un  plan  de  ejecución  de proyecto.  \r\n-Ponga en marcha  los planes.'),
(16, 'Reunión de Planificación de Sprint', 5, 5, '-Considere y discuta los elementos del Backlog del Producto con el Dueño del Producto. \r\n-Asegúrese que sean comprendidos los elementos del Backlog del Producto.\r\n-Crean un plan lo suficientemente detallado para asegurarse que puedan completar estos elementos.'),
(17, 'Aseguramiento de la Calidad del Proceso y del Producto', 1, 10, '-Evalué los procesos y los productos de trabajo.\r\n-Comunicar y resolver los problemas encontrados.\r\n-Establezca registros.'),
(18, 'Desarrollo y Mantenimiento de Software', 2, 50, '- Identifique los Requerimientos.   \r\n-Acuerde las tareas del Equipo de Trabajo con el Responsable de Desarrollo y Mantenimiento de Software.  \r\n'),
(19, 'Aseguramiento de la Calidad Software', 7, 30, '-Defina una estrategia con la finalidad de asegurar la calidad.  \r\n-Produzca y mantenga evidencias del aseguramiento de la calidad.  \r\n-Identifique y registre los  problemas que se tengan con respecto con los requisitos.  '),
(20, 'Retrospectiva de Sprint', 5, 1, 'Inspeccione cómo fue el último Sprint en cuanto a personas, relaciones, procesos y herramientas; \r\n-Identifique y ordene los elementos más importantes para posibles mejoras\r\n-Crear un plan para implementar las mejoras para la forma en la que el Equipo Scrum desempeña su trabajo.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `south_migrationhistory`
--

CREATE TABLE IF NOT EXISTS `south_migrationhistory` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `south_migrationhistory`
--

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`) VALUES
(1, 'sistema', '0001_initial', '2014-06-08 19:17:46'),
(2, 'sistema', '0002_auto__add_pregunta__add_objetivoespecifico__add_practicaespecifica__ad', '2014-06-08 19:20:36'),
(3, 'sistema', '0003_auto__del_arearproceso__add_areaproceso__chg_field_objetivoespecifico_', '2014-06-16 17:53:10'),
(4, 'sistema', '0004_auto__del_fuerza__add_field_solucion_porcentaje', '2014-06-18 17:38:23'),
(5, 'sistema', '0005_auto__add_cuestionario__add_respuesta', '2014-06-19 15:15:22'),
(6, 'sistema', '0006_auto__del_field_respuesta_cuentionario__add_field_respuesta_cuestionar', '2014-06-19 15:39:48'),
(7, 'sistema', '0007_auto__del_uso_conocimiento__del_field_pregunta_peso__del_field_patron_', '2014-07-09 21:01:09'),
(8, 'sistema', '0008_auto__del_field_solucion_patron__add_field_solucion_resultado_contexto', '2014-07-10 18:38:46'),
(9, 'sistema', '0009_auto__del_field_problema_solucion', '2014-07-12 08:09:25'),
(10, 'userena', '0001_initial', '2014-07-12 11:14:21'),
(11, 'easy_thumbnails', '0001_initial', '2014-07-12 11:14:40'),
(12, 'easy_thumbnails', '0002_filename_indexes', '2014-07-12 11:14:40'),
(13, 'easy_thumbnails', '0003_auto__add_storagenew', '2014-07-12 11:14:40'),
(14, 'easy_thumbnails', '0004_auto__add_field_source_storage_new__add_field_thumbnail_storage_new', '2014-07-12 11:14:41'),
(15, 'easy_thumbnails', '0005_storage_fks_null', '2014-07-12 11:14:43'),
(16, 'easy_thumbnails', '0006_copy_storage', '2014-07-12 11:14:43'),
(17, 'easy_thumbnails', '0007_storagenew_fks_not_null', '2014-07-12 11:14:44'),
(18, 'easy_thumbnails', '0008_auto__del_field_source_storage__del_field_thumbnail_storage', '2014-07-12 11:14:45'),
(19, 'easy_thumbnails', '0009_auto__del_storage', '2014-07-12 11:14:45'),
(20, 'easy_thumbnails', '0010_rename_storage', '2014-07-12 11:14:47'),
(21, 'easy_thumbnails', '0011_auto__add_field_source_storage_hash__add_field_thumbnail_storage_hash', '2014-07-12 11:14:47'),
(22, 'easy_thumbnails', '0012_build_storage_hashes', '2014-07-12 11:14:47'),
(23, 'easy_thumbnails', '0013_auto__del_storage__del_field_source_storage__del_field_thumbnail_stora', '2014-07-12 11:14:49'),
(24, 'easy_thumbnails', '0014_auto__add_unique_source_name_storage_hash__add_unique_thumbnail_name_s', '2014-07-12 11:14:49'),
(25, 'easy_thumbnails', '0015_auto__del_unique_thumbnail_name_storage_hash__add_unique_thumbnail_sou', '2014-07-12 11:14:49'),
(26, 'guardian', '0001_initial', '2014-07-12 11:15:06'),
(27, 'guardian', '0002_auto__add_field_groupobjectpermission_object_pk__add_field_userobjectp', '2014-07-12 11:15:07'),
(28, 'guardian', '0003_update_objectpermission_object_pk', '2014-07-12 11:15:07'),
(29, 'guardian', '0004_auto__del_field_groupobjectpermission_object_id__del_unique_groupobjec', '2014-07-12 11:15:08'),
(30, 'guardian', '0005_auto__chg_field_groupobjectpermission_object_pk__chg_field_userobjectp', '2014-07-12 11:15:08'),
(31, 'accounts', '0001_initial', '2014-08-12 02:41:37'),
(32, 'accounts', '0002_auto__add_field_myprofile_numero_proyectos__add_field_myprofile_modelo', '2014-08-12 02:45:10'),
(33, 'accounts', '0003_auto__del_field_myprofile_numero_proyectos', '2014-08-19 14:22:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userena_userenasignup`
--

CREATE TABLE IF NOT EXISTS `userena_userenasignup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_active` datetime DEFAULT NULL,
  `activation_key` varchar(40) NOT NULL,
  `activation_notification_send` tinyint(1) NOT NULL,
  `email_unconfirmed` varchar(75) NOT NULL,
  `email_confirmation_key` varchar(40) NOT NULL,
  `email_confirmation_key_created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `userena_userenasignup`
--

INSERT INTO `userena_userenasignup` (`id`, `user_id`, `last_active`, `activation_key`, `activation_notification_send`, `email_unconfirmed`, `email_confirmation_key`, `email_confirmation_key_created`) VALUES
(8, 10, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(9, 11, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(10, 12, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(11, 13, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(14, 16, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(18, 21, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(19, 22, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(20, 23, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(21, 24, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(22, 25, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(23, 26, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(24, 27, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(25, 28, NULL, '3528839da3534e1d8213bf05658f02dd8cdbcaf6', 0, '', '', NULL),
(26, 29, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(27, 30, NULL, 'a85692cb209fe906c3517f1cf114b95d15db5210', 0, '', '', NULL),
(28, 31, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(29, 32, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL),
(30, 33, NULL, 'ALREADY_ACTIVATED', 0, '', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts_myprofile`
--
ALTER TABLE `accounts_myprofile`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`), ADD KEY `accounts_myprofile_3bfc60d6` (`modelo_estandar_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_5f412f9a` (`group_id`), ADD KEY `auth_group_permissions_83d7f98b` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`), ADD KEY `auth_permission_37ef4eb4` (`content_type_id`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_6340c63c` (`user_id`), ADD KEY `auth_user_groups_5f412f9a` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_6340c63c` (`user_id`), ADD KEY `auth_user_user_permissions_83d7f98b` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_6340c63c` (`user_id`), ADD KEY `django_admin_log_37ef4eb4` (`content_type_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `app_label` (`app_label`,`model`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_b7b81f0c` (`expire_date`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `easy_thumbnails_source_name_7549c98cc6dd6969_uniq` (`name`,`storage_hash`), ADD KEY `easy_thumbnails_source_4da47e07` (`name`), ADD KEY `easy_thumbnails_source_3f0464e5` (`storage_hash`);

--
-- Indices de la tabla `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `easy_thumbnails_thumbnail_source_id_1f50d53db8191480_uniq` (`source_id`,`name`,`storage_hash`), ADD KEY `easy_thumbnails_thumbnail_a34b03a6` (`source_id`), ADD KEY `easy_thumbnails_thumbnail_4da47e07` (`name`), ADD KEY `easy_thumbnails_thumbnail_3f0464e5` (`storage_hash`);

--
-- Indices de la tabla `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `guardian_groupobjectpermission_object_pk_1496f467edd78b17_uniq` (`object_pk`,`group_id`,`content_type_id`,`permission_id`), ADD KEY `guardian_groupobjectpermission_83d7f98b` (`permission_id`), ADD KEY `guardian_groupobjectpermission_37ef4eb4` (`content_type_id`), ADD KEY `guardian_groupobjectpermission_5f412f9a` (`group_id`);

--
-- Indices de la tabla `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `guardian_userobjectpermission_object_pk_4a3e38372084f8ff_uniq` (`object_pk`,`user_id`,`content_type_id`,`permission_id`), ADD KEY `guardian_userobjectpermission_83d7f98b` (`permission_id`), ADD KEY `guardian_userobjectpermission_37ef4eb4` (`content_type_id`), ADD KEY `guardian_userobjectpermission_6340c63c` (`user_id`);

--
-- Indices de la tabla `sistema_areaproceso`
--
ALTER TABLE `sistema_areaproceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistema_categoria`
--
ALTER TABLE `sistema_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistema_cuestionario`
--
ALTER TABLE `sistema_cuestionario`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_cuestionario_c69e2c81` (`usuario_id`);

--
-- Indices de la tabla `sistema_modelo`
--
ALTER TABLE `sistema_modelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistema_objetivoespecifico`
--
ALTER TABLE `sistema_objetivoespecifico`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_objetivoespecifico_a4563695` (`area_id`);

--
-- Indices de la tabla `sistema_patron`
--
ALTER TABLE `sistema_patron`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_patron_5f2644f7` (`categoria_id`);

--
-- Indices de la tabla `sistema_patron_patrones_relacionados`
--
ALTER TABLE `sistema_patron_patrones_relacionados`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `from_patron_id` (`from_patron_id`,`to_patron_id`), ADD KEY `sistema_patron_patrones_relacionados_2741f5c1` (`from_patron_id`), ADD KEY `sistema_patron_patrones_relacionados_1fbc550e` (`to_patron_id`);

--
-- Indices de la tabla `sistema_practicaespecifica`
--
ALTER TABLE `sistema_practicaespecifica`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_practicaespecifica_85fbc5d6` (`objetivo_id`);

--
-- Indices de la tabla `sistema_pregunta`
--
ALTER TABLE `sistema_pregunta`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_pregunta_067a09d9` (`practica_id`);

--
-- Indices de la tabla `sistema_pregunta_patrones`
--
ALTER TABLE `sistema_pregunta_patrones`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sistema_pregunta_patrones_pregunta_id_48e3ff0ab1ef11f9_uniq` (`pregunta_id`,`patron_id`), ADD KEY `sistema_pregunta_patrones_b9d2c30a` (`pregunta_id`), ADD KEY `sistema_pregunta_patrones_6e20e151` (`patron_id`);

--
-- Indices de la tabla `sistema_problema`
--
ALTER TABLE `sistema_problema`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_problema_6e20e151` (`patron_id`);

--
-- Indices de la tabla `sistema_problema_fuerzas`
--
ALTER TABLE `sistema_problema_fuerzas`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sistema_problema_fuerzas_problema_id_5dbaffecaa9c3542_uniq` (`problema_id`,`pregunta_id`), ADD KEY `sistema_problema_fuerzas_c2115b9d` (`problema_id`), ADD KEY `sistema_problema_fuerzas_b9d2c30a` (`pregunta_id`);

--
-- Indices de la tabla `sistema_problema_soluciones`
--
ALTER TABLE `sistema_problema_soluciones`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sistema_problema_soluciones_problema_id_53b3c63a9ff43e33_uniq` (`problema_id`,`solucion_id`), ADD KEY `sistema_problema_soluciones_c2115b9d` (`problema_id`), ADD KEY `sistema_problema_soluciones_2a5ef771` (`solucion_id`);

--
-- Indices de la tabla `sistema_respuesta`
--
ALTER TABLE `sistema_respuesta`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_respuesta_b9d2c30a` (`pregunta_id`), ADD KEY `sistema_respuesta_b6b1eaf5` (`cuestionario_id`);

--
-- Indices de la tabla `sistema_solucion`
--
ALTER TABLE `sistema_solucion`
  ADD PRIMARY KEY (`id`), ADD KEY `sistema_solucion_b4abaaae` (`modelo_id`);

--
-- Indices de la tabla `south_migrationhistory`
--
ALTER TABLE `south_migrationhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userena_userenasignup`
--
ALTER TABLE `userena_userenasignup`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts_myprofile`
--
ALTER TABLE `accounts_myprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=973;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT de la tabla `sistema_areaproceso`
--
ALTER TABLE `sistema_areaproceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `sistema_categoria`
--
ALTER TABLE `sistema_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `sistema_cuestionario`
--
ALTER TABLE `sistema_cuestionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT de la tabla `sistema_modelo`
--
ALTER TABLE `sistema_modelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sistema_objetivoespecifico`
--
ALTER TABLE `sistema_objetivoespecifico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `sistema_patron`
--
ALTER TABLE `sistema_patron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `sistema_patron_patrones_relacionados`
--
ALTER TABLE `sistema_patron_patrones_relacionados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `sistema_practicaespecifica`
--
ALTER TABLE `sistema_practicaespecifica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `sistema_pregunta`
--
ALTER TABLE `sistema_pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT de la tabla `sistema_pregunta_patrones`
--
ALTER TABLE `sistema_pregunta_patrones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=431;
--
-- AUTO_INCREMENT de la tabla `sistema_problema`
--
ALTER TABLE `sistema_problema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT de la tabla `sistema_problema_fuerzas`
--
ALTER TABLE `sistema_problema_fuerzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT de la tabla `sistema_problema_soluciones`
--
ALTER TABLE `sistema_problema_soluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT de la tabla `sistema_respuesta`
--
ALTER TABLE `sistema_respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3729;
--
-- AUTO_INCREMENT de la tabla `sistema_solucion`
--
ALTER TABLE `sistema_solucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `south_migrationhistory`
--
ALTER TABLE `south_migrationhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `userena_userenasignup`
--
ALTER TABLE `userena_userenasignup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accounts_myprofile`
--
ALTER TABLE `accounts_myprofile`
ADD CONSTRAINT `modelo_estandar_id_refs_id_59735a35` FOREIGN KEY (`modelo_estandar_id`) REFERENCES `sistema_modelo` (`id`),
ADD CONSTRAINT `user_id_refs_id_6e7d9056` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
ADD CONSTRAINT `source_id_refs_id_0df57a91` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Filtros para la tabla `guardian_groupobjectpermission`
--
ALTER TABLE `guardian_groupobjectpermission`
ADD CONSTRAINT `content_type_id_refs_id_ca873eba` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `group_id_refs_id_d890d4d6` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `permission_id_refs_id_ab04ab90` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `guardian_userobjectpermission`
--
ALTER TABLE `guardian_userobjectpermission`
ADD CONSTRAINT `content_type_id_refs_id_ccf6cb3f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `permission_id_refs_id_720a4b21` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `user_id_refs_id_29f71157` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `sistema_cuestionario`
--
ALTER TABLE `sistema_cuestionario`
ADD CONSTRAINT `usuario_id_refs_id_e82d8a47` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `sistema_objetivoespecifico`
--
ALTER TABLE `sistema_objetivoespecifico`
ADD CONSTRAINT `area_id_refs_id_a5e15f56` FOREIGN KEY (`area_id`) REFERENCES `sistema_areaproceso` (`id`);

--
-- Filtros para la tabla `sistema_patron`
--
ALTER TABLE `sistema_patron`
ADD CONSTRAINT `categoria_id_refs_id_6da32bf8` FOREIGN KEY (`categoria_id`) REFERENCES `sistema_categoria` (`id`);

--
-- Filtros para la tabla `sistema_patron_patrones_relacionados`
--
ALTER TABLE `sistema_patron_patrones_relacionados`
ADD CONSTRAINT `from_patron_id_refs_id_ced979f3` FOREIGN KEY (`from_patron_id`) REFERENCES `sistema_patron` (`id`),
ADD CONSTRAINT `to_patron_id_refs_id_ced979f3` FOREIGN KEY (`to_patron_id`) REFERENCES `sistema_patron` (`id`);

--
-- Filtros para la tabla `sistema_practicaespecifica`
--
ALTER TABLE `sistema_practicaespecifica`
ADD CONSTRAINT `objetivo_id_refs_id_7f11618e` FOREIGN KEY (`objetivo_id`) REFERENCES `sistema_objetivoespecifico` (`id`);

--
-- Filtros para la tabla `sistema_pregunta`
--
ALTER TABLE `sistema_pregunta`
ADD CONSTRAINT `practica_id_refs_id_786af0d1` FOREIGN KEY (`practica_id`) REFERENCES `sistema_practicaespecifica` (`id`);

--
-- Filtros para la tabla `sistema_pregunta_patrones`
--
ALTER TABLE `sistema_pregunta_patrones`
ADD CONSTRAINT `patron_id_refs_id_a0b6f134` FOREIGN KEY (`patron_id`) REFERENCES `sistema_patron` (`id`),
ADD CONSTRAINT `pregunta_id_refs_id_af85d802` FOREIGN KEY (`pregunta_id`) REFERENCES `sistema_pregunta` (`id`);

--
-- Filtros para la tabla `sistema_problema`
--
ALTER TABLE `sistema_problema`
ADD CONSTRAINT `patron_id_refs_id_c9866cba` FOREIGN KEY (`patron_id`) REFERENCES `sistema_patron` (`id`);

--
-- Filtros para la tabla `sistema_problema_fuerzas`
--
ALTER TABLE `sistema_problema_fuerzas`
ADD CONSTRAINT `pregunta_id_refs_id_5c51727e` FOREIGN KEY (`pregunta_id`) REFERENCES `sistema_pregunta` (`id`),
ADD CONSTRAINT `problema_id_refs_id_506f6b87` FOREIGN KEY (`problema_id`) REFERENCES `sistema_problema` (`id`);

--
-- Filtros para la tabla `sistema_problema_soluciones`
--
ALTER TABLE `sistema_problema_soluciones`
ADD CONSTRAINT `problema_id_refs_id_2ba6055c` FOREIGN KEY (`problema_id`) REFERENCES `sistema_problema` (`id`),
ADD CONSTRAINT `solucion_id_refs_id_935bc30e` FOREIGN KEY (`solucion_id`) REFERENCES `sistema_solucion` (`id`);

--
-- Filtros para la tabla `sistema_respuesta`
--
ALTER TABLE `sistema_respuesta`
ADD CONSTRAINT `cuestionario_id_refs_id_8b7a309a` FOREIGN KEY (`cuestionario_id`) REFERENCES `sistema_cuestionario` (`id`),
ADD CONSTRAINT `pregunta_id_refs_id_aeed39d2` FOREIGN KEY (`pregunta_id`) REFERENCES `sistema_pregunta` (`id`);

--
-- Filtros para la tabla `sistema_solucion`
--
ALTER TABLE `sistema_solucion`
ADD CONSTRAINT `modelo_id_refs_id_a7ee86de` FOREIGN KEY (`modelo_id`) REFERENCES `sistema_modelo` (`id`);

--
-- Filtros para la tabla `userena_userenasignup`
--
ALTER TABLE `userena_userenasignup`
ADD CONSTRAINT `user_id_refs_id_e8e75d2d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

