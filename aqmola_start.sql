-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 29 2025 г., 10:38
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
(2, 'Kokshetau Guide', 'Туризм', 'Интерактивный гид по достопримечательностям Акмолинской области.', '', '2025-11-28 17:30:03'),
(3, 'Smart School', 'EdTech', 'Платформа для дистанционного обучения сельских школ.', '', '2025-11-28 17:30:03'),
(4, 'EcoRecycle', 'Экология', 'Сервис по сбору и переработке пластика в регионе.', '', '2025-11-28 17:30:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `startups`
--
ALTER TABLE `startups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `startups`
--
ALTER TABLE `startups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
