-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mar 01, 2019 alle 18:07
-- Versione del server: 10.1.37-MariaDB-0+deb9u1
-- Versione PHP: 7.2.15-1+0~20190209065123.16+stretch~1.gbp3ad8c0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_post`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_02_28_004447_create_categories_table', 1),
(2, '2019_02_28_122404_create_posts_table', 1),
(3, '2019_02_28_123132_create_user_table', 1),
(4, '2019_02_28_144749_update_posts_table', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `author`, `content`, `category_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Conversazione su Tiresia', 'Andrea Camilleri', '«Chiuamami Tiresia. Per dirla alla maniera dello scrittore Melville, quello di \'Moby Dick\'. Oppure Tiresia sono, per dirla alla maniera di qualcun altro. Zeus mi diede la possibilità di vivere sette esistenze e questa è una delle sette. Non posso dirvi quale. Qualcuno di voi di certo avrà visto il mio personaggio su questo stesso palco negli anni passati, ma si trattava di attori che mi interpretavano. Oggi sono venuto di persona perché voglio raccontarvi  quello che mi è accaduto nel corso dei secoli e per cercare di mettere un punto fermo nella mia trasposizione da persona a persona', 'Romanzo', '2019-02-28 12:16:26', '2019-02-28 14:18:47'),
(2, NULL, 'Ragazzi di vita', 'Pier Paolo Pasolini', 'Il Riccetto, il Caciotta, il Lenzetta, il Begalone, Alduccio e altri sono giovanissimi sottoproletari romani. Sciamano dalle borgate della Roma anni Cinquanta verso il centro, in un itinerario picaresco fatto di eventi comici, tragici, grotteschi. Alternano una violenza gratuita a una generosità patetica: Riccetto salva una rondine che stava per annegare ma non potrà far nulla dinanzi al piccolo Genesio trascinato via dalla corrente dell\'Aniene; Agnolo e Oberdan assistono Marcello agonizzante, rimasto travolto dal crollo della sua scuola.', 'Romanzi e letterature', '2019-02-28 14:29:38', '2019-02-28 14:29:38'),
(3, NULL, 'Petrolio', 'Pier Paolo Pasolini', 'Iniziato durante i primi anni settanta, durante le crisi petrolifera mondiale, e portasdaato avanti fino alla morte, nel novembre 1975, «Petrolio» è un gigantesco frammento di quello che avrebbe dovuto essere un romanzo-monstruum di circa duemila pagine. Una enciclopedia del racconto, che comprende tutti i registri, bassi e alti, della scrittura. Appunti, annotazioni, una lettera a Alberto Moravia, schizzi e specchietti che compongono un libro «nero», pubblicato, con fedeltà all\'autografo, solo nel 1992.', 'Romanzi e Letterature', '2019-02-28 14:50:11', '2019-02-28 14:53:06'),
(4, NULL, 'Mastro Don Gesualdo', 'Giovanni Verga', 'Giancarlo Mazzacurati ha sottratto \"Mastro-don Gesualdo\" alla monumentalità del testo scolastico, a tutti quegli involucri che l\'hanno imbalsamato per rivelarne la pura forza narrativa. La prima edizione del 1888, qui inserita in appendice dopo quella del 1889, e continuamente confrontata all\'interno del commento, indica il «percorso» seguito da Verga e mostra la formazione e trasformazione dell\'opera nelle diverse fasi di stesura. Un modo per entrare nella macchina narrativa dello scrittore siciliano e scoprire «le dinamiche e le tensioni che scorrono sotto l\'ultima vernice, la più cristallizzata, appunto, dall\'abitudine». In appendice l\'edizione del 1888.', 'Narrativa Classica', '2019-03-01 15:43:36', '2019-03-01 15:43:36');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT per la tabella `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
