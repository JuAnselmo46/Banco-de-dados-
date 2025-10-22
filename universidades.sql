-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/10/2025 às 20:57
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `universidades`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `universidades`
--

CREATE TABLE `universidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `privada` tinyint(1) DEFAULT NULL,
  `ano_fundacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `universidades`
--

INSERT INTO `universidades` (`id`, `nome`, `privada`, `ano_fundacao`) VALUES
(1, 'USP', 0, 1934),
(2, 'PUC-Rio', 1, 1940),
(3, 'UNICAMP', 0, 1966);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `universidades`
--
ALTER TABLE `universidades`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
