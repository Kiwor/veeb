-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 04, 2020 kell 09:32 EL
-- Serveri versioon: 10.4.11-MariaDB
-- PHP versioon: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `veeb`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `posts`
--

CREATE TABLE `posts` (
                         `id` int(11) NOT NULL,
                         `user_id` int(11) NOT NULL,
                         `title` varchar(255) NOT NULL,
                         `content` text NOT NULL,
                         `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Andmete tõmmistamine tabelile `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created`) VALUES
(1, 2, 'First post', 'Loremi Ipsum jne.', '2020-03-04 08:30:40'),
(2, 2, 'Second post', 'Sample text.', '2020-03-04 08:30:40');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `posts`
--
ALTER TABLE `posts`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `posts`
--
ALTER TABLE `posts`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
