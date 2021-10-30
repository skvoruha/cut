-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 30 2021 г., 10:46
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cut_url`
--

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `long_link` varchar(250) DEFAULT NULL,
  `short_link` varchar(20) DEFAULT NULL,
  `views` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `user_id`, `long_link`, `short_link`, `views`) VALUES
(18, 18, '12', 'bu4enc', 0),
(19, 18, '8', '8v4ytm', 0),
(35, 17, '345', 's5i82v', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(8, 'qe', '$2y$10$IWfQoK7xs2D2iVP7NWlaPOFhK7Ax5hcis0kGL/ohMa3K.xbtvlPMy'),
(9, 'qw', '$2y$10$0QKOzlrNCs9TTadzwzpfpOxICdBq2I54XPEAxa5zvNqjSOqtas7e.'),
(10, 'asd', '$2y$10$LHf38WDJdqciScsu4QHyjuko9oFocz.aRCJwKzkcva3rPzQX/gVBq'),
(11, '123', '$2y$10$hV25khF/rWlbVVmtHi8n9ecmwZ0KsGa/5K8Ko4KLtRPjZt09MTuHa'),
(12, '11', '$2y$10$FCdcxBRCdB885cUoghi3c.M8X6xCZ8XQItwYGNISL5x1ykgWFXuLS'),
(13, '22', '$2y$10$cA5uCZyJXJtvQLes7W6UJOAfHs6vJTcHcubli5QPmQ2xhrUzVIxNW'),
(14, '33', '$2y$10$A0XS7GNai0Eq4iZ6TVFkWeARUVVoBzuKDf7D7XVUDSLEXkwL6lo6S'),
(15, '44', '$2y$10$LnnWjzYl7ASbcBSgQJyynOr935MRTgSgghPeJDSyyJ1A.epkB8kry'),
(16, '55', '$2y$10$XHgEGpMPs3s0K.bSZXMZyOBsdV4TSlZbLt4rt52xHBaliNVHd2PBy'),
(17, '333', '$2y$10$A7BjTeEoFvd5Ssxysddlyu6tlMbFlWOsOfVPSCRLhG64mj.TMiXRu'),
(18, 'eee', '$2y$10$VSko7FpCC6WsCXNduSHsiOPTH/L59McM9P0brZBWHw5Nj2.JHnT6W');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short_link` (`short_link`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
