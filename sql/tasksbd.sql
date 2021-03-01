-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 26 2021 г., 11:17
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tasksbd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) NOT NULL,
  `name` varchar(111) NOT NULL,
  `status` varchar(111) NOT NULL,
  `worker1` varchar(111) NOT NULL,
  `worker2` varchar(111) NOT NULL,
  `worker3` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `status`, `worker1`, `worker2`, `worker3`) VALUES
(1, 'task1', 'Done', '1', '10', '4'),
(2, 'task2', 'Done', '5', '6', '2'),
(3, 'task3', 'Done', '2', '9', '8'),
(4, 'task4', 'Process', '7', '2', '1'),
(5, 'task5', 'New', '3', '6', '10');

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(111) NOT NULL,
  `SecondName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`id`, `FirstName`, `SecondName`) VALUES
(1, 'Bob', 'Marley'),
(2, 'Jacob', 'Smith'),
(3, 'Ron', 'Taylor'),
(4, 'Frank', 'Rons'),
(5, 'John', 'Razor'),
(6, 'Lepard', 'Armani'),
(7, 'Giorgio', 'Mask'),
(8, 'Ilon', 'Best'),
(9, 'Jon', 'Rasel'),
(10, 'Jacob', 'Bond');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
