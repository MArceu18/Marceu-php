-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Out-2024 às 23:28
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dblocadora`
--
CREATE DATABASE IF NOT EXISTS `dblocadora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dblocadora`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alugarfilmes`
--

CREATE TABLE `alugarfilmes` (
  `id_entrada` int(11) NOT NULL,
  `DataVencimento` date DEFAULT NULL,
  `Preco` double DEFAULT NULL,
  `DataRetirada` date DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_filme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alugarfilmes`
--

INSERT INTO `alugarfilmes` (`id_entrada`, `DataVencimento`, `Preco`, `DataRetirada`, `id_cliente`, `id_filme`) VALUES
(1, '2024-09-12', 16, '2024-11-12', 1, 2),
(2, '2024-02-27', 15, '2024-04-27', 4, 1),
(3, '2024-01-22', 17, '2024-03-22', 5, 3),
(4, '2024-12-09', 19, '2025-02-09', 3, 5),
(5, '2024-11-15', 20, '2025-01-15', 2, 4),
(6, '2023-06-27', 19, '2023-04-27', 6, 9),
(7, '2024-10-08', 20, '2024-08-08', 7, 6),
(8, '2024-12-22', 17, '2024-10-22', 8, 10),
(9, '2024-02-09', 24, '2023-12-09', 9, 7),
(10, '2024-03-01', 16, '2024-01-01', 10, 8),
(11, '0000-00-00', 25, '2022-12-30', 11, 14),
(12, '2025-05-21', 18, '2025-03-21', 12, 13),
(13, '2024-09-02', 18, '2024-07-02', 13, 12),
(14, '2021-03-25', 29, '2020-12-25', 14, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `Endereço` varchar(255) DEFAULT NULL,
  `Telefone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `Nome`, `CPF`, `Endereço`, `Telefone`) VALUES
(1, 'Lucas Manoel Santos Ribeiro', '123.456.789-00', 'Rua das Flores, 123, Bairro Jardim das Árvores', '(11) 91234-5678'),
(2, 'Mariana França Souzones Barretos', '987.654.321-00', 'Avenida dos Sonhos, 456, Bairro Vila Imaginária', '(21) 99876-5432'),
(3, 'Daniella Fernanda Cabral Silva', '123.321.456-99', 'Rua do Amanhã, 789, Bairro Esperança', '(31) 93456-7890'),
(4, 'João Paulo Figaro Tomba', '555.666.777-88', 'Travessa do Sol, 12, Bairro Luz da Manhã', '(41) 98765-4321'),
(5, 'Lucas Luiz Antonio Cesar Leonardo Germano', '234.567.890-11', 'Rua das Estrelas, 101, Bairro Fantasia', '(51) 91234-6789'),
(6, 'Bruno Lima', '123.456.789-00', 'Rua das Flores, 123', '(61) 99876-5430'),
(7, 'Ana Silva', '753.159.246-00', 'Rua da Esperança, 505', '(71) 93456-7891'),
(8, 'Maria Oliveira', '321.654.987-00', 'Rua do Sol, 789', '(81) 98765-4322'),
(9, 'Carlos Mendes', '456.789.123-00', 'Avenida das Árvores, 101', '(91) 91234-5679'),
(10, 'Fernanda Costa', '654.321.987-00', 'Rua dos Ventos, 202', '(12) 99876-5433'),
(11, 'Lucas Martins', '789.123.456-00', 'Rua da Paz, 303', '(22) 93456-7892'),
(12, 'Juliana Rocha', '159.753.486-00', 'Avenida do Mar, 404', '(32) 98765-4323'),
(13, 'Camila Santos', '852.963.741-00', 'Rua do Luar, 606', '(42) 91234-6780'),
(14, 'Rafael Almeida', '951.357.468-00', 'Avenida dos Sonhos, 707', '(52) 99876-5434'),
(15, 'Pitagoras de Roma', '123.456.789.19', 'Rua dos alfeneiros,444 , Bairro Criz', '(62) 93456-7893');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id_filme` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Diretor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id_filme`, `Titulo`, `Ano`, `Genero`, `Diretor`) VALUES
(1, 'Deu a Louca na Chapeuzinho', 2005, 'Infantil/Comédia', 'Cory Edwards, Todd Edwards, Tony Leech'),
(2, 'Divertida Mente 2', 2024, 'Infantil/Comédia', 'Kelsey Mann'),
(3, 'O Auto da Compadecida', 2000, 'Comédia/Aventura', 'Guel Arraes'),
(4, 'Harry Potter e a Câmara Secreta', 2002, ' Infantil/Fantasia', 'Chris Columbus'),
(5, 'Deadpool & Wolverine', 2024, 'Ação/Comédia', 'Shawn Levy'),
(6, 'A Origem', 2010, 'Ficção científica/Ação', 'Christopher Nolan'),
(7, 'O Poderoso Chefão', 1972, 'Crime/Ficção policial', 'Francis Ford Coppola'),
(8, 'O Senhor dos Anéis: A Sociedade do Anel', 2001, 'Fantasia/Aventura', 'Peter Jackson'),
(9, 'Cidadão Kane', 1941, 'Mistério/Mistério', 'Orson Welles'),
(10, 'Mad Max: Estrada da Fúria', 2015, 'Ação/Ficção científica', 'George Miller'),
(11, 'O Rei Leão', 1994, 'Infantil/Musical', 'Rob Minkoff, Roger Allers'),
(12, 'O Silêncio dos Inocentes', 1991, 'Terror/Crime', 'Jonathan Demme'),
(13, 'Pequena Miss Sunshine', 2006, 'Comédia/Drama', 'Valerie Faris, Jonathan Dayton'),
(14, 'Parasita', 2019, 'Thriller/Comédia', 'Bong Joon-ho');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alugarfilmes`
--
ALTER TABLE `alugarfilmes`
  ADD PRIMARY KEY (`id_entrada`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_filme` (`id_filme`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id_filme`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alugarfilmes`
--
ALTER TABLE `alugarfilmes`
  MODIFY `id_entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id_filme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alugarfilmes`
--
ALTER TABLE `alugarfilmes`
  ADD CONSTRAINT `alugarfilmes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `alugarfilmes_ibfk_2` FOREIGN KEY (`id_filme`) REFERENCES `filmes` (`id_filme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
