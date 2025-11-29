-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 29 2025 г., 14:54
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aqmola_start`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date_event` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `date_event`, `description`) VALUES
(1, 'Хакатон Aqmola 2025', '30 Ноября, 13:00', 'Главное IT-событие региона.'),
(2, 'Встреча с инвесторами', '5 Декабря, 18:00', 'Питчинг проектов в отеле Plaza.');

-- --------------------------------------------------------

--
-- Структура таблицы `startups`
--

CREATE TABLE `startups` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `startups`
--

INSERT INTO `startups` (`id`, `title`, `category`, `description`, `image_url`, `created_at`) VALUES
(1, 'StartUP Agro', 'Агротех', 'Система мониторинга посевов, техники с помощью AI.', 'img/Agro.png', '2025-11-28 17:30:03'),
(2, 'Kokshetau Guide', 'Туризм', 'Интерактивный гид по достопримечательностям Акмолинской области.', 'img/city.png', '2025-11-28 17:30:03'),
(3, 'Smart School', 'EdTech', 'Платформа для дистанционного обучения сельских школ.', 'img/school.png', '2025-11-28 17:30:03'),
(4, 'EcoRecycle', 'Экология', 'Сервис по сбору и переработке пластика в регионе.', 'img/musor.png', '2025-11-28 17:30:03');

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `members` text NOT NULL,
  `skills` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `name`, `members`, `skills`) VALUES
(1, 'StartUp Agro', 'Роман', 'PHP, JS, Python'),
(2, 'CyberTeam', 'Алибек, Санжар', 'Java, Spring, Angular');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `startups`
--
ALTER TABLE `startups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `startups`
--
ALTER TABLE `startups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
