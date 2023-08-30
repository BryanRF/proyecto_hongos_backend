-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2023 a las 00:32:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hongos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_class`
--

CREATE TABLE `api_class` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_class`
--

INSERT INTO `api_class` (`id`, `name`, `description`) VALUES
(1, 'Agaricomycetes', 'Clase de hongos que incluye la mayoría de los hongos con láminas, como champiñones y setas.'),
(2, 'Eurotiomycetes', 'Clase de hongos que incluye mohos y hongos que crecen en alimentos y materiales orgánicos.'),
(3, 'Sordariomycetes', 'Clase de hongos que incluye muchos hongos saprófitos, así como algunos patógenos de plantas.'),
(4, 'Tremellomycetes', 'Clase de hongos que incluye levaduras y hongos gelatinosos.'),
(5, 'Dothideomycetes', 'Clase de hongos que incluye muchos patógenos de plantas y hongos saprófitos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_family`
--

CREATE TABLE `api_family` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_family`
--

INSERT INTO `api_family` (`id`, `name`, `description`) VALUES
(1, 'Agaricaceae', 'Familia que incluye muchos hongos con láminas, como champiñones y setas.'),
(2, 'Amanitaceae', 'Familia que incluye hongos venenosos, como algunas especies de Amanita.'),
(3, 'Boletaceae', 'Familia que incluye hongos con poros en lugar de láminas, como boletus.'),
(4, 'Cortinariaceae', 'Familia que incluye hongos con un velo cortinado, como cortinarius.'),
(5, 'Russulaceae', 'Familia que incluye hongos con láminas y esporas rugosas, como russula.'),
(6, 'Tricholomataceae', 'Familia que incluye hongos con láminas y esporas lisas, como tricholoma.'),
(7, 'Hydnaceae', 'Familia que incluye hongos con espinas en lugar de láminas, como hydnum.'),
(8, 'Polyporaceae', 'Familia que incluye hongos con poros y muchas especies lignícolas.'),
(9, 'Strophariaceae', 'Familia que incluye hongos con láminas y esporas con ornamentación, como stropharia.'),
(10, 'Psathyrellaceae', 'Familia que incluye hongos con láminas y esporas oscuras, como psathyrella.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_genus`
--

CREATE TABLE `api_genus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_genus`
--

INSERT INTO `api_genus` (`id`, `name`, `description`) VALUES
(1, 'Agaricus', 'Género que incluye hongos comestibles como el champiñón común (Agaricus bisporus).'),
(2, 'Amanita', 'Género que incluye hongos venenosos y comestibles, como la Amanita muscaria.'),
(3, 'Boletus', 'Género que incluye hongos con poros, como el boletus edulis (hongo porcini).'),
(4, 'Tricholoma', 'Género que incluye hongos con láminas y esporas lisas, como el Tricholoma equestre.'),
(5, 'Lactarius', 'Género que incluye hongos con látex que exudan de las láminas cuando se rompen.'),
(6, 'Cortinarius', 'Género que incluye hongos con un velo cortinado que une el pie y las láminas.'),
(7, 'Russula', 'Género que incluye hongos con láminas y esporas rugosas.'),
(8, 'Agarikon', 'Género que incluye hongos medicinales con forma de concha y propiedades históricas.'),
(9, 'Coprinus', 'Género que incluye hongos que desarrollan láminas autodigestivas a medida que maduran.'),
(10, 'Pholiota', 'Género que incluye hongos con láminas y esporas en forma de alubia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_kingdom`
--

CREATE TABLE `api_kingdom` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_kingdom`
--

INSERT INTO `api_kingdom` (`id`, `name`, `description`) VALUES
(1, 'Fungi', 'Reino de los Hongos, que incluye hongos, mohos y levaduras.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_medicinalproperty`
--

CREATE TABLE `api_medicinalproperty` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_medicinalproperty`
--

INSERT INTO `api_medicinalproperty` (`id`, `name`, `description`) VALUES
(11, 'Antibacteriano', 'Capacidad para combatir bacterias y prevenir infecciones.'),
(12, 'Antiinflamatorio', 'Reduce la inflamación en el cuerpo.'),
(13, 'Antioxidante', 'Ayuda a proteger las células del daño oxidativo.'),
(14, 'Inmunomodulador', 'Regula la función del sistema inmunológico.'),
(15, 'Antiviral', 'Combate virus y puede ayudar a prevenir infecciones virales.'),
(16, 'Antitumoral', 'Puede tener propiedades que inhiben el crecimiento de tumores.'),
(17, 'Analgésico', 'Alivia el dolor.'),
(18, 'Antifúngico', 'Combate hongos y puede ayudar a tratar infecciones fúngicas.'),
(19, 'Adaptógeno', 'Ayuda al cuerpo a resistir el estrés y normalizar las funciones.'),
(20, 'Sedante', 'Tiene efectos calmantes y puede ayudar a inducir el sueño.'),
(21, 'Psicoactivo', '-'),
(22, 'Alucinogeno', '-');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_mushroomimage`
--

CREATE TABLE `api_mushroomimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `species_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_mushroomimage`
--

INSERT INTO `api_mushroomimage` (`id`, `image`, `species_id`) VALUES
(4, 'mushrooms/champinon-comun/8c119e471f5f412eaa83f384a8dc3bb0.jpeg', 1),
(5, 'mushrooms/champinon-comun/906657d749aa46efb4697c16ee88d683.jpeg', 1),
(6, 'mushrooms/champinon-comun/a9ee415e027a40d587aa8ed608afdabf.jpeg', 1),
(7, 'mushrooms/champinon-comun/d8bbe7e596f54193ac5b9e54933b0089.jpeg', 1),
(8, 'mushrooms/champinon-comun/0dd03545126f41338b7bf424fe588b13.jpeg', 1),
(9, 'mushrooms/champinon-comun/4a501d4e38d845c89ca4c0ef3279ce8c.jpeg', 1),
(10, 'mushrooms/champinon-comun/b3873772a5134fbda9efdf13e26a4bf8.jpeg', 1),
(11, 'mushrooms/boletus-edulis/94967e9055e4432f897c6b4fe5b9f57f.jpeg', 2),
(12, 'mushrooms/boletus-edulis/056bc36396d74d2998db830ed83fff08.jpeg', 2),
(13, 'mushrooms/boletus-edulis/cd628cc2c26f46aaac21c914fd0c09c7.jpeg', 2),
(14, 'mushrooms/boletus-edulis/39d30483144344648f7fd899dcaa9012.jpeg', 2),
(15, 'mushrooms/boletus-edulis/9ccd311f66c14c8a8b20f3e8dc127c84.jpeg', 2),
(16, 'mushrooms/boletus-edulis/d31c407c4dbc456991d7eb79953cbb01.jpeg', 2),
(17, 'mushrooms/boletus-edulis/a1904f144251494380ccbf81fa68c9c7.jpeg', 2),
(18, 'mushrooms/boletus-edulis/33723abee2ba49c19fa8b73d48b009bb.jpeg', 2),
(19, 'mushrooms/boletus-edulis/d96eb9717e544551a05cbf8c361353c4.jpeg', 2),
(20, 'mushrooms/boletus-edulis/76c7ae7b9e00423794ba3dd9fe427cb0.jpeg', 2),
(21, 'mushrooms/boletus-edulis/f66cda2ea56249ee999e26e91663d519.jpeg', 2),
(22, 'mushrooms/boletus-edulis/a2252205604d4dd889098e5162bd66a1.jpeg', 2),
(23, 'mushrooms/boletus-edulis/c402ceff8c854769a6bff2eb85196ecd.jpeg', 2),
(24, 'mushrooms/amanita-muscaria/bd1dd04b6fe949b780520967602868d7.jpeg', 3),
(25, 'mushrooms/amanita-muscaria/58598fe4792b4713910d57baeda414bf.jpeg', 3),
(26, 'mushrooms/amanita-muscaria/4e795046a188417b872d7de150668ae5.jpeg', 3),
(27, 'mushrooms/amanita-muscaria/193689826f74491fa749a9a829cc0c3a.jpeg', 3),
(28, 'mushrooms/amanita-muscaria/ca8da42888a94487a5d133bca056cea1.jpeg', 3),
(29, 'mushrooms/amanita-muscaria/ec073d4fe67c400688732caaa4c4f317.jpeg', 3),
(30, 'mushrooms/amanita-muscaria/ddbc8694e91b4700bb60047ae969e7d0.jpeg', 3),
(31, 'mushrooms/amanita-muscaria/6a3df61682d146879f224e731d0400e6.jpeg', 3),
(32, 'mushrooms/amanita-muscaria/446d6c4cec4c422b8dbebf3b84759581.jpeg', 3),
(33, 'mushrooms/amanita-muscaria/3daa32e1e49442c295b80377134445ae.jpeg', 3),
(34, 'mushrooms/amanita-muscaria/e7169ac83b96497e8eb5f13cd53b61ee.jpeg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_order`
--

CREATE TABLE `api_order` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_order`
--

INSERT INTO `api_order` (`id`, `name`, `description`) VALUES
(1, 'Agaricales', 'Orden que incluye una amplia variedad de hongos con láminas, como champiñones y setas.'),
(2, 'Boletales', 'Orden que incluye hongos con poros en lugar de láminas, como boletus.'),
(3, 'Russulales', 'Orden que incluye hongos con láminas y esporas rugosas, como russula.'),
(4, 'Cantharellales', 'Orden que incluye hongos con forma de copa, como chantarelas.'),
(5, 'Polyporales', 'Orden que incluye hongos con poros y muchas especies lignícolas.'),
(6, 'Hymenochaetales', 'Orden que incluye hongos con poros o láminas y esporas hialinas.'),
(7, 'Corticiales', 'Orden que incluye hongos con corteza de apariencia corchosa.'),
(8, 'Auriculariales', 'Orden que incluye hongos gelatinosos en forma de oreja o lengua.'),
(9, 'Agaricomycetes', 'Orden que agrupa a hongos con láminas, poros y otras características.'),
(10, 'Tremellales', 'Orden que incluye hongos gelatinosos y levaduras.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_phylum`
--

CREATE TABLE `api_phylum` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_phylum`
--

INSERT INTO `api_phylum` (`id`, `name`, `description`) VALUES
(1, 'Basidiomycota', 'Filo que incluye hongos con estructuras de reproducción llamadas basidios, como champiñones y setas.'),
(2, 'Ascomycota', 'Filo que incluye hongos con estructuras de reproducción llamadas ascos, como levaduras y mohos.'),
(3, 'Zygomycota', 'Filo que incluye hongos con estructuras de reproducción llamadas zygosporas, como mohos y hongos de pan.'),
(4, 'Glomeromycota', 'Filo que incluye hongos micorrícicos arbusculares, que forman simbiosis con plantas.'),
(5, 'Chytridiomycota', 'Filo que incluye hongos con zoosporas móviles, algunos de los cuales son patógenos.'),
(6, 'Microsporidia', 'Filo de hongos parásitos intracelulares que carecen de mitocondrias.'),
(7, 'Neocallimastigomycota', 'Filo que incluye hongos anaeróbicos que se encuentran en el tracto digestivo de animales.'),
(8, 'Blastocladiomycota', 'Filo que incluye hongos acuáticos con zoosporas biflageladas.'),
(9, 'Cryptomycota', 'Filo de hongos parásitos microscópicos que infectan algas y otros organismos acuáticos.'),
(10, 'Entomophthoromycota', 'Filo que incluye hongos patógenos que infectan insectos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_species`
--

CREATE TABLE `api_species` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `scientific_name` varchar(100) NOT NULL,
  `class_name_id` bigint(20) NOT NULL,
  `family_id` bigint(20) NOT NULL,
  `genus_id` bigint(20) NOT NULL,
  `kingdom_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `phylum_id` bigint(20) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `general_information` longtext DEFAULT NULL,
  `morphological_characteristics` longtext DEFAULT NULL,
  `species_information` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_species`
--

INSERT INTO `api_species` (`id`, `name`, `scientific_name`, `class_name_id`, `family_id`, `genus_id`, `kingdom_id`, `order_id`, `phylum_id`, `slug`, `general_information`, `morphological_characteristics`, `species_information`) VALUES
(1, 'Champiñón Común', 'Agaricus bisporus', 1, 1, 1, 1, 1, 1, 'agaricus-bisporus', 'El champiñón común es una especie ampliamente cultivada y consumida en todo el mundo. Tiene un sombrero redondeado y carnoso, con colores que varían desde el blanco al marrón claro. Se utiliza en una variedad de platos culinarios debido a su sabor suave y versatilidad en la cocina.', 'El champiñón común tiene un sombrero carnoso y convexo que puede alcanzar un diámetro de varios centímetros a medida que madura. Las láminas debajo del sombrero son de color rosa claro en un principio y se vuelven marrón oscuro a medida que liberan esporas. El pie es cilíndrico y blanco, con un anillo en la parte superior.', 'Esta especie de hongo se encuentra en diversas regiones del mundo, en áreas con climas templados. Se cultiva en huertos y granjas, y también puede crecer de forma silvestre en bosques y praderas. Es apreciado por su valor nutricional y su papel en la gastronomía global.'),
(2, 'Boletus edulis', 'Boletus edulis', 1, 3, 3, 1, 2, 1, 'boletus-edulis', 'El Boletus edulis, comúnmente conocido como hongo porcini, es un hongo comestible altamente valorado en la gastronomía. Tiene un sombrero grande y carnoso con colores que varían desde el marrón claro al oscuro. Se utiliza en diversos platos culinarios por su sabor y textura distintivos.\',', 'El hongo porcini tiene un sombrero grande y carnoso que puede alcanzar varios centímetros de diámetro. Su color puede variar y tiene una superficie lisa. Las láminas debajo del sombrero son porosas y pueden ser de color blanco en un principio, tornándose amarillentas con la maduración. El pie es robusto y puede ser de color marrón claro a oscuro.', 'Esta especie de hongo se encuentra en bosques y áreas arboladas en diversas partes del mundo, especialmente en regiones con climas templados. Los hongos porcini son buscados por recolectores y aficionados a la micología debido a su valor culinario y su presencia en la naturaleza.'),
(3, 'Amanita muscaria', 'Amanita muscaria', 1, 2, 2, 1, 1, 1, 'amanita-muscaria', 'La Amanita muscaria, conocida como matamoscas, es un hongo con una apariencia característica de sombrero rojo con puntos blancos. Aunque se ha utilizado en algunas culturas tradicionales, es importante destacar que contiene compuestos psicoactivos y alucinógenos, lo que puede ser peligroso si se consume incorrectamente.\',', 'La Amanita muscaria tiene un sombrero de forma característica, con un color rojo brillante y puntos blancos. Las láminas debajo del sombrero son blancas. El pie es blanco y puede tener una base bulbosa. Aunque tiene una apariencia llamativa, es importante recordar que contiene compuestos que pueden ser perjudiciales.\'', 'Esta especie se encuentra en diversas regiones del mundo, especialmente en bosques boreales. A lo largo de la historia, ha sido utilizado en algunos rituales chamánicos y prácticas espirituales, pero su consumo puede ser riesgoso debido a sus efectos psicoactivos y tóxicos.\',');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `api_species_medicinal_properties`
--

CREATE TABLE `api_species_medicinal_properties` (
  `id` bigint(20) NOT NULL,
  `species_id` bigint(20) NOT NULL,
  `medicinalproperty_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `api_species_medicinal_properties`
--

INSERT INTO `api_species_medicinal_properties` (`id`, `species_id`, `medicinalproperty_id`) VALUES
(1, 1, 13),
(2, 1, 14),
(3, 2, 11),
(4, 2, 13),
(5, 3, 21),
(6, 3, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add mushroom image', 7, 'add_mushroomimage'),
(26, 'Can change mushroom image', 7, 'change_mushroomimage'),
(27, 'Can delete mushroom image', 7, 'delete_mushroomimage'),
(28, 'Can view mushroom image', 7, 'view_mushroomimage'),
(29, 'Can add family', 8, 'add_family'),
(30, 'Can change family', 8, 'change_family'),
(31, 'Can delete family', 8, 'delete_family'),
(32, 'Can view family', 8, 'view_family'),
(33, 'Can add kingdom', 9, 'add_kingdom'),
(34, 'Can change kingdom', 9, 'change_kingdom'),
(35, 'Can delete kingdom', 9, 'delete_kingdom'),
(36, 'Can view kingdom', 9, 'view_kingdom'),
(37, 'Can add medicinal property', 10, 'add_medicinalproperty'),
(38, 'Can change medicinal property', 10, 'change_medicinalproperty'),
(39, 'Can delete medicinal property', 10, 'delete_medicinalproperty'),
(40, 'Can view medicinal property', 10, 'view_medicinalproperty'),
(41, 'Can add genus', 11, 'add_genus'),
(42, 'Can change genus', 11, 'change_genus'),
(43, 'Can delete genus', 11, 'delete_genus'),
(44, 'Can view genus', 11, 'view_genus'),
(45, 'Can add class', 12, 'add_class'),
(46, 'Can change class', 12, 'change_class'),
(47, 'Can delete class', 12, 'delete_class'),
(48, 'Can view class', 12, 'view_class'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add phylum', 14, 'add_phylum'),
(54, 'Can change phylum', 14, 'change_phylum'),
(55, 'Can delete phylum', 14, 'delete_phylum'),
(56, 'Can view phylum', 14, 'view_phylum'),
(57, 'Can add species', 15, 'add_species'),
(58, 'Can change species', 15, 'change_species'),
(59, 'Can delete species', 15, 'delete_species'),
(60, 'Can view species', 15, 'view_species');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$yw1wepYV22Sfc0DE4RmSlP$CfO5PVi15uFYSZASZCTk2w2vRHQGZW0VKjE4k9hJYS0=', NULL, 1, 'brayan', '', '', 'brayan@gmail.com', 1, 1, '2023-08-30 21:05:30.571973'),
(2, 'pbkdf2_sha256$600000$uXOYy4Wl4qRMk00fco7FUF$YTD2KsrhwnTXwkCepnC5zfEFMErSiB2LODwHnXBsLO4=', '2023-08-30 21:08:21.466176', 1, 'brayanRF', '', '', 'brayan@gmail.com', 1, 1, '2023-08-30 21:07:47.752638');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-30 21:11:03.464301', '1', 'Fungi', 1, '[{\"added\": {}}]', 9, 2),
(2, '2023-08-30 21:13:54.728881', '1', 'Agaricomycetes', 1, '[{\"added\": {}}]', 12, 2),
(3, '2023-08-30 21:13:58.481436', '2', 'Eurotiomycetes', 1, '[{\"added\": {}}]', 12, 2),
(4, '2023-08-30 21:14:02.288661', '3', 'Sordariomycetes', 1, '[{\"added\": {}}]', 12, 2),
(5, '2023-08-30 21:14:05.966986', '4', 'Tremellomycetes', 1, '[{\"added\": {}}]', 12, 2),
(6, '2023-08-30 21:14:09.815922', '5', 'Dothideomycetes', 1, '[{\"added\": {}}]', 12, 2),
(7, '2023-08-30 21:19:39.363872', '1', 'Fungi', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 2),
(8, '2023-08-30 21:20:03.229298', '5', 'Dothideomycetes', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 2),
(9, '2023-08-30 21:20:08.005615', '4', 'Tremellomycetes', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 2),
(10, '2023-08-30 21:20:12.179970', '3', 'Sordariomycetes', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 2),
(11, '2023-08-30 21:20:20.560617', '2', 'Eurotiomycetes', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 2),
(12, '2023-08-30 21:20:26.229462', '1', 'Agaricomycetes', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 2),
(13, '2023-08-30 21:23:12.798178', '1', 'Agaricaceae', 1, '[{\"added\": {}}]', 8, 2),
(14, '2023-08-30 21:23:22.660654', '2', 'Amanitaceae', 1, '[{\"added\": {}}]', 8, 2),
(15, '2023-08-30 21:23:53.544143', '3', 'Boletaceae', 1, '[{\"added\": {}}]', 8, 2),
(16, '2023-08-30 21:24:00.516180', '4', 'Cortinariaceae', 1, '[{\"added\": {}}]', 8, 2),
(17, '2023-08-30 21:24:06.167786', '5', 'Russulaceae', 1, '[{\"added\": {}}]', 8, 2),
(18, '2023-08-30 21:24:17.430785', '6', 'Tricholomataceae', 1, '[{\"added\": {}}]', 8, 2),
(19, '2023-08-30 21:24:23.704335', '7', 'Hydnaceae', 1, '[{\"added\": {}}]', 8, 2),
(20, '2023-08-30 21:24:30.159811', '8', 'Polyporaceae', 1, '[{\"added\": {}}]', 8, 2),
(21, '2023-08-30 21:24:36.529320', '9', 'Strophariaceae', 1, '[{\"added\": {}}]', 8, 2),
(22, '2023-08-30 21:24:42.864827', '10', 'Psathyrellaceae', 1, '[{\"added\": {}}]', 8, 2),
(23, '2023-08-30 21:26:00.492477', '11', 'Agaricales', 1, '[{\"added\": {}}]', 8, 2),
(24, '2023-08-30 21:26:12.229387', '11', 'Agaricales', 3, '', 8, 2),
(25, '2023-08-30 21:26:21.220627', '1', 'Agaricales', 1, '[{\"added\": {}}]', 13, 2),
(26, '2023-08-30 21:26:28.491932', '2', 'Boletales', 1, '[{\"added\": {}}]', 13, 2),
(27, '2023-08-30 21:26:51.372079', '3', 'Russulales', 1, '[{\"added\": {}}]', 13, 2),
(28, '2023-08-30 21:26:57.692246', '4', 'Cantharellales', 1, '[{\"added\": {}}]', 13, 2),
(29, '2023-08-30 21:27:03.883837', '5', 'Polyporales', 1, '[{\"added\": {}}]', 13, 2),
(30, '2023-08-30 21:27:09.969093', '6', 'Hymenochaetales', 1, '[{\"added\": {}}]', 13, 2),
(31, '2023-08-30 21:27:15.446256', '7', 'Corticiales', 1, '[{\"added\": {}}]', 13, 2),
(32, '2023-08-30 21:27:25.486133', '8', 'Auriculariales', 1, '[{\"added\": {}}]', 13, 2),
(33, '2023-08-30 21:27:31.351220', '9', 'Agaricomycetes', 1, '[{\"added\": {}}]', 13, 2),
(34, '2023-08-30 21:27:38.461192', '10', 'Tremellales', 1, '[{\"added\": {}}]', 13, 2),
(35, '2023-08-30 21:28:05.734810', '1', 'Basidiomycota', 1, '[{\"added\": {}}]', 14, 2),
(36, '2023-08-30 21:28:11.471160', '2', 'Ascomycota', 1, '[{\"added\": {}}]', 14, 2),
(37, '2023-08-30 21:28:17.791534', '3', 'Zygomycota', 1, '[{\"added\": {}}]', 14, 2),
(38, '2023-08-30 21:28:24.408222', '4', 'Glomeromycota', 1, '[{\"added\": {}}]', 14, 2),
(39, '2023-08-30 21:28:34.688440', '5', 'Chytridiomycota', 1, '[{\"added\": {}}]', 14, 2),
(40, '2023-08-30 21:28:42.247835', '6', 'Microsporidia', 1, '[{\"added\": {}}]', 14, 2),
(41, '2023-08-30 21:28:49.168327', '7', 'Neocallimastigomycota', 1, '[{\"added\": {}}]', 14, 2),
(42, '2023-08-30 21:28:55.575654', '8', 'Blastocladiomycota', 1, '[{\"added\": {}}]', 14, 2),
(43, '2023-08-30 21:29:01.986539', '9', 'Cryptomycota', 1, '[{\"added\": {}}]', 14, 2),
(44, '2023-08-30 21:29:08.703973', '10', 'Entomophthoromycota', 1, '[{\"added\": {}}]', 14, 2),
(45, '2023-08-30 21:30:24.879863', '1', 'Agaricus', 1, '[{\"added\": {}}]', 11, 2),
(46, '2023-08-30 21:30:31.771861', '2', 'Amanita', 1, '[{\"added\": {}}]', 11, 2),
(47, '2023-08-30 21:30:37.235144', '3', 'Boletus', 1, '[{\"added\": {}}]', 11, 2),
(48, '2023-08-30 21:30:43.107167', '4', 'Tricholoma', 1, '[{\"added\": {}}]', 11, 2),
(49, '2023-08-30 21:30:48.655588', '5', 'Lactarius', 1, '[{\"added\": {}}]', 11, 2),
(50, '2023-08-30 21:30:54.778969', '6', 'Cortinarius', 1, '[{\"added\": {}}]', 11, 2),
(51, '2023-08-30 21:31:01.332836', '7', 'Russula', 1, '[{\"added\": {}}]', 11, 2),
(52, '2023-08-30 21:31:07.458586', '8', 'Agarikon', 1, '[{\"added\": {}}]', 11, 2),
(53, '2023-08-30 21:31:13.539131', '9', 'Coprinus', 1, '[{\"added\": {}}]', 11, 2),
(54, '2023-08-30 21:31:19.435043', '10', 'Pholiota', 1, '[{\"added\": {}}]', 11, 2),
(55, '2023-08-30 21:31:59.459056', '11', 'Antibacteriano', 1, '[{\"added\": {}}]', 11, 2),
(56, '2023-08-30 21:32:06.901648', '12', 'Antiinflamatorio', 1, '[{\"added\": {}}]', 11, 2),
(57, '2023-08-30 21:32:12.759197', '13', 'Antioxidante', 1, '[{\"added\": {}}]', 11, 2),
(58, '2023-08-30 21:32:18.079166', '14', 'Inmunomodulador', 1, '[{\"added\": {}}]', 11, 2),
(59, '2023-08-30 21:32:30.683364', '15', 'Antiviral', 1, '[{\"added\": {}}]', 11, 2),
(60, '2023-08-30 21:32:37.895313', '16', 'Antitumoral', 1, '[{\"added\": {}}]', 11, 2),
(61, '2023-08-30 21:32:43.513276', '17', 'Analgésico', 1, '[{\"added\": {}}]', 11, 2),
(62, '2023-08-30 21:32:48.832944', '18', 'Antifúngico', 1, '[{\"added\": {}}]', 11, 2),
(63, '2023-08-30 21:32:55.025621', '19', 'Adaptógeno', 1, '[{\"added\": {}}]', 11, 2),
(64, '2023-08-30 21:33:02.079455', '20', 'Sedante', 1, '[{\"added\": {}}]', 11, 2),
(65, '2023-08-30 21:51:56.806115', '1', 'Champiñón Común', 1, '[{\"added\": {}}]', 15, 2),
(66, '2023-08-30 21:55:40.409678', '2', 'Boletus edulis', 1, '[{\"added\": {}}]', 15, 2),
(67, '2023-08-30 21:57:09.055214', '21', 'psicoactivo', 1, '[{\"added\": {}}]', 10, 2),
(68, '2023-08-30 21:57:34.719225', '22', 'Alucinogeno', 1, '[{\"added\": {}}]', 10, 2),
(69, '2023-08-30 21:57:56.899326', '21', 'Psicoactivo', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 10, 2),
(70, '2023-08-30 21:58:26.274106', '3', 'Amanita muscaria', 1, '[{\"added\": {}}]', 15, 2),
(71, '2023-08-30 22:08:23.087523', '1', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(72, '2023-08-30 22:17:29.992373', '1', 'Champiñón Común', 2, '[{\"changed\": {\"fields\": [\"Medicinal properties\", \"General information\", \"Species information\", \"Morphological characteristics\", \"Slug\"]}}]', 15, 2),
(73, '2023-08-30 22:18:33.210986', '2', 'Boletus edulis', 2, '[{\"changed\": {\"fields\": [\"Medicinal properties\", \"General information\", \"Species information\", \"Morphological characteristics\", \"Slug\"]}}]', 15, 2),
(74, '2023-08-30 22:19:39.343467', '3', 'Amanita muscaria', 2, '[{\"changed\": {\"fields\": [\"Medicinal properties\", \"General information\", \"Species information\", \"Morphological characteristics\", \"Slug\"]}}]', 15, 2),
(75, '2023-08-30 22:22:01.538445', '2', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(76, '2023-08-30 22:22:34.273520', '3', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(77, '2023-08-30 22:24:59.713008', '3', 'Image of Champiñón Común', 3, '', 7, 2),
(78, '2023-08-30 22:24:59.715296', '2', 'Image of Champiñón Común', 3, '', 7, 2),
(79, '2023-08-30 22:24:59.716306', '1', 'Image of Champiñón Común', 3, '', 7, 2),
(80, '2023-08-30 22:25:11.619024', '4', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(81, '2023-08-30 22:25:17.778216', '5', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(82, '2023-08-30 22:25:51.898344', '6', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(83, '2023-08-30 22:25:58.283688', '7', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(84, '2023-08-30 22:26:07.963351', '8', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(85, '2023-08-30 22:26:13.896529', '9', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(86, '2023-08-30 22:26:18.926719', '10', 'Image of Champiñón Común', 1, '[{\"added\": {}}]', 7, 2),
(87, '2023-08-30 22:28:40.967963', '11', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(88, '2023-08-30 22:28:46.159002', '12', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(89, '2023-08-30 22:28:52.091259', '13', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(90, '2023-08-30 22:28:57.063408', '14', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(91, '2023-08-30 22:29:01.833246', '15', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(92, '2023-08-30 22:29:06.172915', '16', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(93, '2023-08-30 22:29:10.687805', '17', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(94, '2023-08-30 22:29:15.241674', '18', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(95, '2023-08-30 22:29:20.319883', '19', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(96, '2023-08-30 22:29:24.870821', '20', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(97, '2023-08-30 22:29:29.719051', '21', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(98, '2023-08-30 22:29:34.987199', '22', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(99, '2023-08-30 22:29:40.245568', '23', 'Image of Boletus edulis', 1, '[{\"added\": {}}]', 7, 2),
(100, '2023-08-30 22:31:06.619139', '24', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(101, '2023-08-30 22:31:12.138206', '25', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(102, '2023-08-30 22:31:17.395202', '26', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(103, '2023-08-30 22:31:21.621563', '27', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(104, '2023-08-30 22:31:27.983055', '28', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(105, '2023-08-30 22:31:32.221035', '29', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(106, '2023-08-30 22:31:36.327622', '30', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(107, '2023-08-30 22:31:40.676604', '31', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(108, '2023-08-30 22:31:45.505998', '32', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(109, '2023-08-30 22:31:50.211725', '33', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2),
(110, '2023-08-30 22:31:55.554954', '34', 'Image of Amanita muscaria', 1, '[{\"added\": {}}]', 7, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'api', 'class'),
(8, 'api', 'family'),
(11, 'api', 'genus'),
(9, 'api', 'kingdom'),
(10, 'api', 'medicinalproperty'),
(7, 'api', 'mushroomimage'),
(13, 'api', 'order'),
(14, 'api', 'phylum'),
(15, 'api', 'species'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-30 21:04:39.323714'),
(2, 'auth', '0001_initial', '2023-08-30 21:04:39.756341'),
(3, 'admin', '0001_initial', '2023-08-30 21:04:39.867770'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-30 21:04:39.873779'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-30 21:04:39.881640'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-30 21:04:39.936906'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-30 21:04:39.982347'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-30 21:04:40.002350'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-30 21:04:40.009459'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-30 21:04:40.048280'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-30 21:04:40.051452'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-30 21:04:40.058481'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-30 21:04:40.077743'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-30 21:04:40.097815'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-30 21:04:40.115737'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-30 21:04:40.124531'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-30 21:04:40.144453'),
(18, 'sessions', '0001_initial', '2023-08-30 21:04:40.177435'),
(19, 'api', '0001_initial', '2023-08-30 21:06:29.520847'),
(20, 'api', '0002_class_description_family_description_and_more', '2023-08-30 21:19:03.861572'),
(21, 'api', '0003_alter_mushroomimage_image', '2023-08-30 22:06:52.750194'),
(22, 'api', '0004_remove_species_general_information_and_more', '2023-08-30 22:13:20.408112'),
(23, 'api', '0005_species_general_information_and_more', '2023-08-30 22:15:39.587647');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7dtljgba1tmnoz7qffkceada7do5rw4j', '.eJxVjMsOwiAQRf-FtSG8RsCl-34DGWCQqoGktCvjv2uTLnR7zzn3xQJuaw3boCXMmV2YYqffLWJ6UNtBvmO7dZ56W5c58l3hBx186pme18P9O6g46rcWCTSQIeNREpG0igCd0VYg6QygLZaMKkrnCzgvlPAIZ4jWJJVl8ez9AeDwN6Y:1qbSQH:mtObimVdeGRq7c728G190pzLtNqPh76twieWZ3lajE0', '2023-09-13 21:08:21.468677');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `api_class`
--
ALTER TABLE `api_class`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_family`
--
ALTER TABLE `api_family`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_genus`
--
ALTER TABLE `api_genus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_kingdom`
--
ALTER TABLE `api_kingdom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_medicinalproperty`
--
ALTER TABLE `api_medicinalproperty`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_mushroomimage`
--
ALTER TABLE `api_mushroomimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_mushroomimage_species_id_6605c1b1_fk_api_species_id` (`species_id`);

--
-- Indices de la tabla `api_order`
--
ALTER TABLE `api_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_phylum`
--
ALTER TABLE `api_phylum`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `api_species`
--
ALTER TABLE `api_species`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `api_species_class_name_id_89b22647_fk_api_class_id` (`class_name_id`),
  ADD KEY `api_species_family_id_88e69528_fk_api_family_id` (`family_id`),
  ADD KEY `api_species_genus_id_6a3097eb_fk_api_genus_id` (`genus_id`),
  ADD KEY `api_species_kingdom_id_944bd213_fk_api_kingdom_id` (`kingdom_id`),
  ADD KEY `api_species_order_id_223af0b0_fk_api_order_id` (`order_id`),
  ADD KEY `api_species_phylum_id_4cc1b0ca_fk_api_phylum_id` (`phylum_id`);

--
-- Indices de la tabla `api_species_medicinal_properties`
--
ALTER TABLE `api_species_medicinal_properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_species_medicinal_pr_species_id_medicinalprop_a757f0bc_uniq` (`species_id`,`medicinalproperty_id`),
  ADD KEY `api_species_medicina_medicinalproperty_id_4927f1c3_fk_api_medic` (`medicinalproperty_id`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `api_class`
--
ALTER TABLE `api_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `api_family`
--
ALTER TABLE `api_family`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `api_genus`
--
ALTER TABLE `api_genus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `api_kingdom`
--
ALTER TABLE `api_kingdom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `api_medicinalproperty`
--
ALTER TABLE `api_medicinalproperty`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `api_mushroomimage`
--
ALTER TABLE `api_mushroomimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `api_order`
--
ALTER TABLE `api_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `api_phylum`
--
ALTER TABLE `api_phylum`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `api_species`
--
ALTER TABLE `api_species`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `api_species_medicinal_properties`
--
ALTER TABLE `api_species_medicinal_properties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `api_mushroomimage`
--
ALTER TABLE `api_mushroomimage`
  ADD CONSTRAINT `api_mushroomimage_species_id_6605c1b1_fk_api_species_id` FOREIGN KEY (`species_id`) REFERENCES `api_species` (`id`);

--
-- Filtros para la tabla `api_species`
--
ALTER TABLE `api_species`
  ADD CONSTRAINT `api_species_class_name_id_89b22647_fk_api_class_id` FOREIGN KEY (`class_name_id`) REFERENCES `api_class` (`id`),
  ADD CONSTRAINT `api_species_family_id_88e69528_fk_api_family_id` FOREIGN KEY (`family_id`) REFERENCES `api_family` (`id`),
  ADD CONSTRAINT `api_species_genus_id_6a3097eb_fk_api_genus_id` FOREIGN KEY (`genus_id`) REFERENCES `api_genus` (`id`),
  ADD CONSTRAINT `api_species_kingdom_id_944bd213_fk_api_kingdom_id` FOREIGN KEY (`kingdom_id`) REFERENCES `api_kingdom` (`id`),
  ADD CONSTRAINT `api_species_order_id_223af0b0_fk_api_order_id` FOREIGN KEY (`order_id`) REFERENCES `api_order` (`id`),
  ADD CONSTRAINT `api_species_phylum_id_4cc1b0ca_fk_api_phylum_id` FOREIGN KEY (`phylum_id`) REFERENCES `api_phylum` (`id`);

--
-- Filtros para la tabla `api_species_medicinal_properties`
--
ALTER TABLE `api_species_medicinal_properties`
  ADD CONSTRAINT `api_species_medicina_medicinalproperty_id_4927f1c3_fk_api_medic` FOREIGN KEY (`medicinalproperty_id`) REFERENCES `api_medicinalproperty` (`id`),
  ADD CONSTRAINT `api_species_medicina_species_id_38c05fbd_fk_api_speci` FOREIGN KEY (`species_id`) REFERENCES `api_species` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
