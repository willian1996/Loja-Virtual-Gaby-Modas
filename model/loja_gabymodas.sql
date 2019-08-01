-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Ago-2019 às 06:12
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loja_gabymodas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_bairros`
--

DROP TABLE IF EXISTS `gm_bairros`;
CREATE TABLE IF NOT EXISTS `gm_bairros` (
  `bairros_id` int(11) NOT NULL AUTO_INCREMENT,
  `bairros_nome` varchar(100) NOT NULL,
  `bairros_cidade` varchar(100) NOT NULL,
  `bairros_frete_valor` double DEFAULT NULL,
  PRIMARY KEY (`bairros_id`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_bairros`
--

INSERT INTO `gm_bairros` (`bairros_id`, `bairros_nome`, `bairros_cidade`, `bairros_frete_valor`) VALUES
(1, 'Balneário Copacabana', 'Caraguatatuba', NULL),
(2, 'Balneário dos Golfinhos', 'Caraguatatuba', NULL),
(113, 'Alfredo Petercem', ' Sao Sebastiao', NULL),
(4, 'BalneÃ¡rio Gardem Mar', ' Caraguatatuba', NULL),
(5, 'BalneÃ¡rio Garden Mar', ' Caraguatatuba', NULL),
(6, 'BalneÃ¡rio Golfinhos', ' Caraguatatuba', NULL),
(7, 'BalneÃ¡rio Recanto do Sol', ' Caraguatatuba', NULL),
(8, 'Barranco Alto', ' Caraguatatuba', NULL),
(9, 'Benfica', ' Caraguatatuba', NULL),
(10, 'CapricÃ³rnio III', ' Caraguatatuba', NULL),
(11, 'Caputera', ' Caraguatatuba', NULL),
(12, 'Casa Branca', ' Caraguatatuba', NULL),
(13, 'Centro', ' Caraguatatuba', NULL),
(14, 'ChÃ¡cara ColÃ´nias', ' Caraguatatuba', NULL),
(15, 'Cidade Jardim', ' Caraguatatuba', NULL),
(16, 'Copacabana', ' Caraguatatuba', NULL),
(17, 'Costa Tabatinga', ' Caraguatatuba', NULL),
(18, 'Costa Verde Mococa', ' Caraguatatuba', NULL),
(19, 'Costa Verde Tabatinga', ' Caraguatatuba', NULL),
(20, 'EstÃ¢ncia BalneÃ¡ria Hawai', ' Caraguatatuba', NULL),
(21, 'Fazenda Getuba', ' Caraguatatuba', NULL),
(22, 'Fazenda JaraguÃ¡', ' Caraguatatuba', NULL),
(23, 'Fazenda Jetuba', ' Caraguatatuba', NULL),
(24, 'Fazenda Recanto Ana', ' Caraguatatuba', NULL),
(25, 'Fazenda Rio Claro', ' Caraguatatuba', NULL),
(26, 'Getuba', ' Caraguatatuba', NULL),
(27, 'IndaiÃ¡', ' Caraguatatuba', NULL),
(28, 'Ipiranga', ' Caraguatatuba', NULL),
(29, 'JaraguÃ¡', ' Caraguatatuba', NULL),
(30, 'JaraguÃ¡ PerequÃª', ' Caraguatatuba', NULL),
(31, 'Jaraguazinho', ' Caraguatatuba', NULL),
(32, 'Jardim Aruan', ' Caraguatatuba', NULL),
(33, 'Jardim Bandeirantes', ' Caraguatatuba', NULL),
(34, 'Jardim Benfica', ' Caraguatatuba', NULL),
(35, 'Jardim Brasil', ' Caraguatatuba', NULL),
(36, 'Jardim BritÃ¢nia', ' Caraguatatuba', NULL),
(37, 'Jardim C Sindicatos', ' Caraguatatuba', NULL),
(38, 'Jardim CalifÃ³rnia', ' Caraguatatuba', NULL),
(39, 'Jardim CapricÃ³rnio', ' Caraguatatuba', NULL),
(40, 'Jardim CapricÃ³rnio II', ' Caraguatatuba', NULL),
(41, 'Jardim Casa Branca', ' Caraguatatuba', NULL),
(42, 'Jardim ColÃ´nia Sindicatos', ' Caraguatatuba', NULL),
(43, 'Jardim das Gaivotas', ' Caraguatatuba', NULL),
(44, 'Jardim do Sol', ' Caraguatatuba', NULL),
(45, 'Jardim dos Sindicatos', ' Caraguatatuba', NULL),
(46, 'Jardim Flexeiras', ' Caraguatatuba', NULL),
(47, 'Jardim Forest', ' Caraguatatuba', NULL),
(48, 'Jardim Gaivotas', ' Caraguatatuba', NULL),
(49, 'Jardim Gaivotas III', ' Caraguatatuba', NULL),
(50, 'Jardim Golfinhos', ' Caraguatatuba', NULL),
(51, 'Jardim IndaiÃ¡', ' Caraguatatuba', NULL),
(52, 'Jardim ItaÃºna', ' Caraguatatuba', NULL),
(53, 'Jardim Jaqueira', ' Caraguatatuba', NULL),
(54, 'Jardim JaraguÃ¡', ' Caraguatatuba', NULL),
(55, 'Jardim Miramar', ' Caraguatatuba', NULL),
(56, 'Jardim Olaria', ' Caraguatatuba', NULL),
(57, 'Jardim Palmeiras', ' Caraguatatuba', NULL),
(58, 'Jardim Parnaso', ' Caraguatatuba', NULL),
(59, 'Jardim Parnazo', ' Caraguatatuba', NULL),
(60, 'Jardim Ponte Seca', ' Caraguatatuba', NULL),
(61, 'Jardim Porto Novo', ' Caraguatatuba', NULL),
(62, 'Jardim Primavera', ' Caraguatatuba', NULL),
(63, 'Jardim Recanto', ' Caraguatatuba', NULL),
(64, 'Jardim Rio Santos', ' Caraguatatuba', NULL),
(65, 'Jardim Rua Santos', ' Caraguatatuba', NULL),
(66, 'Jardim SÃ£o Francisco', ' Caraguatatuba', NULL),
(67, 'Jardim Saveiro', ' Caraguatatuba', NULL),
(68, 'Jardim Sindicato', ' Caraguatatuba', NULL),
(69, 'Jardim Sindicatos', ' Caraguatatuba', NULL),
(70, 'Jardim Sol', ' Caraguatatuba', NULL),
(71, 'Jardim Tarumas', ' Caraguatatuba', NULL),
(72, 'Loteamento Luiz Marques', ' Caraguatatuba', NULL),
(73, 'Loteamento Recreio Juqueriquere', ' Caraguatatuba', NULL),
(74, 'Mar Verde II', ' Caraguatatuba', NULL),
(75, 'Martim de SÃ¡', ' Caraguatatuba', NULL),
(76, 'Martim SÃ¡', ' Caraguatatuba', NULL),
(77, 'MassaguaÃ§u', ' Caraguatatuba', NULL),
(78, 'Morro AlgodÃ£o', ' Caraguatatuba', NULL),
(79, 'Morro do AlgodÃ£o', ' Caraguatatuba', NULL),
(80, 'Morro Querozene', ' Caraguatatuba', NULL),
(81, 'Olaria', ' Caraguatatuba', NULL),
(82, 'Parque Imperial', ' Caraguatatuba', NULL),
(83, 'Pegorelli', ' Caraguatatuba', NULL),
(84, 'PerequÃª Mirim', ' Caraguatatuba', NULL),
(85, 'Poiares', ' Caraguatatuba', NULL),
(86, 'Pontal de Santa Marina', ' Caraguatatuba', NULL),
(87, 'Pontal Santa Marina', ' Caraguatatuba', NULL),
(88, 'Pontal Santamar', ' Caraguatatuba', NULL),
(89, 'Ponte Seca', ' Caraguatatuba', NULL),
(90, 'Portal Fazendinha', ' Caraguatatuba', NULL),
(91, 'Portal Patrimonium', ' Caraguatatuba', NULL),
(92, 'Portal Tabatinga', ' Caraguatatuba', NULL),
(93, 'Porto Novo', ' Caraguatatuba', NULL),
(94, 'Praia da Mococa', ' Caraguatatuba', NULL),
(95, 'Praia das Palmeiras', ' Caraguatatuba', NULL),
(96, 'Praia Palmeiras', ' Caraguatatuba', NULL),
(97, 'Prainha', ' Caraguatatuba', NULL),
(98, 'Recanto Som Mar', ' Caraguatatuba', NULL),
(99, 'Recanto Verde Mar', ' Caraguatatuba', NULL),
(100, 'Residencial Marina', ' Caraguatatuba', NULL),
(101, 'Rio Claro', ' Caraguatatuba', NULL),
(102, 'Rio do Ouro', ' Caraguatatuba', NULL),
(103, 'Rio Ouro', ' Caraguatatuba', NULL),
(104, 'Santo AntÃ´nio', ' Caraguatatuba', NULL),
(105, 'SumarÃ©', ' Caraguatatuba', NULL),
(106, 'Tabatinga', ' Caraguatatuba', NULL),
(107, 'Tinga', ' Caraguatatuba', NULL),
(108, 'TravessÃ£o', ' Caraguatatuba', NULL),
(109, 'Viaduto Golfinhos', ' Caraguatatuba', NULL),
(110, 'Vila Marcondes', ' Caraguatatuba', NULL),
(111, 'Vila Ponte Seca', ' Caraguatatuba', NULL),
(112, 'Villagio Verde Mare', ' Caraguatatuba', NULL),
(114, 'Areião de Camburí', ' Sao Sebastiao', NULL),
(115, 'Arrastão', ' Sao Sebastiao', NULL),
(116, 'Bairro Sertãozinho', ' Sao Sebastiao', NULL),
(117, 'Bairro Varadouro', ' Sao Sebastiao', NULL),
(118, 'Baleia', ' Sao Sebastiao', NULL),
(119, 'Balneário Canto do Mar', ' Sao Sebastiao', NULL),
(120, 'Balneário Canto Mar', ' Sao Sebastiao', NULL),
(121, 'Balneário Turist Enseada', ' Sao Sebastiao', NULL),
(122, 'Baraquecaba', ' Sao Sebastiao', NULL),
(123, 'Barequeçaba', ' Sao Sebastiao', NULL),
(124, 'Barra do Sahy', ' Sao Sebastiao', NULL),
(125, 'Barra do Sai', ' Sao Sebastiao', NULL),
(126, 'Barra do Say', ' Sao Sebastiao', NULL),
(127, 'Barra do Una', ' Sao Sebastiao', NULL),
(128, 'Barra Sahy', ' Sao Sebastiao', NULL),
(129, 'Barra Una', ' Sao Sebastiao', NULL),
(130, 'Boiçucanga', ' Sao Sebastiao', NULL),
(131, 'Boissucanga', ' Sao Sebastiao', NULL),
(132, 'Boissulanga', ' Sao Sebastiao', NULL),
(133, 'Boraceia', ' Sao Sebastiao', NULL),
(134, 'Boraceia 2', ' Sao Sebastiao', NULL),
(135, 'Boraceia II', ' Sao Sebastiao', NULL),
(136, 'Camburí', ' Sao Sebastiao', NULL),
(137, 'Camburizinho', ' Sao Sebastiao', NULL),
(138, 'Cambury', ' Sao Sebastiao', NULL),
(139, 'Canto do Mar', ' Sao Sebastiao', NULL),
(140, 'Centro', ' Sao Sebastiao', NULL),
(141, 'Cigarras', ' Sao Sebastiao', NULL),
(142, 'Condomínio Baleia', ' Sao Sebastiao', NULL),
(143, 'do Sai', ' Sao Sebastiao', NULL),
(144, 'Enseada', ' Sao Sebastiao', NULL),
(145, 'Enseada Divisa', ' Sao Sebastiao', NULL),
(146, 'Guaeca', ' Sao Sebastiao', NULL),
(147, 'Itatinga', ' Sao Sebastiao', NULL),
(148, 'Jaraguá', ' Sao Sebastiao', NULL),
(149, 'Jardim Canto Mar', ' Sao Sebastiao', NULL),
(150, 'Jardim Forte', ' Sao Sebastiao', NULL),
(151, 'Jardim Jaraguá', ' Sao Sebastiao', NULL),
(152, 'Jardim S Francisco', ' Sao Sebastiao', NULL),
(153, 'Jardim São Francisco', ' Sao Sebastiao', NULL),
(154, 'Joquey Maresias', ' Sao Sebastiao', NULL),
(155, 'Juquehi', ' Sao Sebastiao', NULL),
(156, 'Juquehy', ' Sao Sebastiao', NULL),
(157, 'Juqueí', ' Sao Sebastiao', NULL),
(158, 'Juquery', ' Sao Sebastiao', NULL),
(159, 'Juquey', ' Sao Sebastiao', NULL),
(160, 'Jureia', ' Sao Sebastiao', NULL),
(161, 'La Residencial Du Moulin', ' Sao Sebastiao', NULL),
(162, 'Maresias', ' Sao Sebastiao', NULL),
(163, 'Morro do Abrigo', ' Sao Sebastiao', NULL),
(164, 'Olaria', ' Sao Sebastiao', NULL),
(165, 'Parque Coqueiros', ' Sao Sebastiao', NULL),
(166, 'Parque Itatinga', ' Sao Sebastiao', NULL),
(167, 'Paúba', ' Sao Sebastiao', NULL),
(168, 'Pitangueiras', ' Sao Sebastiao', NULL),
(169, 'Pontal Cruz', ' Sao Sebastiao', NULL),
(170, 'Pontal da Cruz', ' Sao Sebastiao', NULL),
(171, 'Pontão da Cruz', ' Sao Sebastiao', NULL),
(172, 'Pontinha', ' Sao Sebastiao', NULL),
(173, 'Por Grande', ' Sao Sebastiao', NULL),
(174, 'Portal da Olaria', ' Sao Sebastiao', NULL),
(175, 'Portal Enseada', ' Sao Sebastiao', NULL),
(176, 'Portal Olaria', ' Sao Sebastiao', NULL),
(177, 'Porto Grande', ' Sao Sebastiao', NULL),
(178, 'Praia Baleia', ' Sao Sebastiao', NULL),
(179, 'Praia Baraquecaba', ' Sao Sebastiao', NULL),
(180, 'Praia Boissucanga', ' Sao Sebastiao', NULL),
(181, 'Praia Boraceia', ' Sao Sebastiao', NULL),
(182, 'Praia Camburí', ' Sao Sebastiao', NULL),
(183, 'Praia Cigarras', ' Sao Sebastiao', NULL),
(184, 'Praia da Baleia', ' Sao Sebastiao', NULL),
(185, 'Praia da Figueira', ' Sao Sebastiao', NULL),
(186, 'Praia da Olaria', ' Sao Sebastiao', NULL),
(187, 'Praia de Boraceia', ' Sao Sebastiao', NULL),
(188, 'Praia de Juquehy', ' Sao Sebastiao', NULL),
(189, 'Praia de Juqueí', ' Sao Sebastiao', NULL),
(190, 'Praia do Arrastão', ' Sao Sebastiao', NULL),
(191, 'Praia do Guaeca', ' Sao Sebastiao', NULL),
(192, 'Praia do Partido', ' Sao Sebastiao', NULL),
(193, 'Praia do Say', ' Sao Sebastiao', NULL),
(194, 'Praia do Toque Toque', ' Sao Sebastiao', NULL),
(195, 'Praia Engenho', ' Sao Sebastiao', NULL),
(196, 'Praia Enseada', ' Sao Sebastiao', NULL),
(197, 'Praia Figueira', ' Sao Sebastiao', NULL),
(198, 'Praia Juqueí', ' Sao Sebastiao', NULL),
(199, 'Praia Maresias', ' Sao Sebastiao', NULL),
(200, 'Praia Porto Grande', ' Sao Sebastiao', NULL),
(201, 'Praia Preta', ' Sao Sebastiao', NULL),
(202, 'Praia Una', ' Sao Sebastiao', NULL),
(203, 'Reserva Du Moulin', ' Sao Sebastiao', NULL),
(204, 'S Francisco', ' Sao Sebastiao', NULL),
(205, 'S Francisco da Praia', ' Sao Sebastiao', NULL),
(206, 'Sahi', ' Sao Sebastiao', NULL),
(207, 'São Francisco', ' Sao Sebastiao', NULL),
(208, 'São Francisco Praia', ' Sao Sebastiao', NULL),
(209, 'São Sebastião', ' 2', NULL),
(210, 'Sertão Camburí', ' Sao Sebastiao', NULL),
(211, 'Sertão do Camburí', ' Sao Sebastiao', NULL),
(212, 'Sertãozinho', ' Sao Sebastiao', NULL),
(213, 'Sítio Esperança', ' Sao Sebastiao', NULL),
(214, 'Tapolandia', ' Sao Sebastiao', NULL),
(215, 'Tocolandia', ' Sao Sebastiao', NULL),
(216, 'Topo Varadouro', ' Sao Sebastiao', NULL),
(217, 'Topolândia', ' Sao Sebastiao', NULL),
(218, 'Topovaradouro', ' Sao Sebastiao', NULL),
(219, 'Toque T Pequeno', ' Sao Sebastiao', NULL),
(220, 'Toque Tooque Pequeno', ' Sao Sebastiao', NULL),
(221, 'Toque Toque Pequen', ' Sao Sebastiao', NULL),
(222, 'Toque-toque Grande', ' Sao Sebastiao', NULL),
(223, 'Toque-toque Pequeno', ' Sao Sebastiao', NULL),
(224, 'Varadouro', ' Sao Sebastiao', NULL),
(225, 'Vila Amélia', ' Sao Sebastiao', NULL),
(226, 'Vila Baiana', ' Sao Sebastiao', NULL),
(227, 'Vila do Sahy', ' Sao Sebastiao', NULL),
(228, 'Vila Sahy', ' Sao Sebastiao', NULL),
(229, 'Village Camburí', ' Sao Sebastiao', NULL),
(230, 'Ãgua Branca', ' Ilhabela', NULL),
(231, 'ArmaÃ§Ã£o', ' Ilhabela', NULL),
(232, 'B Ponta Azeda', ' Ilhabela', NULL),
(233, 'Bairro Reino', ' Ilhabela', NULL),
(234, 'Barra Ãgua Branca', ' Ilhabela', NULL),
(235, 'Barra da Ãgua Branca', ' Ilhabela', NULL),
(236, 'Barra Velha', ' Ilhabela', NULL),
(237, 'Bexiga', ' Ilhabela', NULL),
(238, 'Bonete', ' Ilhabela', NULL),
(239, 'Centro', ' Ilhabela', NULL),
(240, 'Cocaia', ' Ilhabela', NULL),
(241, 'CondomÃ­nio Ilha Sul', ' Ilhabela', NULL),
(242, 'Costa Bela', ' Ilhabela', NULL),
(243, 'Costa Bela II', ' Ilhabela', NULL),
(244, 'Curral', ' Ilhabela', NULL),
(245, 'do Ilhote', ' Ilhabela', NULL),
(246, 'Feiticeira', ' Ilhabela', NULL),
(247, 'Ilha Cabras', ' Ilhabela', NULL),
(248, 'ItaguaÃ§u', ' Ilhabela', NULL),
(249, 'Itaguassu', ' Ilhabela', NULL),
(250, 'Itaquanduba', ' Ilhabela', NULL),
(251, 'Jabaquara', ' Ilhabela', NULL),
(252, 'Jardim Arco Ãris', ' Ilhabela', NULL),
(253, 'Jardim Arco-Ã­ris', ' Ilhabela', NULL),
(254, 'Jardim Coqueiros', ' Ilhabela', NULL),
(255, 'Jardim Ã‰den', ' Ilhabela', NULL),
(256, 'Jardim Siriuba I', ' Ilhabela', NULL),
(257, 'Loteamento Fazenda do Matias', ' Ilhabela', NULL),
(258, 'Loteamento Fazenda Engenheiro', ' Ilhabela', NULL),
(259, 'Loteamento Fazenda Matias', ' Ilhabela', NULL),
(260, 'Loteamento Mirante Ilha', ' Ilhabela', NULL),
(261, 'Morro Cantagalo', ' Ilhabela', NULL),
(262, 'Morro Castelo', ' Ilhabela', NULL),
(263, 'Morro Fazenda', ' Ilhabela', NULL),
(264, 'Morro Resfriado', ' Ilhabela', NULL),
(265, 'Pequea', ' Ilhabela', NULL),
(266, 'PerequÃª', ' Ilhabela', NULL),
(267, 'Piuva', ' Ilhabela', NULL),
(268, 'Ponta Azeda', ' Ilhabela', NULL),
(269, 'PontÃ£o Azeda', ' Ilhabela', NULL),
(270, 'PontÃ£o das Canas', ' Ilhabela', NULL),
(271, 'Portinho', ' Ilhabela', NULL),
(272, 'Prai Itacuanduba', ' Ilhabela', NULL),
(273, 'Praia Curral', ' Ilhabela', NULL),
(274, 'Praia da Feiticeira', ' Ilhabela', NULL),
(275, 'Praia do Bexiga', ' Ilhabela', NULL),
(276, 'Praia do Curral', ' Ilhabela', NULL),
(277, 'Praia do ItaguaÃ§u', ' Ilhabela', NULL),
(278, 'Praia do PerequÃª', ' Ilhabela', NULL),
(279, 'Praia Feia', ' Ilhabela', NULL),
(280, 'Praia Feiticeira', ' Ilhabela', NULL),
(281, 'Praia Figueira', ' Ilhabela', NULL),
(282, 'Praia Grande', ' Ilhabela', NULL),
(283, 'Praia ItaguaÃ§u', ' Ilhabela', NULL),
(284, 'Praia JuliÃ£o', ' Ilhabela', NULL),
(285, 'Praia PerequÃª', ' Ilhabela', NULL),
(286, 'Praia Portinho', ' Ilhabela', NULL),
(287, 'Praia Saco Capela', ' Ilhabela', NULL),
(288, 'Praia Saco do IndaiÃ¡', ' Ilhabela', NULL),
(289, 'Praia Saco IndaiÃ¡', ' Ilhabela', NULL),
(290, 'Praia Veloso', ' Ilhabela', NULL),
(291, 'Reino', ' Ilhabela', NULL),
(292, 'S Pedro', ' Ilhabela', NULL),
(293, 'Saco da Capela', ' Ilhabela', NULL),
(294, 'Saco do IndaiÃ¡', ' Ilhabela', NULL),
(295, 'SÃ£o Pedro', ' Ilhabela', NULL),
(296, 'ServidÃ£o Anil', ' Ilhabela', NULL),
(297, 'SimÃ£o', ' Ilhabela', NULL),
(298, 'Siriuba', ' Ilhabela', NULL),
(299, 'Siriuba Ii', ' Ilhabela', NULL),
(300, 'Sul', ' Ilhabela', NULL),
(301, 'TaubatÃ©', ' Ilhabela', NULL),
(302, 'Veloso', ' Ilhabela', NULL),
(303, 'Viana', ' Ilhabela', NULL),
(304, 'Vila Cabarau', ' Ilhabela', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_categorias`
--

DROP TABLE IF EXISTS `gm_categorias`;
CREATE TABLE IF NOT EXISTS `gm_categorias` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_nome` varchar(50) NOT NULL,
  `cate_slug` varchar(50) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_categorias`
--

INSERT INTO `gm_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(6, 'Saias', 'cate-saias'),
(2, 'Camisas', 'categoria-camisas'),
(3, 'Vestidos', 'categoria-vestidos'),
(4, 'Calças ', 'categoria-calcas'),
(5, 'Blusas', 'categoria-blusas'),
(7, 'Shorts', 'cate-shorts');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_clientes`
--

DROP TABLE IF EXISTS `gm_clientes`;
CREATE TABLE IF NOT EXISTS `gm_clientes` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(80) NOT NULL,
  `cli_sobrenome` varchar(80) NOT NULL,
  `cli_endereco` varchar(100) NOT NULL,
  `cli_numero` varchar(20) NOT NULL,
  `cli_ponto_referencia` varchar(255) DEFAULT NULL,
  `cli_bairro` varchar(80) NOT NULL,
  `cli_cidade` varchar(150) NOT NULL,
  `cli_cep` varchar(10) NOT NULL,
  `cli_cpf` varchar(12) NOT NULL,
  `cli_fone` varchar(12) NOT NULL,
  `cli_celular` varchar(12) NOT NULL,
  `cli_email` varchar(150) NOT NULL,
  `cli_pass` varchar(150) NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_clientes`
--

INSERT INTO `gm_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_ponto_referencia`, `cli_bairro`, `cli_cidade`, `cli_cep`, `cli_cpf`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_cad`, `cli_hora_cad`) VALUES
(24, 'Willian', 'Sales Gabriel', 'Rua Cleusa Fátima dos Santos, 62', '62', 'Próximo ao Hortifrúti JC ', 'Pegorelli', 'Caraguatatuba', '11669309', '43593584824', '1238894092', '12996417887', 'williansalesgabriel@hotmail.com', 'f8bf5f221cef51838766c7e8348bf5da', '2019-07-31', '08:22:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_imagens`
--

DROP TABLE IF EXISTS `gm_imagens`;
CREATE TABLE IF NOT EXISTS `gm_imagens` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_nome` varchar(200) NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_imagens`
--

INSERT INTO `gm_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(17, '190731222958vestido-preto2.jpg.jpg', 22, NULL),
(18, '190731223007vestido-preto.jpg.jpg', 22, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_pedidos`
--

DROP TABLE IF EXISTS `gm_pedidos`;
CREATE TABLE IF NOT EXISTS `gm_pedidos` (
  `ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) NOT NULL,
  `ped_ref` varchar(40) NOT NULL,
  `ped_pag_status` varchar(20) DEFAULT 'SOLICITADO',
  `ped_pag_forma` varchar(20) DEFAULT NULL,
  `ped_pag_tipo` varchar(20) DEFAULT NULL,
  `ped_pag_codigo` varchar(220) DEFAULT NULL,
  `ped_frete_valor` double(9,2) DEFAULT NULL,
  `ped_frete_tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ped_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos`
--

INSERT INTO `gm_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(46, '2019-07-22', '07:24:32', 1, '1907220707301', '1907220707301', 'ENTREGUE', NULL, NULL, NULL, 112.40, NULL),
(45, '2019-07-22', '05:41:29', 1, '1907220507271', '1907220507271', 'ENTREGUE', NULL, NULL, NULL, 112.40, NULL),
(44, '2019-07-21', '09:28:34', 1, '1907210907321', '1907210907321', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(43, '2019-07-21', '09:19:47', 1, '1907210907451', '1907210907451', NULL, NULL, NULL, NULL, 112.40, NULL),
(34, '2019-07-21', '06:27:28', 1, '1907210607281', '1907210607281', NULL, NULL, NULL, NULL, 112.40, NULL),
(35, '2019-07-21', '07:45:15', 1, '1907210607551', '1907210607551', NULL, NULL, NULL, NULL, 112.40, NULL),
(36, '2019-07-21', '08:05:37', 1, '1907210807351', '1907210807351', NULL, NULL, NULL, NULL, 112.40, NULL),
(37, '2019-07-21', '08:10:07', 1, '1907210807061', '1907210807061', NULL, NULL, NULL, NULL, 112.40, NULL),
(38, '2019-07-21', '08:25:57', 1, '1907210807561', '1907210807561', NULL, NULL, NULL, NULL, 112.40, NULL),
(39, '2019-07-21', '08:33:49', 1, '1907210807471', '1907210807471', NULL, NULL, NULL, NULL, 115.80, NULL),
(40, '2019-07-21', '08:34:58', 1, '1907210807561', '1907210807561', NULL, NULL, NULL, NULL, 115.80, NULL),
(41, '2019-07-21', '08:38:15', 1, '1907210807131', '1907210807131', NULL, NULL, NULL, NULL, 115.80, NULL),
(42, '2019-07-21', '09:08:01', 1, '1907210907001', '1907210907001', NULL, NULL, NULL, NULL, 112.40, NULL),
(22, '2019-07-18', '23:10:22', 1, '1907182307221', '1907182307221', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(23, '2019-07-19', '20:24:29', 1, '1907192007291', '1907192007291', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(24, '2019-07-19', '20:26:27', 1, '1907192007271', '1907192007271', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(25, '2019-07-20', '07:33:04', 1, '1907200707041', '1907200707041', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(26, '2019-07-20', '07:35:59', 1, '1907200707591', '1907200707591', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(27, '2019-07-20', '07:52:03', 1, '1907200707031', '1907200707031', NULL, NULL, NULL, NULL, 115.80, NULL),
(28, '2019-07-20', '07:59:16', 1, '1907200707161', '1907200707161', NULL, NULL, NULL, NULL, 112.40, NULL),
(29, '2019-07-20', '08:05:03', 1, '1907200807031', '1907200807031', NULL, NULL, NULL, NULL, 112.40, NULL),
(30, '2019-07-20', '08:09:15', 1, '1907200807151', '1907200807151', NULL, NULL, NULL, NULL, 112.40, NULL),
(31, '2019-07-20', '08:12:32', 1, '1907200807321', '1907200807321', NULL, NULL, NULL, NULL, 112.40, NULL),
(32, '2019-07-20', '08:14:15', 1, '1907200807151', '1907200807151', NULL, NULL, NULL, NULL, 112.40, NULL),
(33, '2019-07-20', '08:22:46', 12, '1907200807451', '1907200807451', NULL, NULL, NULL, NULL, 115.80, NULL),
(47, '2019-07-23', '07:05:08', 1, '1907230707051', '1907230707051', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(48, '2019-07-24', '04:24:20', 1, '1907240407181', '1907240407181', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(49, '2019-07-26', '07:25:02', 1, '19072607070012', '19072607070012', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(50, '2019-07-26', '07:45:34', 1, '19072607073212', '19072607073212', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(51, '2019-07-26', '07:48:13', 12, '19072607071212', '19072607071212', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(52, '2019-07-26', '07:50:23', 12, '19072607072112', '19072607072112', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(53, '2019-07-26', '16:31:05', 12, '19072616070312', '19072616070312', 'ENTREGUE', NULL, NULL, NULL, 112.40, NULL),
(54, '2019-07-28', '02:59:58', 16, '19072802075616', '19072802075616', 'ENTREGUE', NULL, NULL, NULL, 112.40, NULL),
(55, '2019-07-28', '03:24:22', 16, '19072803072016', '19072803072016', 'ENTREGUE', NULL, NULL, NULL, 112.40, NULL),
(56, '2019-07-28', '03:33:44', 16, '19072803074316', '19072803074316', 'SOLICITADO', NULL, NULL, NULL, 112.40, NULL),
(57, '2019-07-28', '04:46:50', 16, '19072804074716', '19072804074716', 'CANCELADO', NULL, NULL, NULL, 112.40, NULL),
(58, '2019-07-28', '21:55:44', 16, '19072821074116', '19072821074116', 'SEPARADO', NULL, NULL, NULL, 112.40, NULL),
(59, '2019-07-29', '16:22:15', 16, '19072916071216', '19072916071216', 'ENTREGUE', NULL, NULL, NULL, 112.40, NULL),
(60, '2019-07-30', '03:41:39', 16, '19073003073716', '19073003073716', 'SOLICITADO', NULL, NULL, NULL, 115.80, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_pedidos_itens`
--

DROP TABLE IF EXISTS `gm_pedidos_itens`;
CREATE TABLE IF NOT EXISTS `gm_pedidos_itens` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos_itens`
--

INSERT INTO `gm_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(47, 8, 89.90, 1, '1907230707051'),
(46, 5, 89.90, 1, '1907220707301'),
(33, 6, 79.90, 1, '1907210607281'),
(34, 7, 49.90, 1, '1907210607551'),
(35, 9, 56.00, 1, '1907210807351'),
(36, 7, 49.90, 1, '1907210807351'),
(37, 9, 56.00, 1, '1907210807061'),
(38, 9, 56.00, 1, '1907210807561'),
(39, 5, 89.90, 1, '1907210807471'),
(40, 9, 56.00, 1, '1907210807561'),
(41, 9, 56.00, 1, '1907210807131'),
(42, 9, 56.00, 1, '1907210907001'),
(43, 8, 89.90, 1, '1907210907451'),
(44, 9, 56.00, 1, '1907210907321'),
(45, 9, 56.00, 1, '1907220507271'),
(18, 1, 80.00, 1, '1907182307221'),
(19, 5, 89.90, 1, '1907192007291'),
(20, 8, 89.90, 1, '1907192007291'),
(21, 7, 49.90, 1, '1907192007271'),
(22, 9, 56.00, 1, '1907192007271'),
(23, 5, 89.90, 1, '1907200707041'),
(24, 4, 49.90, 1, '1907200707041'),
(25, 8, 89.90, 1, '1907200707591'),
(26, 7, 49.90, 1, '1907200707031'),
(27, 9, 56.00, 1, '1907200707161'),
(28, 7, 49.90, 1, '1907200807031'),
(29, 9, 56.00, 1, '1907200807151'),
(30, 8, 89.90, 1, '1907200807321'),
(31, 8, 89.90, 1, '1907200807151'),
(32, 9, 56.00, 1, '1907200807451'),
(48, 9, 56.00, 1, '1907240407181'),
(49, 8, 89.90, 1, '19072607070012'),
(50, 5, 89.90, 1, '19072607073212'),
(51, 3, 45.90, 1, '19072607071212'),
(52, 4, 49.90, 1, '19072607071212'),
(53, 5, 89.90, 2, '19072607071212'),
(54, 9, 56.00, 1, '19072607072112'),
(55, 7, 49.90, 1, '19072607072112'),
(56, 7, 49.90, 1, '19072616070312'),
(57, 8, 89.90, 1, '19072802075616'),
(58, 4, 49.90, 1, '19072803072016'),
(59, 3, 45.90, 1, '19072803072016'),
(60, 9, 56.00, 1, '19072803074316'),
(61, 6, 79.90, 1, '19072804074716'),
(62, 7, 49.90, 1, '19072804074716'),
(63, 9, 56.00, 1, '19072821074116'),
(64, 8, 89.90, 1, '19072916071216'),
(65, 5, 89.90, 1, '19072916071216'),
(66, 6, 79.90, 1, '19073003073716'),
(67, 22, 89.90, 3, '19073003073716'),
(68, 21, 99.90, 1, '19073003073716'),
(69, 15, 49.90, 1, '19073003073716');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_produtos`
--

DROP TABLE IF EXISTS `gm_produtos`;
CREATE TABLE IF NOT EXISTS `gm_produtos` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) DEFAULT NULL,
  `pro_altura` int(11) DEFAULT NULL,
  `pro_comprimento` int(11) DEFAULT NULL,
  `pro_img` varchar(255) NOT NULL,
  `pro_slug` varchar(100) NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) DEFAULT NULL,
  `pro_ref` varchar(100) NOT NULL,
  `pro_fabricante` int(11) DEFAULT NULL,
  `pro_ativo` varchar(3) NOT NULL,
  `pro_frete_gratis` varchar(100) NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_produtos`
--

INSERT INTO `gm_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_gratis`) VALUES
(8, 5, 'Blusa Moletom adidas ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.050, 89.90, 1, 1, 1, 'blusa-adidas.jpg', 'blusa-adidas-moletom', 1, '4', '5', 6, 'SIM', 'Não'),
(7, 4, 'Calça Camuflada Feminina', '', 0.050, 49.90, 55, 15, 56, 'calca-camuflada.jpg', 'calca-camuflada-feminina', 2, '2', '2', 1, 'SIM', 'Não'),
(6, 4, 'Calça Couro Sintetico', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.090, 79.90, 1, 1, 1, 'calca-de-coro.jpg', 'calca-de-coro-preta', 10, '1', '1', 1, 'SIM', 'Não'),
(5, 3, 'Vestido Azul ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.060, 89.90, 1, 1, 1, 'vestido-azul.jpg', 'vestido-azul', 12, '456', '456', 5889, 'SIM', 'Não'),
(4, 3, 'Vestido Cores', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.060, 49.90, 0, 0, 0, 'vestido-cores.jpg', 'vestido-cores', 6, '456', 'ddds', 12, 'SIM', 'Não'),
(9, 6, 'Saia Roxa  ', '', 0.045, 56.00, 1, 1, 1, 'saia-roxa.jpg', 'saia-roxa', 1, '125', '5666', 5522, 'SIM', 'Não'),
(11, 6, 'Saia Jeans ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.500, 99.99, 10, 10, 10, 'saia-jeans.jpg', 'saia-jeans', 10, 'asddff', '45522', NULL, 'SIM', 'Não'),
(13, 7, 'Short Jeans ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.500, 99.99, 10, 10, 10, 'shorts-jeans.jpg', 'short-jeans', 10, 'asddff', '45522', NULL, 'SIM', 'Não'),
(14, 2, 'Camisa Manga Comprida ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.059, 69.90, 10, 10, 10, 'camisa-manga-comprida.jpg', 'camisa-manga-comprida', 10, 'sssdf', 'ddfff', NULL, 'SIM', 'Não'),
(17, 4, 'Calca Jeans', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.500, 49.90, 10, 10, 10, '190729160428calca-jeans.jpg.jpg', 'calca-jeans', 10, 'asddff', '45522', NULL, 'SIM', 'Não'),
(16, 2, 'Conjunto Short e Blusa', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.059, 45.90, 10, 10, 10, '190729154509conjunto.jpg.jpg', 'conjunto-short-e-blusa', 10, 'asddff', '45522', NULL, 'SIM', 'Não'),
(21, 4, 'Calca Jeans', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.500, 99.90, NULL, NULL, NULL, '190730160647calca-jeans-azul-claro-com-barra-mullet-des.jpg', 'calca-jeans', 10, NULL, '45522', NULL, 'SIM', 'Não'),
(22, 3, 'Vestido Preto Colado ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 99.90, NULL, NULL, NULL, '190730165714vestido-preto.jpg.jpg', 'vestido-preto-colado', 10, NULL, '45662255', NULL, 'SIM', 'Não');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
