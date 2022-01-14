-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: std-mysql
-- Время создания: Дек 25 2021 г., 11:14
-- Версия сервера: 5.7.26-0ubuntu0.16.04.1
-- Версия PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `std_971_orkis`
--
CREATE DATABASE IF NOT EXISTS `std_961_travel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `std_961_travel`;

-- --------------------------------------------------------

--
-- Структура таблицы `Agents`
--

CREATE TABLE `Agents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `Id_organization` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Agents`
--

INSERT INTO `Agents` (`id`, `name`, `surname`, `patronymic`, `Id_organization`) VALUES
(1, 'Роман ', 'Петров', 'Семенович', 1),
(2, 'Варвара ', 'Одинцова', 'Ивановна', 1),
(3, 'Константин ', 'Ливидников', 'Сергеевич', 3),
(4, 'Галина ', 'Липко', 'Григорьевна', 2),
(5, 'Александр ', 'Броншнейн', 'Михайлович', 2),
(6, 'Анатолий ', 'Виценко', 'Анатольевич', 2),
(7, 'Маргарита ', 'Виценко', 'Александровна', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Agreement`
--

CREATE TABLE `Agreement` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `number_of_participants` int(11) DEFAULT NULL,
  `start_of_trip` date DEFAULT NULL,
  `end_of_trip` date DEFAULT NULL,
  `Id_organization` int(11) DEFAULT NULL,
  `Id_Agent` int(11) DEFAULT NULL,
  `Id_client` int(11) DEFAULT NULL,
  `Id_city` int(11) DEFAULT NULL,
  `Id_employee` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Agreement`
--

INSERT INTO `Agreement` (`id`, `date`, `number_of_participants`, `start_of_trip`, `end_of_trip`, `Id_organization`, `Id_Agent`, `Id_client`, `Id_city`, `Id_employee`, `updated_at`, `created_at`) VALUES
(1, '2021-09-18', 2, '2021-09-20', '2021-09-29', 3, 1, 2, 14, 1, '2021-11-03 17:23:55', NULL),
(2, '2003-06-23', 3, '2014-01-29', '2014-02-15', 1, 4, 3, 7, 2, NULL, NULL),
(3, '2021-11-03', 1, '2021-11-11', '2021-11-20', 1, 3, 1, 3, 2, NULL, NULL),
(8, '2021-11-03', 1, '2022-01-07', '2022-01-14', 3, 5, 6, 8, NULL, '2021-11-03 08:56:17', '2021-11-03 08:56:17'),
(10, '2021-11-03', 6, '2021-12-24', '2022-01-02', 2, 7, 10, 11, NULL, '2021-11-03 09:07:12', '2021-11-03 09:07:12'),
(21, '2021-11-03', 1, '2021-11-04', '2021-11-04', 1, 1, 1, 3, NULL, '2021-11-03 10:03:50', '2021-11-03 09:57:15'),
(22, '2021-11-06', 2, '2021-11-05', '2021-11-07', 1, 2, 15, 9, NULL, '2021-11-03 10:04:28', '2021-11-03 10:04:24'),
(23, '2021-11-03', 1, '2021-11-05', '2021-11-07', 1, 2, 3, 2, NULL, '2021-11-03 15:52:05', '2021-11-03 15:51:51'),
(28, '2021-11-03', 99, '2021-11-07', '2021-11-14', 2, 6, 2, 6, NULL, '2021-11-03 18:24:14', '2021-11-03 18:24:10'),
(30, '2021-11-14', 2, '2021-11-07', '2021-11-08', 2, 7, 16, NULL, NULL, '2021-11-14 08:39:02', '2021-11-14 08:39:02'),
(31, '2021-11-14', 2, '2021-11-07', '2021-11-08', 2, 7, 16, NULL, NULL, '2021-11-14 08:39:50', '2021-11-14 08:39:50'),
(32, '2021-11-14', 2, '2021-11-07', '2021-11-08', 2, 7, 16, NULL, NULL, '2021-11-14 08:43:42', '2021-11-14 08:43:42'),
(33, '2021-11-17', 2, '2021-11-28', '2021-12-25', 2, 5, 17, NULL, NULL, '2021-11-17 13:29:09', '2021-11-17 13:29:09'),
(34, '2021-11-17', 1, '2021-11-04', '2021-11-25', 3, 3, 1, NULL, NULL, '2021-11-17 13:53:13', '2021-11-17 13:53:13'),
(35, '2021-11-23', 2, '2021-11-23', '2021-11-24', 2, 7, 3, NULL, NULL, '2021-11-23 07:06:56', '2021-11-23 07:06:56'),
(36, '2021-12-07', 3, '2021-12-09', '2021-12-23', 2, 7, 1, NULL, NULL, '2021-12-07 07:09:21', '2021-12-07 07:09:21');

-- --------------------------------------------------------

--
-- Структура таблицы `City`
--

CREATE TABLE `City` (
  `id` int(11) NOT NULL,
  `name_city` varchar(100) DEFAULT NULL,
  `Id_country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `City`
--

INSERT INTO `City` (`id`, `name_city`, `Id_country`) VALUES
(1, 'Берлин', 1),
(2, 'Баден-Баден', 1),
(3, 'Дрезден', 1),
(4, 'Милан', 2),
(5, 'Флоренция', 2),
(6, 'Рим', 2),
(7, 'Мадрид', 3),
(8, 'Малага', 3),
(9, 'Валенсия', 3),
(10, 'Любляна', 4),
(11, 'Любляна', 5),
(12, 'Свети Влас', 6),
(13, 'Москва', 7),
(14, 'Самара', 7),
(15, 'Казань', 7),
(16, 'Смоленск', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `bth` date DEFAULT NULL,
  `series_passport` int(11) DEFAULT NULL,
  `number_passport` int(11) DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `government_agency` varchar(100) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `type_sex` enum('ж','м') DEFAULT NULL,
  `type_client` enum('VIP','Привилегированный','Обычный') DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`id`, `name`, `surname`, `patronymic`, `bth`, `series_passport`, `number_passport`, `date_of_issue`, `expiration_date`, `government_agency`, `place_of_birth`, `type_sex`, `type_client`, `updated_at`, `created_at`) VALUES
(1, 'Георгий', 'Шевченко', 'Михайлович', '1961-07-12', 71, 8523691, '2016-03-02', '2026-03-01', 'УФМС', 'Москва', 'м', 'VIP', '2021-11-30 16:54:13', NULL),
(2, 'Татьяна', 'Смирнова', 'Ивановка', '1980-05-25', 51, 1478529, '2013-03-29', '2023-03-28', 'УФМС', 'Курск', 'ж', 'VIP', NULL, NULL),
(3, 'Людмила', 'Гусева', 'Михайловна', '1989-04-22', 49, 3652365, '2010-12-05', '2020-12-04', 'УФМС', 'Краснодар', 'ж', 'VIP', NULL, NULL),
(4, 'Роман', 'Гвоздев ', 'Евгеньевич', '1966-05-20', 71, 3692581, '2010-12-12', '2020-12-11', 'УФМС', 'Москва', 'м', 'Привилегированный', NULL, NULL),
(5, 'Вячеслав', 'Симонов  ', 'Григорьевич', '1995-11-18', 71, 7894562, '2017-04-06', '2027-04-05', 'УФМС', 'Москва', 'м', 'Привилегированный', NULL, NULL),
(6, 'Rufina', 'Gataullina', 'Rinatovna', '1999-05-11', 4529, 678745, '2018-01-23', '2028-01-23', 'МВД России по г Москва', 'Самара', 'ж', 'Привилегированный', '2021-11-03 15:27:32', NULL),
(7, 'Елена', 'Смотрила', 'Владимировна', '1998-09-28', 51, 2589631, '2017-02-28', '2027-02-27', 'УФМС', 'Курск', 'ж', 'Обычный', NULL, NULL),
(9, 'Вышегородцев', 'Сергей', 'Иванович', '1977-02-12', 51, 9874563, '2010-02-10', '2020-01-10', 'УФМС', 'Курск', 'м', 'Обычный', NULL, NULL),
(10, 'Михаил', 'Довженко ', 'Григорьевич', '1987-09-14', 49, 9873215, '2017-06-16', '2027-06-15', 'УФМС', 'Краснодар', 'м', 'Обычный', NULL, NULL),
(11, 'Владимир', 'Гусев', 'Федорович', '1988-04-25', 49, 2563214, '2010-12-05', '2020-12-04', 'УФМС', 'Краснодар', 'м', 'Обычный', NULL, NULL),
(15, 'Сунур', 'Cасанов', 'Cупович', '2000-10-02', 1234, 123456, '2021-10-08', '2021-10-09', 'МВД Иваново', 'Иваново', 'м', 'Обычный', '2021-10-15 14:22:43', '2021-10-13 12:30:27'),
(16, 'Не тест', 'Тест', 'Тест', '2021-10-09', 1234, 123456, '2021-10-02', '2021-10-16', 'МВД Самара', 'Денискино', 'ж', 'VIP', '2021-10-15 14:35:40', '2021-10-15 14:26:35'),
(17, 'Полина', 'Заплатинач', 'Юрьевна', '2000-09-22', 8909, 1234556, '2021-11-03', '2021-11-28', 'МВД России по г Москва', 'Самара', 'ж', 'Привилегированный', '2021-11-17 13:28:02', '2021-11-17 13:28:02'),
(22, 'Клиент1', 'Клиент1', 'Клиент1', '2021-12-07', 1234, 123456, '2021-12-07', '2021-12-17', 'ррр', 'ввв', 'ж', 'Привилегированный', '2021-12-07 07:13:25', '2021-12-07 07:13:25'),
(23, 'Клиент2', 'Клиент2', 'Клиент2', '2021-12-11', 1234, 123456, '2021-12-12', '2021-12-31', 'ффф', 'ыыы', 'м', 'Обычный', '2021-12-07 07:13:55', '2021-12-07 07:13:55');

-- --------------------------------------------------------

--
-- Структура таблицы `Contract`
--

CREATE TABLE `Contract` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `number_of_participants` int(11) DEFAULT NULL,
  `amount_in_currency` float DEFAULT NULL,
  `Id_agreement` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Contract`
--

INSERT INTO `Contract` (`id`, `date`, `number_of_participants`, `amount_in_currency`, `Id_agreement`, `created_at`, `updated_at`) VALUES
(1, '2021-09-19', 2, 10500.9, 1, '2021-08-09 21:00:00', '2021-08-09 21:00:00'),
(2, '2021-11-11', 2, 12345.7, 2, '2021-11-11 10:56:15', '2021-11-11 10:56:15'),
(3, '2021-11-13', NULL, 11117, 22, '2021-11-13 10:56:30', '2021-11-13 10:56:30'),
(4, '2021-11-13', NULL, 12007.7, 8, '2021-11-13 12:55:06', '2021-11-13 12:55:06'),
(5, '2021-11-13', NULL, 1234, 10, '2021-11-13 13:17:04', '2021-11-13 13:17:04'),
(10, '2021-11-14', NULL, 11111, 28, '2021-11-14 15:17:50', '2021-11-14 15:17:50'),
(11, '2021-11-17', NULL, 999877, 3, '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(12, '2021-11-17', NULL, 34567, 33, '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(13, '2021-11-17', NULL, 88287.4, 34, '2021-11-17 13:56:17', '2021-11-17 13:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `Country`
--

CREATE TABLE `Country` (
  `id` int(11) NOT NULL,
  `name_country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Country`
--

INSERT INTO `Country` (`id`, `name_country`) VALUES
(1, 'Германия'),
(2, 'Италия'),
(3, 'Испания'),
(4, 'Словения'),
(5, 'Словакия'),
(6, 'Болгария'),
(7, 'Россия');

-- --------------------------------------------------------

--
-- Структура таблицы `Employees`
--

CREATE TABLE `Employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `bth` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `Id_organization` int(11) DEFAULT NULL,
  `type_position` enum('Бухгалтер','Администратор','Менеджер') DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Employees`
--

INSERT INTO `Employees` (`id`, `name`, `surname`, `patronymic`, `bth`, `photo`, `Id_organization`, `type_position`, `updated_at`, `created_at`) VALUES
(1, 'Александр', 'Иванов', 'Александрович1', '1961-11-01', 'photos/WYWP1tbifygZ4zd5nJXjJQWaiGmZxRzYPTDZ1uDN.png', 3, 'Администратор', '2021-12-07 05:59:01', NULL),
(2, 'Константин', 'Сидоров', 'Леонидович', '1984-11-20', 'photos/GV8E1NNrUFQ3OxguSYhG0V8NPGni1QNCOfBDgQn9.jpg', 3, 'Администратор', '2021-11-19 05:22:17', NULL),
(3, 'Мария', 'Федорова', 'Ивановна', '1992-07-23', 'photos/u71F0RV1UiXLsA1kToB9FKztcvy0OTiON6TfLiLI.jpg', 3, 'Менеджер', '2021-11-19 05:22:33', NULL),
(4, 'Артем', 'Константинов', 'Леонидович', '1986-01-10', 'photos/QiSMkuGkHUY9d0kPkqrcBryVEGN1G8DZS77ZfPsE.jpg', 3, 'Бухгалтер', '2021-11-19 05:22:43', NULL),
(5, 'Ирина', 'Романенко', 'Сергеевна', '1979-05-25', 'photos/kM00Wp43kVXjWtBvCucPALVO8x3iXDADx6US7piE.png', 2, 'Бухгалтер', '2021-11-19 05:51:39', NULL),
(6, 'Генрих', 'Зоммер ', 'Янович', '2000-02-12', '', 2, 'Менеджер', NULL, NULL),
(7, 'Сергей', 'Николаев ', 'Сергеевич', '1980-05-01', '', 2, 'Администратор', NULL, NULL),
(8, 'Игорь', 'Филатов', 'Владимирович', '1983-05-02', '', 1, 'Менеджер', NULL, NULL),
(9, 'Михаил', 'Крохин', 'Измайлович', '2000-10-12', '', 1, 'Бухгалтер', NULL, NULL),
(24, 'TEST', 'TEST', 'TEST', '2021-11-12', 'photos/7eOssx6DtFvFVSeNYFfaKL9bUm4HZ7u2JBGuxw40.png', 2, 'Бухгалтер', '2021-11-19 05:51:25', '2021-11-12 12:15:01');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Hotels`
--

CREATE TABLE `Hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type_category` enum('1','2','3','4','5','Апартаменты') DEFAULT NULL,
  `Id_city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Hotels`
--

INSERT INTO `Hotels` (`id`, `name`, `address`, `type_category`, `Id_city`) VALUES
(1, 'ECONTEL HOTEL Berlin***', 'Sömmeringstraße 24-26, Шарлоттенбург-Вильмерсдорф, 10589 Берлин, Германия', '3', 1),
(2, 'Leonardo Hotel Berlin***', 'Wilmersdorfer Str. 32, Шарлоттенбург-Вильмерсдорф, 10585 Берлин, Германия –', '4', 1),
(3, 'Sheraton Berlin Grand Hotel Esplanade*****', ' Lützowufer 15, Митте, 10785 Берлин, Германия', 'Апартаменты', 1),
(4, 'Radisson Blu Badischer Hof Hotel', 'Lange Str. 47, 76530 Baden-Baden, Германия', '3', 2),
(5, 'Leonardo Royal Hotel Baden- Baden', 'Falkenstr. 2, 76530 Баден-Баден, Германия', '1', 2),
(6, 'Cityherberge', 'Lingnerallee 3, 01069 Дрезден, Германия', '4', 3),
(7, 'Holiday Inn Express Dresden City Centre ', 'Dr-Kuelz Ring 15a, Старый город, 01067 Дрезден, Германия', '4', 3),
(8, 'Hotel Da Vinci ', 'Via Senigallia 6, 20161 Милан, Италия', '2', 4),
(9, 'Hotel Berna', 'Via Napo Torriani 18, Центральный вокзал, 20124 Милан, Италия', '4', 4),
(10, 'Hotel Royal ', 'Via delle Ruote 52, 50129 Флоренция, Италия', '3', 5),
(11, 'Hotel Gabriella', 'Via Palestro 88, Вокзал Термини, 00185 Рим, Италия', '5', 6),
(12, 'Grand Hotel Plaza', 'Via del Corso 126, Спанья, 00186 Рим, Италия', '1', 6),
(13, 'Eurostars Madrid Tower', ' Castellana, 259B, Фуэнкарраль – Эль-Пардо, 28046 Мадрид, Испания', '2', 7),
(14, 'Holiday Inn Express Málaga Airport', 'Avenida de Velazquez 294, Exit 3B Road MA-21, Churriana, 29004 Малага, Испания', '4', 8),
(15, 'Hotel Valencia Center', ' Avenida de Francia, 33, Camins al Grau, 46023 Валенсия, Испания', '2', 9),
(16, 'City Hotel Ljubljana', 'Dalmatinova Street 15, 1000 Любляна, Словения', 'Апартаменты', 10),
(17, 'Urban Hotel', '4 Štefanova ulica, 1000 Любляна, Словения', '2', 11),
(18, 'Комплекс Райский сад', 'Центральной дороги, 8250 Свети-Влас, Болгария', '4', 12),
(19, 'Palazzo San Lorenzo', ' 13 Borgo San Lorenzo, Сан-Лоренцо, 50123 Флоренция, Италия', '5', 5),
(20, 'Корстон', 'Николая Ершова, д 1А, Казань, Россия', '5', 15),
(21, 'Красные холмы', 'Космодамианская набережная, д 52 стр 6, Москва, Россия', '5', 13),
(22, 'Отель Лофт', 'Горького, д 75Б, Самара, Россия', '4', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2021_11_01_110909_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(4, 'AppModelsUser', 7),
(1, 'AppModelsUser', 8),
(4, 'AppModelsUser', 9),
(3, 'AppModelsUser', 10),
(3, 'AppModelsUser', 11),
(4, 'AppModelsUser', 12),
(1, 'AppModelsUser', 13),
(4, 'AppModelsUser', 14),
(3, 'AppModelsUser', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `Non_payment`
--

CREATE TABLE `Non_payment` (
  `id` int(11) NOT NULL,
  `amount_in_rubels` float DEFAULT NULL,
  `Id_organization` int(11) DEFAULT NULL,
  `Id_contract` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Non_payment`
--

INSERT INTO `Non_payment` (`id`, `amount_in_rubels`, `Id_organization`, `Id_contract`) VALUES
(1, 456456, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Number_of_cities_visited`
--

CREATE TABLE `Number_of_cities_visited` (
  `id` int(11) NOT NULL,
  `id_city` int(11) DEFAULT NULL,
  `id_agreement` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Number_of_cities_visited`
--

INSERT INTO `Number_of_cities_visited` (`id`, `id_city`, `id_agreement`, `updated_at`, `created_at`) VALUES
(1, 15, 1, NULL, NULL),
(2, 14, 1, NULL, NULL),
(3, 7, 2, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 8, 8, NULL, NULL),
(6, 11, 10, NULL, NULL),
(7, 3, 21, NULL, NULL),
(8, 9, 22, NULL, NULL),
(9, 2, 23, NULL, NULL),
(10, 6, 28, NULL, NULL),
(11, 2, 21, NULL, NULL),
(14, 14, 32, '2021-11-14 08:43:42', '2021-11-14 08:43:42'),
(15, 15, 32, '2021-11-14 08:43:42', '2021-11-14 08:43:42'),
(16, 8, 2, NULL, NULL),
(17, 5, 33, '2021-11-17 13:29:09', '2021-11-17 13:29:09'),
(18, 4, 33, '2021-11-17 13:29:09', '2021-11-17 13:29:09'),
(19, 13, 34, '2021-11-17 13:53:13', '2021-11-17 13:53:13'),
(20, 15, 34, '2021-11-17 13:53:13', '2021-11-17 13:53:13'),
(21, 1, 35, '2021-11-23 07:06:56', '2021-11-23 07:06:56'),
(22, 3, 35, '2021-11-23 07:06:56', '2021-11-23 07:06:56'),
(23, 8, 36, '2021-12-07 07:09:21', '2021-12-07 07:09:21');

-- --------------------------------------------------------

--
-- Структура таблицы `Organization`
--

CREATE TABLE `Organization` (
  `id` int(11) NOT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Organization`
--

INSERT INTO `Organization` (`id`, `organization_name`, `id_city`) VALUES
(1, 'Филиал №2', 13),
(2, 'Филиал №1', 13),
(3, 'Офис', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `Participants_of_trip`
--

CREATE TABLE `Participants_of_trip` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  `bth` date DEFAULT NULL,
  `id_contract` int(11) DEFAULT NULL,
  `id_voucher` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Participants_of_trip`
--

INSERT INTO `Participants_of_trip` (`id`, `name`, `surname`, `patronymic`, `bth`, `id_contract`, `id_voucher`, `created_at`, `updated_at`) VALUES
(3, 'Сунгур', 'Гасанов', 'Юсупович', '2001-10-25', 1, 1, NULL, NULL),
(4, 'Даниил', 'Алексеев', 'Владиславович', '2001-03-08', 1, 1, NULL, NULL),
(5, 'Тест1', 'Тест1', 'Тест1', NULL, 2, NULL, '2021-11-11 10:56:15', '2021-11-11 10:56:15'),
(6, 'Тест2', 'Тест2', 'Тест2', NULL, 2, NULL, '2021-11-11 10:56:15', '2021-11-11 10:56:15'),
(7, 'Леонид', 'Хромов', 'Владиславович', NULL, 3, NULL, '2021-11-13 10:56:30', '2021-11-13 10:56:30'),
(8, 'Rufina', 'Gataullina', 'Rinatovna', NULL, 4, NULL, '2021-11-13 12:55:06', '2021-11-13 12:55:06'),
(9, 'some', 'some', 'some', NULL, 5, NULL, '2021-11-13 13:17:04', '2021-11-13 13:17:04'),
(14, 'фф', 'фф', 'фф', NULL, 10, NULL, '2021-11-14 15:17:50', '2021-11-14 15:17:50'),
(15, 'Contract', 'Contract', 'Contract', NULL, 11, NULL, '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(16, 'Руфина', 'Гатауллиан', 'Ринатовна', NULL, 12, NULL, '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(17, 'Рифат', 'Гатауллин', 'Ринатович', NULL, 13, NULL, '2021-11-17 13:56:17', '2021-11-17 13:56:17'),
(18, 'Олег', 'Коняхин', 'Валентинович', NULL, 13, NULL, '2021-11-17 13:56:17', '2021-11-17 13:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Payment`
--

CREATE TABLE `Payment` (
  `id` int(11) NOT NULL,
  `date_of_payment` date DEFAULT NULL,
  `amount_in_rubels` float DEFAULT NULL,
  `id_contract` int(11) DEFAULT NULL,
  `id_employee` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Payment`
--

INSERT INTO `Payment` (`id`, `date_of_payment`, `amount_in_rubels`, `id_contract`, `id_employee`, `updated_at`, `created_at`) VALUES
(9, '2021-11-14', 1111, 5, 24, '2021-11-14 15:11:34', '2021-11-14 15:11:34'),
(10, '2021-11-14', 1111, 10, 24, '2021-11-14 15:18:25', '2021-11-14 15:18:25'),
(11, '2021-11-17', 1234570, 12, 5, '2021-11-17 13:46:56', '2021-11-17 13:46:56'),
(12, '2021-11-17', 11123, 13, 4, '2021-11-17 13:58:08', '2021-11-17 13:58:08'),
(13, '2021-12-07', 100000, 4, 4, '2021-12-07 07:15:19', '2021-12-07 07:15:19');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-11-01 08:11:16', '2021-11-01 08:11:16'),
(2, 'agent', 'web', '2021-11-01 08:11:51', '2021-11-01 08:11:51'),
(3, 'accountant', 'web', '2021-11-01 08:12:07', '2021-11-01 08:12:07'),
(4, 'manager', 'web', '2021-11-01 08:12:30', '2021-11-01 08:12:30');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Route`
--

CREATE TABLE `Route` (
  `id` int(11) NOT NULL,
  `id_contract` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Route`
--

INSERT INTO `Route` (`id`, `id_contract`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, '2021-11-11 10:56:15', '2021-11-11 10:56:15'),
(3, 3, '2021-11-13 10:56:30', '2021-11-13 10:56:30'),
(4, 4, '2021-11-13 12:55:06', '2021-11-13 12:55:06'),
(5, 5, '2021-11-13 13:17:04', '2021-11-13 13:17:04'),
(10, 10, '2021-11-14 15:17:50', '2021-11-14 15:17:50'),
(11, 11, '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(12, 12, '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(13, 13, '2021-11-17 13:56:17', '2021-11-17 13:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `Tours`
--

CREATE TABLE `Tours` (
  `id` int(11) NOT NULL,
  `type_room` enum('Стандарт одноместный','Стандарт двухместный','Делюкс','Люкс','Президентский') DEFAULT NULL,
  `type_food` enum('RO','EP','BB','HB','FB','AL') DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_voucher` int(11) DEFAULT NULL,
  `id_route` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Tours`
--

INSERT INTO `Tours` (`id`, `type_room`, `type_food`, `id_hotel`, `id_voucher`, `id_route`, `updated_at`, `created_at`) VALUES
(1, 'Стандарт двухместный', 'FB', 20, 1, 1, NULL, NULL),
(3, 'Стандарт двухместный', 'EP', 13, 2, 2, '2021-11-11 10:56:15', '2021-11-11 10:56:15'),
(4, 'Стандарт двухместный', 'EP', 15, NULL, 3, '2021-11-13 10:56:30', '2021-11-13 10:56:30'),
(5, 'Стандарт одноместный', 'AL', 14, NULL, 4, '2021-11-13 12:55:06', '2021-11-13 12:55:06'),
(6, 'Люкс', 'BB', 17, NULL, 5, '2021-11-13 13:17:04', '2021-11-13 13:17:04'),
(11, 'Стандарт двухместный', 'EP', 12, 6, 10, '2021-11-14 15:17:50', '2021-11-14 15:17:50'),
(12, 'Стандарт одноместный', 'EP', 14, 2, 2, NULL, NULL),
(13, 'Президентский', 'AL', 7, 7, 11, '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(14, 'Президентский', 'AL', 6, 7, 11, '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(15, 'Стандарт двухместный', 'FB', 22, 1, 1, NULL, NULL),
(16, 'Президентский', 'AL', 19, 8, 12, '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(17, 'Президентский', 'AL', 9, 8, 12, '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(18, 'Президентский', 'AL', 20, 9, 13, '2021-11-17 13:56:17', '2021-11-17 13:56:17'),
(19, 'Президентский', 'AL', 21, 9, 13, '2021-11-17 13:56:17', '2021-11-17 13:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `Transfer`
--

CREATE TABLE `Transfer` (
  `id` int(11) NOT NULL,
  `id_voucher` int(11) DEFAULT NULL,
  `model_of_transport` varchar(100) DEFAULT NULL,
  `departure` timestamp NULL DEFAULT NULL,
  `arrival` timestamp NULL DEFAULT NULL,
  `transfer` enum('Включен','Не включен') DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Transfer`
--

INSERT INTO `Transfer` (`id`, `id_voucher`, `model_of_transport`, `departure`, `arrival`, `transfer`, `updated_at`, `created_at`) VALUES
(1, 1, 'boeing 737-700', '2001-09-28 23:00:00', '2001-09-29 09:00:00', 'Включен', NULL, NULL),
(5, 6, NULL, NULL, NULL, 'Не включен', '2021-11-14 15:17:50', '2021-11-14 15:17:50'),
(6, 7, NULL, NULL, NULL, 'Включен', '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(7, 8, NULL, NULL, NULL, 'Включен', '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(8, 9, NULL, NULL, NULL, 'Включен', '2021-11-17 13:56:17', '2021-11-17 13:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text,
  `two_factor_recovery_codes` text,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `password_text`) VALUES
(6, 'Админов Админ Админович', 'admin@gmail.com', NULL, '$2y$10$e9bLQXOcQGt2mBl4NsADYODGk36tpXAGnIZwxvh4Ox3/QjMZNl0QO', NULL, NULL, NULL, '2021-12-01 10:52:16', '2021-12-01 10:52:16', 'qwerty'),
(7, 'Иванов Александр Александрович', 'alex@alex.ru', NULL, '$2y$10$l801Vlokza8umlX4qyMJ7.R5HJNbOIREQRHTgigKyvnRIWObzJZ3m', NULL, NULL, NULL, NULL, NULL, '12345678'),
(8, 'Сидоров Константин Леонидович', 'konst@konst.ru', NULL, '$2y$10$Vt1ArAlJQLt2YilELWQIVe7N.Hq4t.2IVSM2Cm2sdBp6Ib7jvIgcS', NULL, NULL, NULL, NULL, NULL, '12345678'),
(9, 'Федорова Мария Ивановна', 'mari@mari.ru', NULL, '$2y$10$9iZqJ8skg6lQLfo.EthZ4OptZkcQQMoK8HWdr.SCHbxCzpKDygfUy', NULL, NULL, NULL, NULL, NULL, '12345678'),
(10, 'Константинов Артем Леонидович', 'artem@artem.ru', NULL, '$2y$10$w5uSFue4Pz9uAXHjTtAQp.Uj9beDJYno/.Cm5RP/a4X3lrIKy/LYK', NULL, NULL, NULL, NULL, NULL, '12345678'),
(11, 'Романенко Ирина Сергеевна', 'irina@irina.ru', NULL, '$2y$10$r65LiBp68Hvi3VlYth7Y6OO/6W78tVA7CjORL5qComsaZOovuo.am', NULL, NULL, NULL, NULL, NULL, '12345678'),
(12, 'Зоммер Генрих Янович', 'genrih@genrih.ru', NULL, '$2y$10$HaJKy5QVcjlPIhD68R9hkeMjAG7/Ey41c3KPvK9JUVYbyx50L1qZK', NULL, NULL, NULL, NULL, NULL, '12345678'),
(13, 'Николаев Сергей Сергеевич', 'serg@serg.ru', NULL, '$2y$10$otHBNMJEVO8fjRgmdUtpJe/ozbD2P6GiRpUXWB6uzTQgvyKhwQKj6', NULL, NULL, NULL, NULL, NULL, '12345678'),
(14, 'Филатов Игорь Владимирович', 'igor@igor.ru', NULL, '$2y$10$8KXRZn043lRIquaKjcPkRuASRTTX00ozQJpPq/r.DM36dIAMSzJay', NULL, NULL, NULL, NULL, NULL, '12345678'),
(15, 'Крохин Михаил Измайлович', 'misha@misha.ru', NULL, '$2y$10$RAU3Wj/yiqA4YUKBVF5IceBfNMByrIzHMsy04zvEkl1P0m6J8xWR6', NULL, NULL, NULL, NULL, NULL, '12345678');

-- --------------------------------------------------------

--
-- Структура таблицы `Voucher`
--

CREATE TABLE `Voucher` (
  `id` int(11) NOT NULL,
  `type_of_transport` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Voucher`
--

INSERT INTO `Voucher` (`id`, `type_of_transport`, `updated_at`, `created_at`) VALUES
(1, 'Самолет', NULL, NULL),
(2, 'Поезд', NULL, NULL),
(6, 'Самолет', '2021-11-14 15:17:50', '2021-11-14 15:17:50'),
(7, 'Личный самолет', '2021-11-17 06:55:00', '2021-11-17 06:55:00'),
(8, 'Самолет', '2021-11-17 13:45:59', '2021-11-17 13:45:59'),
(9, 'Самолет 773', '2021-11-17 13:56:17', '2021-11-17 13:56:17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Agents`
--
ALTER TABLE `Agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_organization` (`Id_organization`);

--
-- Индексы таблицы `Agreement`
--
ALTER TABLE `Agreement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_employee` (`Id_employee`),
  ADD KEY `Id_organization` (`Id_organization`),
  ADD KEY `Id_Agent` (`Id_Agent`),
  ADD KEY `Id_client` (`Id_client`),
  ADD KEY `Id_city` (`Id_city`);

--
-- Индексы таблицы `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_country` (`Id_country`);

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Contract`
--
ALTER TABLE `Contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_agreement` (`Id_agreement`);

--
-- Индексы таблицы `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_organization` (`Id_organization`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `Hotels`
--
ALTER TABLE `Hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_city` (`Id_city`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `Non_payment`
--
ALTER TABLE `Non_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_organization` (`Id_organization`),
  ADD KEY `Id_contract` (`Id_contract`);

--
-- Индексы таблицы `Number_of_cities_visited`
--
ALTER TABLE `Number_of_cities_visited`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_agreement` (`id_agreement`),
  ADD KEY `id_city` (`id_city`);

--
-- Индексы таблицы `Organization`
--
ALTER TABLE `Organization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_city` (`id_city`);

--
-- Индексы таблицы `Participants_of_trip`
--
ALTER TABLE `Participants_of_trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contract` (`id_contract`),
  ADD KEY `id_voucher` (`id_voucher`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_employee` (`id_employee`),
  ADD KEY `id_contract` (`id_contract`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `Route`
--
ALTER TABLE `Route`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_contract` (`id_contract`);

--
-- Индексы таблицы `Tours`
--
ALTER TABLE `Tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_voucher` (`id_voucher`),
  ADD KEY `id_route` (`id_route`);

--
-- Индексы таблицы `Transfer`
--
ALTER TABLE `Transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_voucher` (`id_voucher`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `Voucher`
--
ALTER TABLE `Voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Agents`
--
ALTER TABLE `Agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `Agreement`
--
ALTER TABLE `Agreement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `City`
--
ALTER TABLE `City`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `Contract`
--
ALTER TABLE `Contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `Country`
--
ALTER TABLE `Country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Hotels`
--
ALTER TABLE `Hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Non_payment`
--
ALTER TABLE `Non_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Number_of_cities_visited`
--
ALTER TABLE `Number_of_cities_visited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `Organization`
--
ALTER TABLE `Organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Participants_of_trip`
--
ALTER TABLE `Participants_of_trip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `Payment`
--
ALTER TABLE `Payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Route`
--
ALTER TABLE `Route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `Tours`
--
ALTER TABLE `Tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `Transfer`
--
ALTER TABLE `Transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `Voucher`
--
ALTER TABLE `Voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Agents`
--
ALTER TABLE `Agents`
  ADD CONSTRAINT `agents_ibfk_1` FOREIGN KEY (`Id_organization`) REFERENCES `Organization` (`id`);

--
-- Ограничения внешнего ключа таблицы `Agreement`
--
ALTER TABLE `Agreement`
  ADD CONSTRAINT `agreement_ibfk_1` FOREIGN KEY (`Id_employee`) REFERENCES `Employees` (`id`),
  ADD CONSTRAINT `agreement_ibfk_2` FOREIGN KEY (`Id_organization`) REFERENCES `Organization` (`id`),
  ADD CONSTRAINT `agreement_ibfk_3` FOREIGN KEY (`Id_Agent`) REFERENCES `Agents` (`id`),
  ADD CONSTRAINT `agreement_ibfk_4` FOREIGN KEY (`Id_client`) REFERENCES `Clients` (`id`),
  ADD CONSTRAINT `agreement_ibfk_5` FOREIGN KEY (`Id_city`) REFERENCES `City` (`id`);

--
-- Ограничения внешнего ключа таблицы `City`
--
ALTER TABLE `City`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`Id_country`) REFERENCES `Country` (`id`);

--
-- Ограничения внешнего ключа таблицы `Contract`
--
ALTER TABLE `Contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Id_agreement`) REFERENCES `Agreement` (`id`);

--
-- Ограничения внешнего ключа таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Id_organization`) REFERENCES `Organization` (`id`);

--
-- Ограничения внешнего ключа таблицы `Hotels`
--
ALTER TABLE `Hotels`
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`Id_city`) REFERENCES `City` (`id`);

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Non_payment`
--
ALTER TABLE `Non_payment`
  ADD CONSTRAINT `non_payment_ibfk_1` FOREIGN KEY (`Id_organization`) REFERENCES `Organization` (`id`),
  ADD CONSTRAINT `non_payment_ibfk_2` FOREIGN KEY (`Id_contract`) REFERENCES `Contract` (`id`);

--
-- Ограничения внешнего ключа таблицы `Number_of_cities_visited`
--
ALTER TABLE `Number_of_cities_visited`
  ADD CONSTRAINT `number_of_cities_visited_ibfk_1` FOREIGN KEY (`id_agreement`) REFERENCES `Agreement` (`id`),
  ADD CONSTRAINT `number_of_cities_visited_ibfk_2` FOREIGN KEY (`id_city`) REFERENCES `City` (`id`);

--
-- Ограничения внешнего ключа таблицы `Organization`
--
ALTER TABLE `Organization`
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `City` (`id`);

--
-- Ограничения внешнего ключа таблицы `Participants_of_trip`
--
ALTER TABLE `Participants_of_trip`
  ADD CONSTRAINT `participants_of_trip_ibfk_1` FOREIGN KEY (`id_contract`) REFERENCES `Contract` (`id`),
  ADD CONSTRAINT `participants_of_trip_ibfk_2` FOREIGN KEY (`id_voucher`) REFERENCES `Voucher` (`id`);

--
-- Ограничения внешнего ключа таблицы `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_employee`) REFERENCES `Employees` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`id_contract`) REFERENCES `Contract` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Route`
--
ALTER TABLE `Route`
  ADD CONSTRAINT `route_ibfk_1` FOREIGN KEY (`id_contract`) REFERENCES `Contract` (`id`);

--
-- Ограничения внешнего ключа таблицы `Tours`
--
ALTER TABLE `Tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `Hotels` (`id`),
  ADD CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`id_voucher`) REFERENCES `Voucher` (`id`),
  ADD CONSTRAINT `tours_ibfk_3` FOREIGN KEY (`id_route`) REFERENCES `Route` (`id`);

--
-- Ограничения внешнего ключа таблицы `Transfer`
--
ALTER TABLE `Transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`id_voucher`) REFERENCES `Voucher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
