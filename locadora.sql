-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/12/2025 às 18:16
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
-- Banco de dados: `locadora`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `carros`
--

CREATE TABLE `carros` (
  `ID` int(11) NOT NULL,
  `Modelo` varchar(100) NOT NULL,
  `Placa` varchar(8) NOT NULL,
  `Ano` int(11) NOT NULL,
  `Cor` varchar(50) NOT NULL,
  `Disponivel` enum('Sim','Não') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carros`
--

INSERT INTO `carros` (`ID`, `Modelo`, `Placa`, `Ano`, `Cor`, `Disponivel`) VALUES
(1, 'Chevrolet Onix', 'ABC-1234', 2022, 'Preto', 'Sim'),
(2, 'Fiat Argo', 'DEF-5678', 2021, 'Branco', 'Não'),
(3, 'Honda Civic', 'GHI-9101', 2020, 'Prata', 'Sim'),
(4, 'Toyota Corolla', 'JKL-1122', 2023, 'Azul', 'Sim'),
(5, 'Volkswagen Gol', 'MNO-3344', 2022, 'Vermelho', 'Não'),
(6, 'Ford Ka', 'PQR-5566', 2021, 'Preto', 'Sim'),
(7, 'Nissan Sentra', 'STU-7788', 2020, 'Branco', 'Sim'),
(8, 'Hyundai HB20', 'VWX-9900', 2023, 'Azul', 'Não'),
(9, 'Renault Kwid', 'XYZ-1234', 2023, 'Prata', 'Sim'),
(10, 'Jeep Compass', 'ABC-5678', 2022, 'Verde', 'Não'),
(11, 'Peugeot 208', 'DEF-9101', 2021, 'Amarelo', 'Sim'),
(12, 'Chevrolet Spin', 'GHI-1122', 2020, 'Cinza', 'Sim'),
(13, 'Honda Fit', 'JKL-3344', 2023, 'Branco', 'Não'),
(14, 'Toyota Etios', 'MNO-5566', 2022, 'Vermelho', 'Sim'),
(15, 'Volkswagen Polo', 'PQR-7788', 2021, 'Preto', 'Não'),
(16, 'Citroën C3', 'STU-9900', 2020, 'Azul', 'Sim'),
(17, 'Ford Fiesta', 'VWX-1234', 2023, 'Cinza', 'Sim'),
(18, 'Nissan Kicks', 'XYZ-5678', 2022, 'Verde', 'Não'),
(19, 'Renault Duster', 'ABC-9101', 2021, 'Preto', 'Sim'),
(20, 'BMW X1', 'DEF-1122', 2020, 'Branco', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `CPF` varchar(100) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `CPF`, `telefone`, `email`) VALUES
(1, 'João Silva', '123.456.789-00', 2147483647, 'joao@email.com'),
(2, 'Maria Oliveira', '234.567.890-11', 2147483647, 'maria@email.com'),
(3, 'Pedro Costa', '345.678.901-22', 2147483647, 'pedro@email.com'),
(4, 'Ana Souza', '456.789.012-33', 2147483647, 'ana@email.com'),
(5, 'Carlos Pereira', '567.890.123-44', 2147483647, 'carlos@email.com'),
(6, 'Juliana Lima', '678.901.234-55', 2147483647, 'juliana@email.com'),
(7, 'Roberto Martins', '789.012.345-66', 2147483647, 'roberto@email.com'),
(8, 'Fernanda Almeida', '890.123.456-77', 2147483647, 'fernanda@email.com'),
(9, 'Thiago Santos', '901.234.567-88', 2147483647, 'thiago@email.com'),
(10, 'Larissa Costa', '123.456.789-99', 2147483647, 'larissa@email.com'),
(11, 'Marcos Rodrigues', '234.567.890-00', 2147483647, 'marcos@email.com'),
(12, 'Sílvia Oliveira', '345.678.901-11', 2147483647, 'silvia@email.com'),
(13, 'Daniel Costa', '456.789.012-22', 2147483647, 'daniel@email.com'),
(14, 'Gabriela Silva', '567.890.123-33', 2147483647, 'gabriela@email.com'),
(15, 'Fábio Lima', '678.901.234-44', 2147483647, 'fabio@email.com'),
(16, 'Camila Pereira', '789.012.345-55', 2147483647, 'camila@email.com'),
(17, 'Eduardo Santos', '890.123.456-66', 2147483647, 'eduardo@email.com'),
(18, 'Mariana Oliveira', '901.234.567-77', 2147483647, 'mariana@email.com'),
(19, 'Lucas Almeida', '123.456.789-11', 2147483647, 'lucas@email.com'),
(20, 'Tatiane Martins', '234.567.890-22', 2147483647, 'tatiane@email.com'),
(1, 'João Silva', '123.456.789-00', 2147483647, 'joao@email.com'),
(2, 'Maria Oliveira', '234.567.890-11', 2147483647, 'maria@email.com'),
(3, 'Pedro Costa', '345.678.901-22', 2147483647, 'pedro@email.com'),
(4, 'Ana Souza', '456.789.012-33', 2147483647, 'ana@email.com'),
(5, 'Carlos Pereira', '567.890.123-44', 2147483647, 'carlos@email.com'),
(6, 'Juliana Lima', '678.901.234-55', 2147483647, 'juliana@email.com'),
(7, 'Roberto Martins', '789.012.345-66', 2147483647, 'roberto@email.com'),
(8, 'Fernanda Almeida', '890.123.456-77', 2147483647, 'fernanda@email.com'),
(9, 'Thiago Santos', '901.234.567-88', 2147483647, 'thiago@email.com'),
(10, 'Larissa Costa', '123.456.789-99', 2147483647, 'larissa@email.com'),
(11, 'Marcos Rodrigues', '234.567.890-00', 2147483647, 'marcos@email.com'),
(12, 'Sílvia Oliveira', '345.678.901-11', 2147483647, 'silvia@email.com'),
(13, 'Daniel Costa', '456.789.012-22', 2147483647, 'daniel@email.com'),
(14, 'Gabriela Silva', '567.890.123-33', 2147483647, 'gabriela@email.com'),
(15, 'Fábio Lima', '678.901.234-44', 2147483647, 'fabio@email.com'),
(16, 'Camila Pereira', '789.012.345-55', 2147483647, 'camila@email.com'),
(17, 'Eduardo Santos', '890.123.456-66', 2147483647, 'eduardo@email.com'),
(18, 'Mariana Oliveira', '901.234.567-77', 2147483647, 'mariana@email.com'),
(19, 'Lucas Almeida', '123.456.789-11', 2147483647, 'lucas@email.com'),
(20, 'Tatiane Martins', '234.567.890-22', 2147483647, 'tatiane@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reservas`
--

CREATE TABLE `reservas` (
  `ID` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_Carro` int(11) NOT NULL,
  `Data_Reserva` date NOT NULL,
  `Data_Devolucao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reservas`
--

INSERT INTO `reservas` (`ID`, `ID_Cliente`, `ID_Carro`, `Data_Reserva`, `Data_Devolucao`) VALUES
(1, 1, 3, '2024-01-10', '2024-01-17'),
(2, 2, 5, '2024-02-05', '2024-02-12'),
(3, 3, 7, '2024-03-03', '2024-03-22'),
(4, 4, 2, '2024-04-01', '2024-04-08'),
(5, 5, 10, '2024-05-20', '2024-05-27'),
(6, 6, 6, '2024-06-05', '2024-06-12'),
(7, 7, 8, '2024-07-11', '2024-07-18'),
(8, 8, 1, '2024-08-01', '2024-08-08'),
(9, 9, 9, '2024-09-07', '2024-09-14'),
(10, 10, 15, '2024-10-12', '2024-10-19'),
(11, 11, 12, '2024-11-03', '2024-11-11'),
(12, 12, 14, '2024-11-21', '2024-11-28'),
(13, 13, 2, '2024-12-01', '2024-12-08'),
(14, 14, 6, '2024-10-20', '2024-10-27'),
(15, 15, 11, '2024-01-16', '2024-01-23'),
(16, 16, 2, '2024-04-10', '2024-04-17'),
(17, 17, 18, '2024-05-15', '2024-05-22'),
(18, 18, 3, '2024-06-01', '2024-06-08'),
(19, 19, 1, '2024-07-01', '2024-07-08'),
(20, 20, 15, '2024-08-15', '2024-08-22');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carros`
--
ALTER TABLE `carros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
