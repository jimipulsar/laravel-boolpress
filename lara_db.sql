-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Feb 22, 2019 alle 18:46
-- Versione del server: 10.1.37-MariaDB-0+deb9u1
-- Versione PHP: 7.2.15-1+0~20190209065123.16+stretch~1.gbp3ad8c0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(20) NOT NULL,
  `n_pages` int(11) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `n_pages`, `year`, `ISBN`, `genre`) VALUES
(1, 'Promessi Sposi', 'Alessandro Manzoni', NULL, NULL, NULL, 'Romanzo'),
(7, 'Inferno', 'Dante Alighieri', NULL, '1314', NULL, 'lirico'),
(8, 'Il piacere', 'Gabriele D\'Annunzio', NULL, '1889', NULL, 'Romanzo');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `name` varchar(10) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `age`, `gender`) VALUES
(1, 'Pietro', 'Ricci', 34, 'm'),
(2, 'Michele', 'Papagni', 33, 'm'),
(3, 'Frank', 'Serpico', 44, 'm'),
(4, 'Claudio', 'Margioglio', 23, 'm');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
