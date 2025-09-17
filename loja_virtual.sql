-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/09/2025 às 16:29
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
-- Banco de dados: `loja_virtual`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_Cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(8) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id_Cliente`, `nome`, `email`, `senha`, `cpf`, `endereco`, `cidade`, `Estado`, `cep`, `data_cadastro`) VALUES
(1, 'Ana Beatriz Ferreira', 'ana.ferreira@gmail.com', '123456', '34852936700', 'Av.Brasil, 457', 'Belo Horizonte', 'MG', '3014007112', '2025-09-17 00:00:00'),
(2, 'Carlos Henrique Souza', 'carlos.souza@yahoo.com', 'abc123', '92138475601', 'Rua das Flores, 89', 'Rio de Janeiro', 'RJ', '22041001', '2025-09-17 00:00:00'),
(3, 'Juliana Mendes Lima', 'juliana.mendes@hotmail.com', 'senha1', '45781236904', 'Rua Amapá, 123', 'Curitiba', 'PR', '80010000', '2025-09-17 00:00:00'),
(4, 'Marcos Paulo Ribeiro', 'marcos.ribeiro@gmail.com', 'pass123', '74829105632', 'Av. Central, 1000', 'São Paulo', 'SP', '01002000', '2025-09-17 00:00:00'),
(5, 'Fernanda Costa Almeida', 'fernanda.costa@gmail.com', 'qwerty', '10928374655', 'Rua Vitória, 45', 'Salvador', 'BA', '40100123', '2025-09-17 00:00:00'),
(6, 'Rafael Oliveira Nunes', 'rafael.nunes@outlook.com', '654321', '65783920104', 'Av. Independência, 200', 'Porto Alegre', 'RS', '90010000', '2025-09-17 00:00:00'),
(7, 'Patrícia Lima Borges', 'patricia.borges@gmail.com', '123123', '38572910488', 'Rua das Palmeiras, 77', 'Fortaleza', 'CE', '60000000', '2025-09-17 00:00:00'),
(8, 'Diego Martins Rocha', 'diego.rocha@gmail.com', 'teste12', '73829456109', 'Rua João XXIII, 300', 'Recife', 'PE', '50000000', '2025-09-17 00:00:00'),
(9, 'Larissa Ferreira Campos', 'larissa.campos@yahoo.com', 'minha123', '59038472015', 'Av. das Américas, 808', 'Brasília', 'DF', '70000000', '2025-09-17 00:00:00'),
(10, 'Eduardo Silva Prado', 'eduardo.prado@gmail.com', 'senha123', '45829376098', 'Rua Nova, 56', 'Manaus', 'AM', '69000000', '2025-09-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `id_itemPedido` int(11) NOT NULL,
  `id_Produto` int(11) DEFAULT NULL,
  `id_Pedidos` int(11) DEFAULT NULL,
  `quantidade` int(100) DEFAULT NULL,
  `preco_unitario` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itempedido`
--

INSERT INTO `itempedido` (`id_itemPedido`, `id_Produto`, `id_Pedidos`, `quantidade`, `preco_unitario`) VALUES
(1, 1, 1, 2, 49.9),
(2, 2, 1, 1, 49.9),
(3, 3, 2, 3, 54.9),
(4, 4, 3, 1, 129.9),
(5, 5, 4, 1, 159.9),
(6, 6, 5, 2, 199.9),
(7, 7, 6, 5, 39.9),
(8, 8, 7, 1, 249.9),
(9, 9, 8, 4, 19.9),
(10, 10, 9, 1, 89.9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_Pedidos` int(11) NOT NULL,
  `id_Cliente` int(11) DEFAULT NULL,
  `data_pedido` datetime DEFAULT NULL,
  `stats` varchar(20) DEFAULT NULL,
  `valor_total` float DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id_Pedidos`, `id_Cliente`, `data_pedido`, `stats`, `valor_total`, `endereco`) VALUES
(1, 1, '2025-09-01 14:20:00', 'Entregue', 150.5, 'Rua A, 123, São Paulo, SP'),
(2, 2, '2025-09-02 10:10:00', 'Processando', 89.9, 'Av. B, 456, Rio de Janeiro, RJ'),
(3, 3, '2025-09-03 16:45:00', 'Cancelado', 49.9, 'Rua C, 789, Curitiba, PR'),
(4, 4, '2025-09-04 09:30:00', 'Entregue', 299.9, 'Av. D, 101, Belo Horizonte, MG'),
(5, 5, '2025-09-05 11:15:00', 'Em Transporte', 120, 'Rua E, 202, Salvador, BA'),
(6, 6, '2025-09-06 13:40:00', 'Entregue', 59.99, 'Av. F, 303, Porto Alegre, RS'),
(7, 7, '2025-09-07 15:00:00', 'Processando', 199, 'Rua G, 404, Fortaleza, CE'),
(8, 8, '2025-09-08 10:50:00', 'Em Transporte', 75.75, 'Av. H, 505, Recife, PE'),
(9, 9, '2025-09-09 12:20:00', 'Entregue', 320.3, 'Rua I, 606, Brasília, DF'),
(10, 10, '2025-09-10 14:10:00', 'Processando', 89.9, 'Av. J, 707, Manaus, AM');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_Produto` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `SKU` varchar(11) DEFAULT NULL,
  `estoque` int(20) DEFAULT NULL,
  `data_criacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_Produto`, `nome`, `descricao`, `preco`, `SKU`, `estoque`, `data_criacao`) VALUES
(1, 'Camiseta Azul P', 'Camiseta de algodão na cor azul, tamanho P', 49.9, 'CAM-AZ-P-01', 120, '2025-09-17 10:00:00'),
(2, 'Camiseta Azul M', 'Camiseta de algodão na cor azul, tamanho M', 49.9, 'CAM-AZ-M-01', 95, '2025-09-17 10:05:00'),
(3, 'Camiseta Preta G', 'Camiseta básica preta, tamanho G', 54.9, 'CAM-PR-G-02', 80, '2025-09-17 10:10:00'),
(4, 'Calça Jeans Masculina', 'Calça jeans azul escuro, corte reto', 129.9, 'CAL-JE-M-01', 60, '2025-09-17 10:15:00'),
(5, 'Vestido Floral', 'Vestido estampado floral, tecido leve', 159.9, 'VES-FL-U-01', 40, '2025-09-17 10:20:00'),
(6, 'Tênis Esportivo Branco', 'Tênis branco para corrida', 199.9, 'TEN-BR-U-01', 50, '2025-09-17 10:25:00'),
(7, 'Boné Preto', 'Boné ajustável preto com logo bordado', 39.9, 'BON-PR-U-01', 150, '2025-09-17 10:30:00'),
(8, 'Jaqueta Corta-Vento', 'Jaqueta leve à prova d\'água', 249.9, 'JAQ-CV-U-01', 30, '2025-09-17 10:35:00'),
(9, 'Meia Cano Alto', 'Par de meias brancas cano alto', 19.9, 'MEI-BR-U-01', 200, '2025-09-17 10:40:00'),
(10, 'Mochila Escolar', 'Mochila com compartimento para notebook', 89.9, 'MOC-ES-U-01', 75, '2025-09-17 10:45:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Índices de tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`id_itemPedido`),
  ADD KEY `id_Produto` (`id_Produto`),
  ADD KEY `id_Pedidos` (`id_Pedidos`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_Pedidos`),
  ADD KEY `id_Cliente` (`id_Cliente`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `itempedido`
--
ALTER TABLE `itempedido`
  MODIFY `id_itemPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_Pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`id_Produto`) REFERENCES `produtos` (`id_Produto`),
  ADD CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`id_Pedidos`) REFERENCES `pedidos` (`id_Pedidos`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_Cliente`) REFERENCES `clientes` (`id_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
