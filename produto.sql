-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jun-2026 às 22:49
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `produto` varchar(200) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacad` date NOT NULL,
  `ativo` bit(1) NOT NULL,
  `idcat` int(11) DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `produto`, `preco`, `qtde`, `datacad`, `ativo`, `idcat`, `observacao`, `Marca`) VALUES
(1, 'Acém Peça', '39.99', 50, '2026-05-13', b'1', 3, 'Sem gordura', 'Friboi'),
(2, 'Milho', '2.37', 10, '2026-10-01', b'0', 1, '', 'Quero'),
(3, 'Mussarela', '30.50', 55, '2025-05-01', b'1', 2, '', 'Seara'),
(4, 'Detergente Ipê', '2.50', 100, '2026-05-06', b'1', 4, '', 'YPE'),
(5, 'Sabão em pó', '9.90', 100, '2026-05-27', b'1', 4, 'Lavagem rápida', 'Omo'),
(6, 'Amaciante', '10.99', 100, '2026-05-27', b'1', 4, '', 'omo'),
(7, 'Cloro', '11.99', 100, '2026-05-27', b'1', 4, '', 'omo'),
(8, 'Desenfetante', '13.99', 100, '2026-05-27', b'1', 4, '', 'veja'),
(9, 'Lapiseira', '19.99', 100, '2026-05-27', b'1', 6, '', 'pentel'),
(10, 'Caneta', '1.99', 100, '2026-05-27', b'1', 6, '', 'Bic'),
(11, 'Tesoura', '3.99', 100, '2026-05-27', b'1', 6, '', 'ABC'),
(12, 'Estilete', '9.99', 100, '2026-05-27', b'1', 6, '', 'ABC'),
(13, 'Caneta gel', '12.99', 100, '2026-05-27', b'1', 6, '', 'Xin'),
(14, 'Borracha', '1.99', 100, '2026-05-27', b'1', 6, '', 'Kaz'),
(15, 'Estojo', '89.99', 100, '2026-05-27', b'1', 6, '', 'Win'),
(16, 'Mochila', '199.90', 100, '2026-05-27', b'1', 6, '', 'Ion'),
(17, 'PC ', '4.00', 100, '2026-05-27', b'1', 5, '', 'LG'),
(18, 'Coxinha', '9.99', 100, '2026-06-03', b'0', 1, '3', 'friboi'),
(19, 'Bandeja de coxinha', '20.99', 100, '2026-06-07', b'0', 1, '3', 'friboi'),
(20, 'Bife ancho', '90.00', 100, '2026-06-11', b'0', 1, '3', 'friboi'),
(21, 'Tênis skatista', '200.00', 100, '2026-06-06', b'0', 1, '9', 'Vans'),
(22, 'Camiseta', '80.00', 150, '2026-06-03', b'0', 1, '9', 'Nike'),
(23, 'Bermuda', '70.00', 200, '2026-06-03', b'0', 1, '9', 'Lacoste'),
(24, 'Meia', '20.00', 300, '2026-06-03', b'0', 1, '9', 'Olimpikus'),
(25, 'Steam Deck', '5000.00', 50, '2026-06-26', b'0', 5, '1', 'Steam'),
(26, 'Celular', '3500.00', 30, '2026-06-26', b'0', 5, '1', 'Xiaomi'),
(27, 'Cadeira Gamer', '3000.00', 50, '2026-06-26', b'0', 5, '1', 'Secretlab');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcat` (`idcat`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`idcat`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
