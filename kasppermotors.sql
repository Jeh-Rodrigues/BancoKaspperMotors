-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/08/2023 às 00:26
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kasppermotors`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastrodecarro`
--

CREATE TABLE `cadastrodecarro` (
  `idcar` int(11) NOT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `renavam` int(11) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `anodefabricacao` date DEFAULT NULL,
  `anodemodelo` date DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `combustivel` varchar(20) DEFAULT NULL,
  `quilometragem` varchar(20) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `valordecompra` double DEFAULT NULL,
  `anexodoc` varchar(200) DEFAULT NULL,
  `datadeentrada` datetime DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastrodecliente`
--

CREATE TABLE `cadastrodecliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `logradouro` varchar(30) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `anexocnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `idvenda` int(11) NOT NULL,
  `idcar` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `valordavenda` double DEFAULT NULL,
  `datasaida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastrodecarro`
--
ALTER TABLE `cadastrodecarro`
  ADD PRIMARY KEY (`idcar`);

--
-- Índices de tabela `cadastrodecliente`
--
ALTER TABLE `cadastrodecliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idvenda`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastrodecarro`
--
ALTER TABLE `cadastrodecarro`
  MODIFY `idcar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastrodecliente`
--
ALTER TABLE `cadastrodecliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idvenda` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
