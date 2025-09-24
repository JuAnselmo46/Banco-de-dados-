-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 17:08
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
-- Banco de dados: `recursos_humanos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `id_treinamento` int(11) DEFAULT NULL,
  `nome_departamento` varchar(100) DEFAULT NULL,
  `localizacao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `id_funcionario`, `id_treinamento`, `nome_departamento`, `localizacao`) VALUES
(1, 1, 1, 'financeiro', 'ala sul, sala 2'),
(2, 2, 3, 'executivo', 'ala norte, sala 8'),
(3, 3, 2, 'RH', 'ala leste, sala 2'),
(4, 5, 5, 'compras', 'ala oeste, sala 3'),
(5, 4, 4, 'vendas', 'ala norte, sala 4');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id_funcionario`, `nome`, `cpf`, `data_admissao`, `cargo`) VALUES
(1, 'Gabriela', '22346558710', '2020-12-27', 'contadora'),
(2, 'Marcos', '11125398654', '2015-10-05', 'gerente'),
(3, 'Manuela', '45457110917', '2018-09-12', 'diretora'),
(4, 'Rafael', '11112222345', '2025-06-06', 'estagiario'),
(5, 'Denise', '12345678901', '2019-04-10', 'secretaria');

-- --------------------------------------------------------

--
-- Estrutura para tabela `treinamento`
--

CREATE TABLE `treinamento` (
  `id_treinamento` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `data_treinamento` date DEFAULT NULL,
  `carga_horaria` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `treinamento`
--

INSERT INTO `treinamento` (`id_treinamento`, `titulo`, `data_treinamento`, `carga_horaria`) VALUES
(1, 'Word', '2025-10-10', '02:00:00'),
(2, 'EPI', '2025-12-28', '01:30:00'),
(3, 'Excel', '2025-11-02', '02:30:00'),
(4, 'Bombeiro', '2025-06-15', '03:00:00'),
(5, 'PowerPoint', '2025-09-30', '01:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`),
  ADD KEY `id_treinamento` (`id_treinamento`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `treinamento`
--
ALTER TABLE `treinamento`
  ADD PRIMARY KEY (`id_treinamento`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `treinamento`
--
ALTER TABLE `treinamento`
  MODIFY `id_treinamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_treinamento`) REFERENCES `treinamento` (`id_treinamento`),
  ADD CONSTRAINT `departamento_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
