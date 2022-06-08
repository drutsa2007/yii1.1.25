-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2022 г., 10:19
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testyii`
--

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `date_log` date DEFAULT NULL,
  `type_log` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sub_type_log` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`id`, `date_log`, `type_log`, `sub_type_log`, `ip`, `text`) VALUES
(1, '2011-09-14', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 1\r'),
(2, '2011-09-14', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 21\r'),
(3, '2011-09-14', 'core:error', 'pid 35708:tid 4328636416', '72.15.98.187', ' Error text 3\r'),
(4, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 5\r'),
(5, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 19\r'),
(6, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 7\r'),
(7, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.98.187', ' Error text 17\r'),
(8, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 9\r'),
(9, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 15\r'),
(10, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 11\r'),
(11, '2011-09-16', 'core:error', 'pid 35708:tid 4328636416', '72.15.99.187', ' Error text 13\r'),
(12, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.38.10', ' Error text 12\r'),
(13, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 10\r'),
(14, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 14\r'),
(15, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 8\r'),
(16, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 16\r'),
(17, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 6\r'),
(18, '2011-08-18', 'authz_core:error', 'pid 30395', '144.76.38.10', ' Error text 18\r'),
(19, '2011-08-19', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 4\r'),
(20, '2011-08-19', 'authz_core:error', 'pid 30395', '144.76.28.10', ' Error text 20\r'),
(21, '2011-08-19', 'authz_core:error', 'pid 30395', '144.76.38.10', ' Error text 2\r'),
(22, '2011-08-19', 'authz_core:error', 'pid 30395', '144.76.38.10', ' Error text 22');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `token`) VALUES
(1, 'user@mail.ru', '123123', 'adsfhgkjalrubsvduawerl');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
