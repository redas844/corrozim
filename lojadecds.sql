-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30-Abr-2019 às 17:55
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lojadecds`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cds`
--

CREATE TABLE `cds` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `artista` varchar(100) NOT NULL,
  `estoque` int(100) NOT NULL,
  `ano` int(100) NOT NULL,
  `genero` text NOT NULL,
  `gravadora` text NOT NULL,
  `preco` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cds`
--

INSERT INTO `cds` (`id`, `nome`, `artista`, `estoque`, `ano`, `genero`, `gravadora`, `preco`) VALUES
(20, 'Meteora', 'Linkin Park', 20, 2003, 'Rock', 'Warner', 10),
(21, 'Nothing but the beat', 'David Guetta', 30, 2011, 'POP', 'What A Music LTD', 15),
(22, 'Sweetener', 'Ariana Grande', 40, 2018, 'POP', 'Republic', 19),
(23, 'Troco Likes', 'Tiago Iorc', 50, 2015, 'POP', 'Som Livre', 25),
(24, 'Terra Sem CEP', 'Jorge & Mateus', 70, 2018, 'Sertanejo', 'Som Livre', 0),
(25, 'Kisses', 'Anitta', 100, 2019, 'Reggaeton', 'Warner Music', 0),
(26, 'Gusttavo Lima', 'Gusttavo Lima', 100, 2018, 'Sertanejo', 'Warner Music', 0),
(27, 'Ludmilla', 'Ludmilla', 70, 2012, 'pop e funk', 'Som Livre', 0),
(28, 'MC Livinho', 'MC Livinho', 30, 2008, 'funk', ': Universal Music Latino, Universal Music International Ltda., MC Livinho, Radar Records', 0),
(29, 'Projota', 'Projota', 50, 2016, 'Hip-Hop/rap', 'WikipÃ©dia', 0),
(30, 'Wesley SafadÃ£o', 'Wesley SafadÃ£o', 40, 2018, ' â€ŽForrÃ³ eletrÃ´nico', 'Som Livre', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `niveis_acesso` int(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `email`, `senha`, `niveis_acesso`, `nome`, `cpf`) VALUES
(6, 'paola@gmail.com', '123', 1, 'Paola', '21474836-47'),
(8, 'thiago@gmail.com', '456', 2, 'Thiago', '12412015-42'),
(32, 'uriel@gmail.com', '789', 1, 'Uriel', '62712815-21'),
(33, 'bia@gmail.com', '101112', 1, 'Bia', '23456789-34'),
(34, 'matheus@gmail.com', '678', 1, 'Matheus', '13456789-34'),
(35, 'fernando@gmail.com', '123', 1, 'fernando', '12313221');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
