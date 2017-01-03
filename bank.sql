-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Sty 2017, 00:45
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
  `Ulica` varchar(60) DEFAULT NULL,
  `Dom` int(11) DEFAULT NULL,
  `Mieszkanie` int(11) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Zip2` int(11) DEFAULT NULL,
  `Miasto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rachunek`
--

CREATE TABLE `rachunek` (
  `IdRachunek` int(11) NOT NULL,
  `NrRachunku` varchar(255) DEFAULT NULL,
  `Pesel` bigint(20) DEFAULT NULL,
  `Saldo` double DEFAULT NULL,
  `Waluta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `rachunek`
--

INSERT INTO `rachunek` (`IdRachunek`, `NrRachunku`, `Pesel`, `Saldo`, `Waluta`) VALUES
(1, 'PL697205975139167893297143402333', 12345678901, 5156.7300000000005, 'PLN'),
(2, 'PL618896332508543497938224365029', 12345678901, 653.6700000000001, 'PLN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `transfer`
--

CREATE TABLE `transfer` (
  `IdTransfer` int(11) NOT NULL,
  `Nr1` varchar(255) DEFAULT NULL,
  `Nr2` varchar(255) DEFAULT NULL,
  `Wartosc` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `transfer`
--

INSERT INTO `transfer` (`IdTransfer`, `Nr1`, `Nr2`, `Wartosc`) VALUES
(1, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 124),
(2, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 5),
(3, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 3.2),
(4, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 8.5),
(5, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 0.01),
(6, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 0.02),
(7, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 1.42),
(8, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 0.29),
(9, 'PL697205975139167893297143402333', 'PL618896332508543497938224365029', 0.03),
(10, 'PL618896332508543497938224365029', 'PL697205975139167893297143402333', 5000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `Imie` varchar(40) NOT NULL,
  `Nazwisko` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Haslo` varchar(50) NOT NULL,
  `Pesel` varchar(40) NOT NULL,
  `IdAdres` int(11) NOT NULL,
  `NumerTel` varchar(30) NOT NULL,
  `DataUrodzenia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`Imie`, `Nazwisko`, `Email`, `Login`, `Haslo`, `Pesel`, `IdAdres`, `NumerTel`, `DataUrodzenia`) VALUES
('gfdgd', 'gfdgdf', 'gfdg@fsdf', 'fdsfsd', 'fdsfds', '34243424323', 0, '432423424', '11/11/11'),
('dsda', 'DSADASdasddd', 'dasda@dsds', 'dsad', 'dasdsa', '43243242342', 0, '432434234', '12/12/12');

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
-- Indexes for table `rachunek`
--
ALTER TABLE `rachunek`
  ADD PRIMARY KEY (`IdRachunek`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`IdTransfer`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Pesel`),
  ADD KEY `Pesel` (`Pesel`),
  ADD KEY `IdAdres` (`IdAdres`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
