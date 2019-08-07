-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Ago-2019 às 07:42
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja_gabymodas`
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
(1, 'Balneário Copacabana', 'Caraguatatuba', 7),
(2, 'Balneário dos Golfinhos', 'Caraguatatuba', 7),
(113, 'Alfredo Petercem', 'Sao Sebastiao', 5),
(4, 'BalneÃ¡rio Gardem Mar', 'Caraguatatuba', 7),
(5, 'BalneÃ¡rio Garden Mar', 'Caraguatatuba', 7),
(6, 'BalneÃ¡rio Golfinhos', 'Caraguatatuba', 7),
(7, 'BalneÃ¡rio Recanto do Sol', 'Caraguatatuba', 7),
(8, 'Barranco Alto', 'Caraguatatuba', 7),
(9, 'Benfica', 'Caraguatatuba', 7),
(10, 'CapricÃ³rnio III', 'Caraguatatuba', 7),
(11, 'Caputera', 'Caraguatatuba', 7),
(12, 'Casa Branca', 'Caraguatatuba', 7),
(13, 'Centro', 'Caraguatatuba', 7),
(14, 'ChÃ¡cara ColÃ´nias', 'Caraguatatuba', 7),
(15, 'Cidade Jardim', 'Caraguatatuba', 7),
(16, 'Copacabana', 'Caraguatatuba', 7),
(17, 'Costa Tabatinga', 'Caraguatatuba', 7),
(18, 'Costa Verde Mococa', 'Caraguatatuba', 7),
(19, 'Costa Verde Tabatinga', 'Caraguatatuba', 7),
(20, 'EstÃ¢ncia BalneÃ¡ria Hawai', 'Caraguatatuba', 7),
(21, 'Fazenda Getuba', 'Caraguatatuba', 7),
(22, 'Fazenda JaraguÃ¡', 'Caraguatatuba', 7),
(23, 'Fazenda Jetuba', 'Caraguatatuba', 7),
(24, 'Fazenda Recanto Ana', 'Caraguatatuba', 7),
(25, 'Fazenda Rio Claro', 'Caraguatatuba', 7),
(26, 'Getuba', 'Caraguatatuba', 7),
(27, 'IndaiÃ¡', 'Caraguatatuba', 7),
(28, 'Ipiranga', 'Caraguatatuba', 7),
(29, 'JaraguÃ¡', 'Caraguatatuba', 7),
(30, 'JaraguÃ¡ PerequÃª', 'Caraguatatuba', 7),
(31, 'Jaraguazinho', 'Caraguatatuba', 7),
(32, 'Jardim Aruan', 'Caraguatatuba', 7),
(33, 'Jardim Bandeirantes', 'Caraguatatuba', 7),
(34, 'Jardim Benfica', 'Caraguatatuba', 7),
(35, 'Jardim Brasil', 'Caraguatatuba', 7),
(36, 'Jardim BritÃ¢nia', 'Caraguatatuba', 7),
(37, 'Jardim C Sindicatos', 'Caraguatatuba', 7),
(38, 'Jardim CalifÃ³rnia', 'Caraguatatuba', 7),
(39, 'Jardim CapricÃ³rnio', 'Caraguatatuba', 7),
(40, 'Jardim CapricÃ³rnio II', 'Caraguatatuba', 7),
(41, 'Jardim Casa Branca', 'Caraguatatuba', 7),
(42, 'Jardim ColÃ´nia Sindicatos', 'Caraguatatuba', 7),
(43, 'Jardim das Gaivotas', 'Caraguatatuba', 7),
(44, 'Jardim do Sol', 'Caraguatatuba', 7),
(45, 'Jardim dos Sindicatos', 'Caraguatatuba', 7),
(46, 'Jardim Flexeiras', 'Caraguatatuba', 7),
(47, 'Jardim Forest', 'Caraguatatuba', 7),
(48, 'Jardim Gaivotas', 'Caraguatatuba', 7),
(49, 'Jardim Gaivotas III', 'Caraguatatuba', 7),
(50, 'Jardim Golfinhos', 'Caraguatatuba', 7),
(51, 'Jardim IndaiÃ¡', 'Caraguatatuba', 7),
(52, 'Jardim ItaÃºna', 'Caraguatatuba', 7),
(53, 'Jardim Jaqueira', 'Caraguatatuba', 7),
(54, 'Jardim JaraguÃ¡', 'Caraguatatuba', 7),
(55, 'Jardim Miramar', 'Caraguatatuba', 7),
(56, 'Jardim Olaria', 'Caraguatatuba', 7),
(57, 'Jardim Palmeiras', 'Caraguatatuba', 7),
(58, 'Jardim Parnaso', 'Caraguatatuba', 7),
(59, 'Jardim Parnazo', 'Caraguatatuba', 7),
(60, 'Jardim Ponte Seca', 'Caraguatatuba', 7),
(61, 'Jardim Porto Novo', 'Caraguatatuba', 7),
(62, 'Jardim Primavera', 'Caraguatatuba', 7),
(63, 'Jardim Recanto', 'Caraguatatuba', 7),
(64, 'Jardim Rio Santos', 'Caraguatatuba', 7),
(65, 'Jardim Rua Santos', 'Caraguatatuba', 7),
(66, 'Jardim SÃ£o Francisco', 'Caraguatatuba', 7),
(67, 'Jardim Saveiro', 'Caraguatatuba', 7),
(68, 'Jardim Sindicato', 'Caraguatatuba', 7),
(69, 'Jardim Sindicatos', 'Caraguatatuba', 7),
(70, 'Jardim Sol', 'Caraguatatuba', 7),
(71, 'Jardim Tarumas', 'Caraguatatuba', 7),
(72, 'Loteamento Luiz Marques', 'Caraguatatuba', 7),
(73, 'Loteamento Recreio Juqueriquere', 'Caraguatatuba', 7),
(74, 'Mar Verde II', 'Caraguatatuba', 7),
(75, 'Martim de SÃ¡', 'Caraguatatuba', 7),
(76, 'Martim SÃ¡', 'Caraguatatuba', 7),
(77, 'MassaguaÃ§u', 'Caraguatatuba', 7),
(78, 'Morro AlgodÃ£o', 'Caraguatatuba', 7),
(79, 'Morro do AlgodÃ£o', 'Caraguatatuba', 7),
(80, 'Morro Querozene', 'Caraguatatuba', 7),
(81, 'Olaria', 'Caraguatatuba', 7),
(82, 'Parque Imperial', 'Caraguatatuba', 7),
(83, 'Pegorelli', 'Caraguatatuba', 7),
(84, 'PerequÃª Mirim', 'Caraguatatuba', 7),
(85, 'Poiares', 'Caraguatatuba', 7),
(86, 'Pontal de Santa Marina', 'Caraguatatuba', 7),
(87, 'Pontal Santa Marina', 'Caraguatatuba', 7),
(88, 'Pontal Santamar', 'Caraguatatuba', 7),
(89, 'Ponte Seca', 'Caraguatatuba', 7),
(90, 'Portal Fazendinha', 'Caraguatatuba', 7),
(91, 'Portal Patrimonium', 'Caraguatatuba', 7),
(92, 'Portal Tabatinga', 'Caraguatatuba', 7),
(93, 'Porto Novo', 'Caraguatatuba', 7),
(94, 'Praia da Mococa', 'Caraguatatuba', 7),
(95, 'Praia das Palmeiras', 'Caraguatatuba', 7),
(96, 'Praia Palmeiras', 'Caraguatatuba', 7),
(97, 'Prainha', 'Caraguatatuba', 7),
(98, 'Recanto Som Mar', 'Caraguatatuba', 7),
(99, 'Recanto Verde Mar', 'Caraguatatuba', 7),
(100, 'Residencial Marina', 'Caraguatatuba', 7),
(101, 'Rio Claro', 'Caraguatatuba', 7),
(102, 'Rio do Ouro', 'Caraguatatuba', 7),
(103, 'Rio Ouro', 'Caraguatatuba', 7),
(104, 'Santo AntÃ´nio', 'Caraguatatuba', 7),
(105, 'SumarÃ©', 'Caraguatatuba', 7),
(106, 'Tabatinga', 'Caraguatatuba', 7),
(107, 'Tinga', 'Caraguatatuba', 7),
(108, 'TravessÃ£o', 'Caraguatatuba', 7),
(109, 'Viaduto Golfinhos', 'Caraguatatuba', 7),
(110, 'Vila Marcondes', 'Caraguatatuba', 7),
(111, 'Vila Ponte Seca', 'Caraguatatuba', 7),
(112, 'Villagio Verde Mare', 'Caraguatatuba', 7),
(114, 'Areião de Camburí', 'Sao Sebastiao', 5),
(115, 'Arrastão', 'Sao Sebastiao', 5),
(116, 'Bairro Sertãozinho', 'Sao Sebastiao', 5),
(117, 'Bairro Varadouro', 'Sao Sebastiao', 5),
(118, 'Baleia', 'Sao Sebastiao', 5),
(119, 'Balneário Canto do Mar', 'Sao Sebastiao', 5),
(120, 'Balneário Canto Mar', 'Sao Sebastiao', 5),
(121, 'Balneário Turist Enseada', 'Sao Sebastiao', 5),
(122, 'Baraquecaba', 'Sao Sebastiao', 5),
(123, 'Barequeçaba', 'Sao Sebastiao', 5),
(124, 'Barra do Sahy', 'Sao Sebastiao', 5),
(125, 'Barra do Sai', 'Sao Sebastiao', 5),
(126, 'Barra do Say', 'Sao Sebastiao', 5),
(127, 'Barra do Una', 'Sao Sebastiao', 5),
(128, 'Barra Sahy', 'Sao Sebastiao', 5),
(129, 'Barra Una', 'Sao Sebastiao', 5),
(130, 'Boiçucanga', 'Sao Sebastiao', 5),
(131, 'Boissucanga', 'Sao Sebastiao', 5),
(132, 'Boissulanga', 'Sao Sebastiao', 5),
(133, 'Boraceia', 'Sao Sebastiao', 5),
(134, 'Boraceia 2', 'Sao Sebastiao', 5),
(135, 'Boraceia II', 'Sao Sebastiao', 5),
(136, 'Camburí', 'Sao Sebastiao', 5),
(137, 'Camburizinho', 'Sao Sebastiao', 5),
(138, 'Cambury', 'Sao Sebastiao', 5),
(139, 'Canto do Mar', 'Sao Sebastiao', 5),
(140, 'Centro', 'Sao Sebastiao', 5),
(141, 'Cigarras', 'Sao Sebastiao', 5),
(142, 'Condomínio Baleia', 'Sao Sebastiao', 5),
(143, 'do Sai', 'Sao Sebastiao', 5),
(144, 'Enseada', 'Sao Sebastiao', 5),
(145, 'Enseada Divisa', 'Sao Sebastiao', 5),
(146, 'Guaeca', 'Sao Sebastiao', 5),
(147, 'Itatinga', 'Sao Sebastiao', 5),
(148, 'Jaraguá', 'Sao Sebastiao', 5),
(149, 'Jardim Canto Mar', 'Sao Sebastiao', 5),
(150, 'Jardim Forte', 'Sao Sebastiao', 5),
(151, 'Jardim Jaraguá', 'Sao Sebastiao', 5),
(152, 'Jardim S Francisco', 'Sao Sebastiao', 5),
(153, 'Jardim São Francisco', 'Sao Sebastiao', 5),
(154, 'Joquey Maresias', 'Sao Sebastiao', 5),
(155, 'Juquehi', 'Sao Sebastiao', 5),
(156, 'Juquehy', 'Sao Sebastiao', 5),
(157, 'Juqueí', 'Sao Sebastiao', 5),
(158, 'Juquery', 'Sao Sebastiao', 5),
(159, 'Juquey', 'Sao Sebastiao', 5),
(160, 'Jureia', 'Sao Sebastiao', 5),
(161, 'La Residencial Du Moulin', 'Sao Sebastiao', 5),
(162, 'Maresias', 'Sao Sebastiao', 5),
(163, 'Morro do Abrigo', 'Sao Sebastiao', 5),
(164, 'Olaria', 'Sao Sebastiao', 5),
(165, 'Parque Coqueiros', 'Sao Sebastiao', 5),
(166, 'Parque Itatinga', 'Sao Sebastiao', 5),
(167, 'Paúba', 'Sao Sebastiao', 5),
(168, 'Pitangueiras', 'Sao Sebastiao', 5),
(169, 'Pontal Cruz', 'Sao Sebastiao', 5),
(170, 'Pontal da Cruz', 'Sao Sebastiao', 5),
(171, 'Pontão da Cruz', 'Sao Sebastiao', 5),
(172, 'Pontinha', 'Sao Sebastiao', 5),
(173, 'Por Grande', 'Sao Sebastiao', 5),
(174, 'Portal da Olaria', 'Sao Sebastiao', 5),
(175, 'Portal Enseada', 'Sao Sebastiao', 5),
(176, 'Portal Olaria', 'Sao Sebastiao', 5),
(177, 'Porto Grande', 'Sao Sebastiao', 5),
(178, 'Praia Baleia', 'Sao Sebastiao', 5),
(179, 'Praia Baraquecaba', 'Sao Sebastiao', 5),
(180, 'Praia Boissucanga', 'Sao Sebastiao', 5),
(181, 'Praia Boraceia', 'Sao Sebastiao', 5),
(182, 'Praia Camburí', 'Sao Sebastiao', 5),
(183, 'Praia Cigarras', 'Sao Sebastiao', 5),
(184, 'Praia da Baleia', 'Sao Sebastiao', 5),
(185, 'Praia da Figueira', 'Sao Sebastiao', 5),
(186, 'Praia da Olaria', 'Sao Sebastiao', 5),
(187, 'Praia de Boraceia', 'Sao Sebastiao', 5),
(188, 'Praia de Juquehy', 'Sao Sebastiao', 5),
(189, 'Praia de Juqueí', 'Sao Sebastiao', 5),
(190, 'Praia do Arrastão', 'Sao Sebastiao', 5),
(191, 'Praia do Guaeca', 'Sao Sebastiao', 5),
(192, 'Praia do Partido', 'Sao Sebastiao', 5),
(193, 'Praia do Say', 'Sao Sebastiao', 5),
(194, 'Praia do Toque Toque', 'Sao Sebastiao', 5),
(195, 'Praia Engenho', 'Sao Sebastiao', 5),
(196, 'Praia Enseada', 'Sao Sebastiao', 5),
(197, 'Praia Figueira', 'Sao Sebastiao', 5),
(198, 'Praia Juqueí', 'Sao Sebastiao', 5),
(199, 'Praia Maresias', 'Sao Sebastiao', 5),
(200, 'Praia Porto Grande', 'Sao Sebastiao', 5),
(201, 'Praia Preta', 'Sao Sebastiao', 5),
(202, 'Praia Una', 'Sao Sebastiao', 5),
(203, 'Reserva Du Moulin', 'Sao Sebastiao', 5),
(204, 'S Francisco', 'Sao Sebastiao', 5),
(205, 'S Francisco da Praia', 'Sao Sebastiao', 5),
(206, 'Sahi', 'Sao Sebastiao', 5),
(207, 'São Francisco', 'Sao Sebastiao', 5),
(208, 'São Francisco Praia', 'Sao Sebastiao', 5),
(210, 'Sertão Camburí', 'Sao Sebastiao', 5),
(211, 'Sertão do Camburí', 'Sao Sebastiao', 5),
(212, 'Sertãozinho', 'Sao Sebastiao', 5),
(213, 'Sítio Esperança', 'Sao Sebastiao', 5),
(214, 'Tapolandia', 'Sao Sebastiao', 5),
(215, 'Tocolandia', 'Sao Sebastiao', 5),
(216, 'Topo Varadouro', 'Sao Sebastiao', 5),
(217, 'Topolândia', 'Sao Sebastiao', 5),
(218, 'Topovaradouro', 'Sao Sebastiao', 5),
(219, 'Toque T Pequeno', 'Sao Sebastiao', 5),
(220, 'Toque Tooque Pequeno', 'Sao Sebastiao', 5),
(221, 'Toque Toque Pequen', 'Sao Sebastiao', 5),
(222, 'Toque-toque Grande', 'Sao Sebastiao', 5),
(223, 'Toque-toque Pequeno', 'Sao Sebastiao', 5),
(224, 'Varadouro', 'Sao Sebastiao', 5),
(225, 'Vila Amélia', 'Sao Sebastiao', 5),
(226, 'Vila Baiana', 'Sao Sebastiao', 5),
(227, 'Vila do Sahy', 'Sao Sebastiao', 5),
(228, 'Vila Sahy', 'Sao Sebastiao', 5),
(229, 'Village Camburí', 'Sao Sebastiao', 5),
(230, 'Ãgua Branca', 'Ilhabela', 7),
(231, 'ArmaÃ§Ã£o', 'Ilhabela', 7),
(232, 'B Ponta Azeda', 'Ilhabela', 7),
(233, 'Bairro Reino', 'Ilhabela', 7),
(234, 'Barra Ãgua Branca', 'Ilhabela', 7),
(235, 'Barra da Ãgua Branca', 'Ilhabela', 7),
(236, 'Barra Velha', 'Ilhabela', 7),
(237, 'Bexiga', 'Ilhabela', 7),
(238, 'Bonete', 'Ilhabela', 7),
(239, 'Centro', 'Ilhabela', 7),
(240, 'Cocaia', 'Ilhabela', 7),
(241, 'CondomÃ­nio Ilha Sul', 'Ilhabela', 7),
(242, 'Costa Bela', 'Ilhabela', 7),
(243, 'Costa Bela II', 'Ilhabela', 7),
(244, 'Curral', 'Ilhabela', 7),
(245, 'do Ilhote', 'Ilhabela', 7),
(246, 'Feiticeira', 'Ilhabela', 7),
(247, 'Ilha Cabras', 'Ilhabela', 7),
(248, 'ItaguaÃ§u', 'Ilhabela', 7),
(249, 'Itaguassu', 'Ilhabela', 7),
(250, 'Itaquanduba', 'Ilhabela', 7),
(251, 'Jabaquara', 'Ilhabela', 7),
(252, 'Jardim Arco Ãris', 'Ilhabela', 7),
(253, 'Jardim Arco-Ã­ris', 'Ilhabela', 7),
(254, 'Jardim Coqueiros', 'Ilhabela', 7),
(255, 'Jardim Ã‰den', 'Ilhabela', 7),
(256, 'Jardim Siriuba I', 'Ilhabela', 7),
(257, 'Loteamento Fazenda do Matias', 'Ilhabela', 7),
(258, 'Loteamento Fazenda Engenheiro', 'Ilhabela', 7),
(259, 'Loteamento Fazenda Matias', 'Ilhabela', 7),
(260, 'Loteamento Mirante Ilha', 'Ilhabela', 7),
(261, 'Morro Cantagalo', 'Ilhabela', 7),
(262, 'Morro Castelo', 'Ilhabela', 7),
(263, 'Morro Fazenda', 'Ilhabela', 7),
(264, 'Morro Resfriado', 'Ilhabela', 7),
(265, 'Pequea', 'Ilhabela', 7),
(266, 'PerequÃª', 'Ilhabela', 7),
(267, 'Piuva', 'Ilhabela', 7),
(268, 'Ponta Azeda', 'Ilhabela', 7),
(269, 'PontÃ£o Azeda', 'Ilhabela', 7),
(270, 'PontÃ£o das Canas', 'Ilhabela', 7),
(271, 'Portinho', 'Ilhabela', 7),
(272, 'Prai Itacuanduba', 'Ilhabela', 7),
(273, 'Praia Curral', 'Ilhabela', 7),
(274, 'Praia da Feiticeira', 'Ilhabela', 7),
(275, 'Praia do Bexiga', 'Ilhabela', 7),
(276, 'Praia do Curral', 'Ilhabela', 7),
(277, 'Praia do ItaguaÃ§u', 'Ilhabela', 7),
(278, 'Praia do PerequÃª', 'Ilhabela', 7),
(279, 'Praia Feia', 'Ilhabela', 7),
(280, 'Praia Feiticeira', 'Ilhabela', 7),
(281, 'Praia Figueira', 'Ilhabela', 7),
(282, 'Praia Grande', 'Ilhabela', 7),
(283, 'Praia ItaguaÃ§u', 'Ilhabela', 7),
(284, 'Praia JuliÃ£o', 'Ilhabela', 7),
(285, 'Praia PerequÃª', 'Ilhabela', 7),
(286, 'Praia Portinho', 'Ilhabela', 7),
(287, 'Praia Saco Capela', 'Ilhabela', 7),
(288, 'Praia Saco do IndaiÃ¡', 'Ilhabela', 7),
(289, 'Praia Saco IndaiÃ¡', 'Ilhabela', 7),
(290, 'Praia Veloso', 'Ilhabela', 7),
(291, 'Reino', 'Ilhabela', 7),
(292, 'S Pedro', 'Ilhabela', 7),
(293, 'Saco da Capela', 'Ilhabela', 7),
(294, 'Saco do IndaiÃ¡', 'Ilhabela', 7),
(295, 'SÃ£o Pedro', 'Ilhabela', 7),
(296, 'ServidÃ£o Anil', 'Ilhabela', 7),
(297, 'SimÃ£o', 'Ilhabela', 7),
(298, 'Siriuba', 'Ilhabela', 7),
(299, 'Siriuba Ii', 'Ilhabela', 7),
(300, 'Sul', 'Ilhabela', 7),
(301, 'TaubatÃ©', 'Ilhabela', 7),
(302, 'Veloso', 'Ilhabela', 7),
(303, 'Viana', 'Ilhabela', 7),
(304, 'Vila Cabarau', 'Ilhabela', 7);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_categorias`
--

INSERT INTO `gm_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(6, 'Saias', 'cate-saias'),
(2, 'Camisas', 'categoria-camisas'),
(3, 'Vestidos', 'categoria-vestidos'),
(4, 'Calças ', 'categoria-calcas'),
(5, 'Blusas', 'categoria-blusas'),
(7, 'Shorts', 'cate-shorts'),
(14, 'Conjuntos', 'conjuntos');

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
  `cli_pass` varchar(150) NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_clientes`
--

INSERT INTO `gm_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_ponto_referencia`, `cli_bairro`, `cli_cidade`, `cli_cep`, `cli_cpf`, `cli_fone`, `cli_celular`, `cli_pass`, `cli_data_cad`, `cli_hora_cad`) VALUES
(35, 'Rebeca Lorraine', 'Mendes de Oliveira ', 'Rua Safira ', '60', 'Perto do Hortifruti JC ', 'Pegorelli', 'Caraguatatuba', '11669309', '18165387367', '1238894092', '12996278049', 'd41d8cd98f00b204e9800998ecf8427e', '2019-08-05', '19:22:39'),
(34, 'Willian', 'Sales', 'Rua Safira', '62', 'Proximo ao Hortifruti JC ', 'Pegorelli', 'Caraguatatuba', '11669309', '43593584824', '1238894092', '12996417887', 'a9c0eb8997768557f677db14e207f80c', '2019-08-05', '05:30:11'),
(36, 'Diego ', 'Jesus ', 'Rua Safira', '30', 'Proximo ao Hortifruti JC ', 'Pegorelli', 'Caraguatatuba', '11669309', '36551290094', '1238894092', '12996482564', '25f9e794323b453885f5181f1b624d0b', '2019-08-07', '02:34:02');

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
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos`
--

INSERT INTO `gm_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(92, '2019-08-07', '01:46:45', 34, '190807010845534', '190807010845534', 'ENTREGUE', NULL, NULL, NULL, 115.80, NULL),
(91, '2019-08-07', '01:46:24', 34, '190807010824534', '190807010824534', 'SOLICITADO', NULL, NULL, NULL, 112.40, NULL),
(90, '2019-08-07', '01:46:05', 34, '190807010805134', '190807010805134', 'SOLICITADO', NULL, NULL, NULL, 112.40, NULL),
(89, '2019-08-07', '01:35:54', 34, '190807010854634', '190807010854634', 'SOLICITADO', NULL, NULL, NULL, 112.40, NULL),
(93, '2019-08-07', '01:52:14', 34, '190807010814234', '190807010814234', 'SOLICITADO', NULL, NULL, NULL, 115.80, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_pedidos_itens`
--

DROP TABLE IF EXISTS `gm_pedidos_itens`;
CREATE TABLE IF NOT EXISTS `gm_pedidos_itens` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_produto` int(11) NOT NULL,
  `item_tamanho` varchar(2) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos_itens`
--

INSERT INTO `gm_pedidos_itens` (`item_id`, `item_produto`, `item_tamanho`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(111, 5, 'M', 89.90, 1, '190807010848634'),
(110, 8, 'M', 89.90, 1, '190807010848634'),
(109, 13, 'P', 99.99, 1, '190807010848634'),
(108, 26, '36', 40.00, 1, '190807010848634'),
(112, 26, '40', 40.00, 1, '190807010854634'),
(113, 26, '38', 40.00, 1, '190807010805134'),
(114, 17, 'G', 49.90, 1, '190807010824534'),
(115, 22, 'GG', 99.90, 1, '190807010845534'),
(116, 26, '36', 40.00, 1, '190807010814234');

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
  `pro_tamanho` varchar(30) DEFAULT NULL,
  `pro_img` varchar(255) NOT NULL,
  `pro_slug` varchar(100) NOT NULL,
  `pro_ref` varchar(100) NOT NULL,
  `pro_ativo` varchar(3) NOT NULL,
  `pro_frete_gratis` varchar(100) NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_produtos`
--

INSERT INTO `gm_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_tamanho`, `pro_img`, `pro_slug`, `pro_ref`, `pro_ativo`, `pro_frete_gratis`) VALUES
(8, 5, 'Blusa Moletom adidas ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.050, 89.90, 'P,M,G,GG', 'blusa-adidas.jpg', 'blusa-adidas-moletom', '5', 'SIM', 'Não'),
(7, 4, 'Calça Camuflada Feminina', '', 0.050, 49.90, 'P,M,G,GG', 'calca-camuflada.jpg', 'calca-camuflada-feminina', '2', 'SIM', 'Não'),
(6, 4, 'Calça Couro Sintetico', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.090, 79.90, 'P,M,G,GG', 'calca-de-coro.jpg', 'calca-de-coro-preta', '1', 'SIM', 'Não'),
(5, 3, 'Vestido Azul ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.060, 89.90, 'P,M,G,GG', 'vestido-azul.jpg', 'vestido-azul', '456', 'SIM', 'Não'),
(4, 3, 'Vestido Cores', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.060, 49.90, 'P,M,G,GG', 'vestido-cores.jpg', 'vestido-cores', 'ddds', 'SIM', 'Não'),
(9, 6, 'Saia Roxa  ', '', 0.045, 56.00, 'P,M,G,GG', 'saia-roxa.jpg', 'saia-roxa', '5666', 'SIM', 'Não'),
(11, 6, 'Saia Jeans ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.500, 99.99, 'P,M,G,GG', 'saia-jeans.jpg', 'saia-jeans', '45522', 'SIM', 'Não'),
(13, 7, 'Short Jeans ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.500, 99.99, 'P,M,G,GG', 'shorts-jeans.jpg', 'short-jeans', '45522', 'SIM', 'Não'),
(14, 2, 'Camisa Manga Comprida ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.059, 69.90, 'P,M,G,GG', 'camisa-manga-comprida.jpg', 'camisa-manga-comprida', 'ddfff', 'SIM', 'Não'),
(17, 4, 'Calça Jeans', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.500, 49.90, 'P,M,G,GG', '190729160428calca-jeans.jpg.jpg', 'calca-jeans', '45522', 'SIM', 'Não'),
(16, 14, 'Conjunto Short e Blusa', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.059, 45.90, 'P,M,G,GG', '190729154509conjunto.jpg.jpg', 'conjunto-short-e-blusa', '45522', 'SIM', 'Não'),
(21, 4, 'Calça Jeans', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.500, 99.90, 'P,M,G,GG', '190730160647calca-jeans-azul-claro-com-barra-mullet-des.jpg', 'calca-jeans', '45522', 'SIM', 'Não'),
(22, 3, 'Vestido Preto Colado ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 99.90, 'P,M,G,GG', '190730165714vestido-preto.jpg.jpg', 'vestido-preto-colado', '45662255', 'SIM', 'Não'),
(23, 14, 'Conjunto Saia e Blusa Brancas ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 50.00, 'P,M,G,GG', '190802160010conjunto-branco.jpg.jpg', 'conjunto-saia-e-blusa-brancas', '78996655223', 'SIM', 'Não'),
(24, 14, 'Conjunto Saia Branca e Blusa Preta', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 40.00, 'P,M,G', '190802160254conjunto-brancoepreto.jpg.jpg', 'conjunto-saia-branca-e-blusa-preta', '', 'SIM', 'Não'),
(25, 14, 'Conjunto Saia Branca e Blusa Vermelha', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 40.00, 'P,M,G,GG', '190802160452consjunto-brancoevermelho.jpg.jpg', 'conjunto-saia-branca-e-blusa-vermelha', '422200336589', 'SIM', 'Não'),
(26, 14, 'Conjunto Saia Branca e Blusa Rosa', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 40.00, '36,38,40', '190802160643conjunto-brancoerosa.jpg.jpg', 'conjunto-saia-branca-e-blusa-rosa', '', 'SIM', 'Não'),
(34, 4, 'CALÇA RIBANA CINZA', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.</li>\r\n</ul>\r\n<p><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 30.00, 'P,M,G,GG', '190807020034calca-cinza.jpg.jpg', 'calca-ribana-cinza', '5d4a5af2a64cd', 'SIM', 'Não'),
(35, 4, 'Calça Ribana Preta ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.</li>\r\n</ul>\r\n<p><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 30.00, 'P,M,G,GG', '190807020532calca-preta.jpg.jpg', 'calca-ribana-preta', '5d4a5c1c20a8c', 'SIM', 'Não'),
(36, 4, 'CALÇA RIBANA VERMELHA', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.</li>\r\n</ul>\r\n<p><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 30.00, 'P,M,G,GG', '190807020759calca-ribana-vermelha.jpg.jpg', 'calca-ribana-vermelha', '5d4a5caf4c4a7', 'SIM', 'Não'),
(37, 4, 'Calça Moletom Listrada ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.</li>\r\n</ul>\r\n<p><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 30.00, 'P,M,G,GG', '190807020900calca-moletom-listrada.jpg.jpg', 'calca-moletom-listrada', '5d4a5cecbac52', 'SIM', 'Não'),
(38, 3, 'Vestido Preto ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.</li>\r\n</ul>\r\n<p><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 30.00, '36,38,40,42', '190807021302vestido-preto.jpg.jpg', 'vestido-preto', '5d4a5dde0b741', 'SIM', 'Não'),
(39, 5, 'Blusa Preta ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li>\r\n</ul>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<ul>\r\n<li>NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.</li>\r\n</ul>\r\n</ul>\r\n<p><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 25.00, '36,38,40', '190807021700blusa-preta.jpg.jpg', 'blusa-preta', '5d4a5ecc5d288', 'SIM', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_user`
--

DROP TABLE IF EXISTS `gm_user`;
CREATE TABLE IF NOT EXISTS `gm_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nome` varchar(255) CHARACTER SET utf16 NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pw` varchar(255) NOT NULL,
  `user_data` date DEFAULT NULL,
  `user_hora` time DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_user`
--

INSERT INTO `gm_user` (`user_id`, `user_nome`, `user_email`, `user_pw`, `user_data`, `user_hora`) VALUES
(1, 'Willian', 'williansalesgabriel@hotmail.com', 'f8bf5f221cef51838766c7e8348bf5da', '2019-08-04', '02:46:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
