-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 09. led 2025, 12:35
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `kouba2`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `tridy`
--

CREATE TABLE `tridy` (
  `id` int(11) NOT NULL,
  `nazev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `tridy`
--

INSERT INTO `tridy` (`id`, `nazev`) VALUES
(1, 'Trida A'),
(2, 'Trida B');

-- --------------------------------------------------------

--
-- Struktura tabulky `ucitele`
--

CREATE TABLE `ucitele` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `prijmeni` varchar(50) NOT NULL,
  `trida_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `ucitele`
--

INSERT INTO `ucitele` (`id`, `jmeno`, `prijmeni`, `trida_id`) VALUES
(2, '1', '1', 1),
(3, '1', '1', 1),
(4, 'Tomas', 'Slaby', 2),
(5, 'Petr', 'Nedved', 2),
(6, 'Petr', 'Mucitel', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `uzivatele`
--

CREATE TABLE `uzivatele` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `heslo` varchar(255) NOT NULL,
  `role` enum('student','teacher') NOT NULL,
  `trida_id` int(11) DEFAULT NULL,
  `schvalen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `uzivatele`
--

INSERT INTO `uzivatele` (`id`, `jmeno`, `heslo`, `role`, `trida_id`, `schvalen`) VALUES
(1, 'petrp1', '$2b$10$vtizEnJ62sb763mE6WhjK.NPZSAfSvFokNY6HGSUNFxnX5LvTUZ.m', 'teacher', 1, 1),
(2, 'funguj', '$2b$10$vIVNnaibeBeoWnHo2wnHAOSEQtJlkNinbWilAv4ITeyVTAfgaRIES', 'student', 1, 1),
(4, 'rozbijse', '$2b$10$qng/sWsWvD/NbMsnySTe0Ozp9Y9Vd95n3V8UJsimOrXU92bpgeyM2', 'student', 1, 1),
(5, 'test', '$2b$10$GrVFZDxROJZZ8AYkCDtTOOYCwKA.ySDjdJtpF0Vz1ydP4MPiBqZga', 'student', NULL, 0),
(6, 'testtt', '$2b$10$AjXH6bf8JnTFLjgneMP1S..oyy3gkrmDBsniI924I3yrgeYrMxj8W', 'student', 1, 1),
(7, 'pdf22', '$2b$10$vINcVuHtTCpYGrgE/9aiAuwpocFk5Sc0anxcJUVSo0211vt/fEB0e', 'teacher', 2, 1),
(8, 'decko22', '$2b$10$Zfb4H5BaTgJliy0nBhHnKeT6MxVNsQpJpqUylRUTmui42.P.VgVIC', 'student', 2, 1),
(9, '2810Ucitel2', '$2b$10$ruSL8dXNrH7hsGqfMT5puO7x3Cr84x6w0Hg0Am6hsFkh6boSxYpDG', 'teacher', 2, 1),
(10, '2810UZak2', '$2b$10$Rirx0KmOdf6qv4Pft5r5EeE.w7OK5SnXthp1clOq/rmSm.RinPVta', 'student', 2, 1),
(11, '2810Ucitel1', '$2b$10$qqiiQK9KwM2ibmSNt/lIXuSzmTLNZjHg7qwBQrcYRoiECcloKKHyu', 'teacher', 1, 1),
(12, '2810Zak2', '$2b$10$HOquzuyDJU9FknBD0cmCvOLjAXQI0pUVllfJN7svV.YOUQuaouCmy', 'student', 1, 1),
(13, 'trida2', '$2b$10$XZFzhxr.x5cqutd/37rSP.GUYpkGbrXWa6tfEezmD1tfIMy9hvjT2', 'student', 2, 1),
(14, 'TEST5', '$2b$10$5dLb7wNdd7jFjqIpdPbNX.zqC1RXOdVzuJC6Gb/rxC8q93IvPlqPa', 'student', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `zaci`
--

CREATE TABLE `zaci` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(50) NOT NULL,
  `prijmeni` varchar(50) NOT NULL,
  `trida_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `zaci`
--

INSERT INTO `zaci` (`id`, `jmeno`, `prijmeni`, `trida_id`, `user_id`) VALUES
(13, 'Tomas', 'Jedno', 1, 2),
(14, 'Jan', 'Novak', 1, 3),
(15, 'Pepa', 'Hodina', 1, 4),
(17, 'Ja', 'Nejsem', 1, 6),
(18, 'Antonin', 'Klac', 2, 8),
(19, 'Petr', 'Syn', 2, 10),
(20, 'Petr', 'Nezak', 1, 12),
(21, 'Test', 'Netest', 2, 13),
(22, 'J', 'P', 1, 14);

-- --------------------------------------------------------

--
-- Struktura tabulky `znamky`
--

CREATE TABLE `znamky` (
  `id` int(11) NOT NULL,
  `znamka` tinyint(4) DEFAULT NULL CHECK (`znamka` >= 1 and `znamka` <= 5),
  `vaha` tinyint(4) DEFAULT NULL CHECK (`vaha` >= 1 and `vaha` <= 10),
  `popis` text DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `znamky`
--

INSERT INTO `znamky` (`id`, `znamka`, `vaha`, `popis`, `user_id`) VALUES
(1, 1, 1, '1', 2),
(4, 1, 1, 'Test', 2),
(5, 5, 10, 'Projekt', 6),
(6, 5, 5, 'Small project', 2),
(7, 1, 10, 'DÚ', 10),
(8, 5, 10, '10', 12);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `tridy`
--
ALTER TABLE `tridy`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `ucitele`
--
ALTER TABLE `ucitele`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trida_id` (`trida_id`);

--
-- Indexy pro tabulku `uzivatele`
--
ALTER TABLE `uzivatele`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trida_id` (`trida_id`);

--
-- Indexy pro tabulku `zaci`
--
ALTER TABLE `zaci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trida_id` (`trida_id`);

--
-- Indexy pro tabulku `znamky`
--
ALTER TABLE `znamky`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `tridy`
--
ALTER TABLE `tridy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `ucitele`
--
ALTER TABLE `ucitele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pro tabulku `uzivatele`
--
ALTER TABLE `uzivatele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pro tabulku `zaci`
--
ALTER TABLE `zaci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pro tabulku `znamky`
--
ALTER TABLE `znamky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `ucitele`
--
ALTER TABLE `ucitele`
  ADD CONSTRAINT `ucitele_ibfk_1` FOREIGN KEY (`trida_id`) REFERENCES `tridy` (`id`);

--
-- Omezení pro tabulku `uzivatele`
--
ALTER TABLE `uzivatele`
  ADD CONSTRAINT `uzivatele_ibfk_1` FOREIGN KEY (`trida_id`) REFERENCES `tridy` (`id`);

--
-- Omezení pro tabulku `zaci`
--
ALTER TABLE `zaci`
  ADD CONSTRAINT `zaci_ibfk_1` FOREIGN KEY (`trida_id`) REFERENCES `tridy` (`id`);

--
-- Omezení pro tabulku `znamky`
--
ALTER TABLE `znamky`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `uzivatele` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
