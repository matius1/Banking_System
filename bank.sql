-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Gru 2016, 21:06
-- Wersja serwera: 10.1.10-MariaDB
-- Wersja PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bank`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adres`
--

CREATE TABLE `adres` (
  `IdAdres` int(11) NOT NULL,
  `Ulica` varchar(60) NOT NULL,
  `Dom` int(11) NOT NULL,
  `Mieszkanie` int(11) NOT NULL,
  `Zip` int(11) NOT NULL,
  `Zip2` int(11) NOT NULL,
  `Miasto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `Imie` varchar(40) NOT NULL,
  `Nazwisko` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Haslo` varchar(50) NOT NULL,
  `Pesel` varchar(40) NOT NULL,
  `IdAdres` int(11) NOT NULL,
  `NumerTel` varchar(30) NOT NULL,
  `DataUrodzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`IdAdres`),
  ADD KEY `IdAdres` (`IdAdres`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Pesel`),
  ADD KEY `Pesel` (`Pesel`),
  ADD KEY `IdAdres` (`IdAdres`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`IdAdres`) REFERENCES `adres` (`IdAdres`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
