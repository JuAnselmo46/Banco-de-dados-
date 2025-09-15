-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/09/2025 às 19:05
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
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `consulta`
--

CREATE TABLE `consulta` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `consulta`
--

INSERT INTO `consulta` (`id`, `id_paciente`, `id_medico`, `data_hora`, `observacoes`) VALUES
(1, 1, 3, '2025-09-19 14:30:00', 'Manchas na pele'),
(2, 2, 1, '2025-10-12 16:00:00', 'Dores No Peito'),
(3, 5, 5, '2025-10-05 17:30:00', 'Pré-natal'),
(4, 4, 2, '2025-09-30 17:00:00', 'Consulta De Rotina'),
(5, 9, 9, '2025-12-05 13:30:00', 'Exame de vista');

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`id`, `nome`, `especialidade`, `telefone`, `crm`) VALUES
(1, 'Dr. Carlos Souza', 'Cardiologista', '5555-6666', 'CRM12345'),
(2, 'Dra. Ana Lima', 'Pediatra', '7878-0000', 'CRM67890'),
(3, 'Dr. Marcos Alves', 'Dermatologista', '8889-8987', 'CRM11223'),
(4, 'Dra. Luisa Costa', 'Ginecologista', '9998-9090', 'CRM44556'),
(5, 'Dra. Giovanna Abreu', 'Obstetra', '4321-0102', 'CRM26058'),
(6, 'Dr. Lucas Correa', 'Neurocirurgião', '1599-8765', 'CRM10088'),
(7, 'Dra. Mariana Martins', 'Ortopedista', '1111-2222', 'CRM05019'),
(8, 'Dra. Isabela Leandro', 'Dermatologista', '6582-1029', 'CRM14088'),
(9, 'Dr. Felipe Augusto', 'Oftalmologista', '2222-1212', 'CRM09078'),
(10, 'Dra. Taisa Maria', 'Cardiologista', '9090-7979', 'CRM27118');

-- --------------------------------------------------------

--
-- Estrutura para tabela `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `paciente`
--

INSERT INTO `paciente` (`id`, `nome`, `data_nascimento`, `telefone`, `endereco`, `email`) VALUES
(1, 'João Silva', '1990-05-12', '9998-9090', 'Rua das Monções, 34', 'joao@gmail.com'),
(2, 'Maria Oliveira', '1985-09-23', '3333-4444', 'Rua B,456', 'maria@gmail.com'),
(3, 'Maria Oliveira', '1985-09-23', '3333-4444', 'Rua B,456', 'maria@gmail.com'),
(4, 'Pedro Santos', '2000-07-15', '4444-5555', 'Rua C,789', 'pedro@gmail.com'),
(5, 'Ana Souza', '1995-02-20', '5555-6666', 'Rua D,101', 'ana@gmail.com'),
(6, 'Carla Lima', '1988-11-30', '6666-7777', 'Rua E,202', 'carla@gmail.com'),
(7, 'Eduarda Silva', '1999-12-13', '7777-8888', 'Rua F,112', 'eduarda@gmail.com'),
(8, 'Mateus Fernades', '2002-11-01', '8888-9999', 'Rua G,364', 'mateus@gmail.com'),
(9, 'Julia Azevedo', '2000-04-03', '9999-4444', 'Rua H,998', 'julia@gmail.com'),
(10, 'Antonio Pereira', '1988-02-11', '1010-9999', 'Rua I,333', 'antonio@gmail.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consulta_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
