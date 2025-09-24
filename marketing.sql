-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 19:28
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
-- Banco de dados: `marketing`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campanha`
--

CREATE TABLE `campanha` (
  `id_campanha` int(11) NOT NULL,
  `nome_campanha` varchar(100) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `orcamento` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campanha`
--

INSERT INTO `campanha` (`id_campanha`, `nome_campanha`, `data_inicio`, `data_fim`, `orcamento`) VALUES
(1, 'cachorros', '2025-03-03', '2025-03-03', 20000),
(3, 'sorvetes', '2025-10-10', '2025-07-07', 50000),
(6, 'roupas', '2025-05-05', '2025-09-09', 60000),
(10, 'esmaltes', '2025-06-06', '2025-03-03', 10000),
(15, 'brigadeiros', '2025-04-04', '2025-02-02', 7000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `segmento` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `segmento`) VALUES
(1, 'Giovanna', 'jgiovannaabreu@gmail.com', 'pets'),
(2, 'Patricia', 'patriciasilva@gmail.com', 'comida'),
(3, 'Iacson', 'iacsoncampos@gmail.com', 'vestuario'),
(4, 'Felipe', 'felipecampos@gmail.com', 'cosmetico'),
(5, 'Chay', 'chaysuede@gmail.com', 'comida'),
(1, 'Giovanna', 'jgiovannaabreu@gmail.com', 'pets'),
(2, 'Patricia', 'patriciasilva@gmail.com', 'comida'),
(3, 'Iacson', 'iacsoncampos@gmail.com', 'vestuario'),
(4, 'Felipe', 'felipecampos@gmail.com', 'cosmetico'),
(5, 'Chay', 'chaysuede@gmail.com', 'comida');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id_midia` int(11) NOT NULL,
  `id_camapanha` int(11) DEFAULT NULL,
  `tipo_midia` int(11) DEFAULT NULL,
  `custo_unitario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`id_midia`, `id_camapanha`, `tipo_midia`, `custo_unitario`) VALUES
(1, NULL, 0, 50),
(2, NULL, 0, 10),
(3, NULL, 0, 100),
(4, NULL, 0, 7),
(5, NULL, 0, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
