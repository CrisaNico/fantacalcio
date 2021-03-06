-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 21, 2017 at 04:32 PM
-- Server version: 5.6.34
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantacalcio`
--

-- --------------------------------------------------------

--
-- Table structure for table `calciatore`
--

CREATE TABLE `calciatore` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ruolo` varchar(50) NOT NULL,
  `squadra_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calciatore`
--

INSERT INTO `calciatore` (`id`, `nome`, `ruolo`, `squadra_id`) VALUES
(21, 'Gianluigi Donnarumma', 'Portiere', 1),
(22, 'Ignazio Abate', 'Difensore / Esterno Destro', 1),
(23, 'Gabriel Paletta', 'Difensore / Centrale', 1),
(24, 'Alessio Romagnoli', 'Difensore / Centrale', 1),
(25, 'Luca Antonelli', 'Difensore / Esterno Sinistro', 1),
(31, 'Manuel Locatelli', 'Centrocampista', 1),
(32, 'Juraj Kucka', 'Centrocampista', 1),
(33, 'Mario Pašalić', 'Centrocampista', 1),
(34, 'Suso', 'Attaccante / Esterno Destro', 1),
(35, 'Gerard Deulofeu', 'Attaccante / Esterno Sinistro', 1),
(36, 'Carlos Bacca', 'Attaccante / Punta', 1),
(37, 'Samir Handanovic', 'Portiere', 2),
(38, 'Cristian Ansaldi', 'Difensore', 2),
(39, 'Jeison Murillo', 'Difensore', 2),
(40, 'Gary Medel', 'Difensore', 2),
(41, 'Danilo D\'Ambrosio', 'Difensore', 2),
(42, 'Roberto Gagliardini', 'Centrocampista', 2),
(43, 'Geoffrey Kondogbia', 'Centrocampista', 2),
(44, 'Antonio Candreva', 'Centrocampista', 2),
(45, 'Joao Mario', 'Centrocampista', 2),
(46, 'Ivan Perisic', 'Attaccante', 2),
(47, 'Mauro Icardi', 'Attaccante', 2),
(48, 'Joe Hart', 'Portiere', 3),
(49, 'Davide Zappacosta', 'Difensore', 3),
(50, 'Arlind Ajeti', 'Difensore', 3),
(51, 'Emiliano Moretti', 'Difensore', 3),
(52, 'Antonio Barreca', 'Difensore', 3),
(53, 'Marco Benassi', 'Centrocampista', 3),
(54, 'Sasa Lukic', 'Centrocampista', 3),
(55, 'Daniele Baselli', 'Centrocampista', 3),
(56, 'Iago Falque', 'Attaccante', 3),
(57, 'Andrea Belotti', 'Attaccante', 3),
(58, 'Adem Ljajic', 'Attaccante', 3),
(59, 'Gianluigi Buffon', 'Portiere', 4),
(60, 'Dani Alves', 'Difensore', 4),
(61, 'Leonardo Bonucci', 'Difensore', 4),
(62, 'Daniele Rugani', 'Difensore', 4),
(63, 'Sami Khedira', 'Centrocampista', 4),
(64, 'Claudio Marchisio', 'Centrocampista', 4),
(65, 'Juan Cuadrado', 'Centrocampista', 4),
(66, 'Paulo Dybala', 'Attaccante', 4),
(67, 'Mario Mandzukic', 'Attaccante', 4),
(68, 'Gonzalo Higuaín', 'Attaccante', 4),
(69, 'Eugenio Lamanna', 'Portiere', 5),
(70, 'Armando Izzo', 'Difensore', 5),
(71, 'Nicolás Burdisso', 'Difensore', 5),
(72, 'Lucas Orbán', 'Difensore', 5),
(73, 'Diego Laxalt', 'Centrocampista', 5),
(74, 'Darko Lazović', 'Centrocampista / Attaccante', 5),
(75, 'Danilo Cataldi', 'Centrocampista', 5),
(76, 'Oscar Hiljemark', 'Centrocampista', 5),
(77, 'Raffaele Palladino', 'Attaccante', 5),
(78, 'Luca Rigoni', 'Attaccante / Centrocampista', 5),
(79, 'Giovanni Simeone', 'Attaccante', 5),
(80, 'Emiliano Viviano', 'Portiere', 6),
(81, 'Bartosz Bereszynski', 'Difensore', 6),
(82, 'Matías Silvestre', 'Difensore', 6),
(83, 'Milan Skriniar', 'Difensore', 6),
(84, 'Daniel Pavlovic', 'Difensore', 6),
(85, 'Edgar Barreto', 'Centrocampista', 6),
(86, 'Karol Linetty', 'Centrocampista', 6),
(87, 'Dennis Praet', 'Centrocampista', 6),
(88, 'Bruno Fernandes', 'Centrocampista', 6),
(89, 'Fabio Quagliarella', 'Attaccante', 6),
(90, 'Luis Muriel', 'Attaccante', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `calciatore_vista`
-- (See below for the actual view)
--
CREATE TABLE `calciatore_vista` (
`id` int(11)
,`nome` varchar(50)
,`ruolo` varchar(50)
,`allenatore` varchar(50)
,`denominazione` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `calendario`
--

CREATE TABLE `calendario` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `goal_casa` int(11) NOT NULL,
  `goal_ospite` int(11) NOT NULL,
  `squadra_id` int(11) NOT NULL,
  `ospite_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendario`
--

INSERT INTO `calendario` (`id`, `data`, `goal_casa`, `goal_ospite`, `squadra_id`, `ospite_id`) VALUES
(1, '2017-02-04 00:00:00', 2, 1, 1, 3),
(2, '2017-02-04 00:00:00', 3, 2, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `squadra`
--

CREATE TABLE `squadra` (
  `id` int(11) NOT NULL,
  `allenatore` varchar(50) NOT NULL,
  `denominazione` varchar(50) NOT NULL,
  `datafondazione` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `squadra`
--

INSERT INTO `squadra` (`id`, `allenatore`, `denominazione`, `datafondazione`) VALUES
(1, 'Vincenzo Montella', 'Associazione Calcio Milan', '1899-12-16 00:00:00'),
(2, 'Stefano Pioli', 'Football Club Internazionale Milano', '1908-03-09 00:00:00'),
(3, 'Sinisa Mihajlovic', 'Torino Football Club', '1906-12-03 00:00:00'),
(4, 'Massimiliano Allegri', 'Juventus Football Club', '1897-11-01 00:00:00'),
(5, 'Andrea Mandorlini', 'Genoa Cricket and Football Club', '1893-09-07 00:00:00'),
(6, 'Marco Giampaolo', 'Unione Calcio Sampdoria', '1946-08-12 00:00:00'),
(7, 'Luciano Spalletti', 'Associazione Sportiva Roma', '1927-06-07 00:00:00'),
(8, 'Simone Inzaghi', 'Società Sportiva Lazio', '1900-01-09 00:00:00'),
(9, 'Eusebio Di Francesco', 'Unione Sportiva Sassuolo Calcio', '1922-08-02 00:00:00'),
(10, 'Luigi Delneri', 'Udinese Calcio', '1896-09-25 00:00:00'),
(11, 'Maurizio Sarri', 'Società Sportiva Calcio Napoli', '1926-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `votazione`
--

CREATE TABLE `votazione` (
  `id` int(11) NOT NULL,
  `calciatore_id` int(11) NOT NULL,
  `calendario_id` int(11) NOT NULL,
  `voto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `calciatore_vista`
--
DROP TABLE IF EXISTS `calciatore_vista`;

CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`localhost` SQL SECURITY DEFINER VIEW `calciatore_vista`  AS  select `calciatore`.`id` AS `id`,`calciatore`.`nome` AS `nome`,`calciatore`.`ruolo` AS `ruolo`,`squadra`.`allenatore` AS `allenatore`,`squadra`.`denominazione` AS `denominazione` from (`calciatore` join `squadra`) where (`calciatore`.`squadra_id` = `squadra`.`id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calciatore`
--
ALTER TABLE `calciatore`
  ADD PRIMARY KEY (`id`),
  ADD KEY `squadra_id` (`squadra_id`);

--
-- Indexes for table `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data` (`data`,`ospite_id`),
  ADD UNIQUE KEY `squadra_id` (`squadra_id`),
  ADD KEY `ospite_id` (`ospite_id`);

--
-- Indexes for table `squadra`
--
ALTER TABLE `squadra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votazione`
--
ALTER TABLE `votazione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calciatore_id` (`calciatore_id`),
  ADD KEY `calendario_id` (`calendario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calciatore`
--
ALTER TABLE `calciatore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `squadra`
--
ALTER TABLE `squadra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `votazione`
--
ALTER TABLE `votazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `calciatore`
--
ALTER TABLE `calciatore`
  ADD CONSTRAINT `calciatore_ibfk_1` FOREIGN KEY (`squadra_id`) REFERENCES `squadra` (`id`);

--
-- Constraints for table `calendario`
--
ALTER TABLE `calendario`
  ADD CONSTRAINT `calendario_ibfk_1` FOREIGN KEY (`squadra_id`) REFERENCES `squadra` (`id`),
  ADD CONSTRAINT `calendario_ibfk_2` FOREIGN KEY (`ospite_id`) REFERENCES `squadra` (`id`);

--
-- Constraints for table `votazione`
--
ALTER TABLE `votazione`
  ADD CONSTRAINT `votazione_ibfk_1` FOREIGN KEY (`calciatore_id`) REFERENCES `calciatore` (`id`),
  ADD CONSTRAINT `votazione_ibfk_2` FOREIGN KEY (`calendario_id`) REFERENCES `calendario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
