-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 29-Jul-2019 às 21:39
-- Versão do servidor: 5.7.21
-- PHP Version: 7.2.4

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
-- Estrutura da tabela `gm_categorias`
--

DROP TABLE IF EXISTS `gm_categorias`;
CREATE TABLE IF NOT EXISTS `gm_categorias` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_nome` varchar(50) NOT NULL,
  `cate_slug` varchar(50) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
  `cli_bairro` varchar(80) NOT NULL,
  `cli_cidade` varchar(150) NOT NULL,
  `cli_uf` varchar(11) DEFAULT NULL,
  `cli_cep` varchar(10) NOT NULL,
  `cli_cpf` varchar(12) NOT NULL,
  `cli_rg` int(11) DEFAULT NULL,
  `cli_ddd` varchar(2) NOT NULL,
  `cli_fone` varchar(12) NOT NULL,
  `cli_celular` varchar(12) NOT NULL,
  `cli_email` varchar(150) NOT NULL,
  `cli_pass` varchar(150) NOT NULL,
  `cli_data_nasc` date DEFAULT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_clientes`
--

INSERT INTO `gm_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(16, 'Willian', 'Gabriel', 'Rua Cleusa Fátima dos Santos, 62', '62', 'Pegorelli', 'Caraguatatuba', NULL, '11669309', '43593584824', NULL, '12', '38894092', '996417887', 'williansalesgabriel@hotmail.com', 'f8bf5f221cef51838766c7e8348bf5da', NULL, '2019-07-28', '02:10:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gm_imagens`
--

DROP TABLE IF EXISTS `gm_imagens`;
CREATE TABLE IF NOT EXISTS `gm_imagens` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_nome` varchar(50) NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_imagens`
--

INSERT INTO `gm_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'vestido-zebrado2.jpg', 3, ''),
(2, 'vestido-zebrado3.jpg', 3, '');

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
  `ped_pag_status` varchar(20) DEFAULT NULL,
  `ped_pag_forma` varchar(20) DEFAULT NULL,
  `ped_pag_tipo` varchar(20) DEFAULT NULL,
  `ped_pag_codigo` varchar(220) DEFAULT NULL,
  `ped_frete_valor` double(9,2) DEFAULT NULL,
  `ped_frete_tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ped_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos`
--

INSERT INTO `gm_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(46, '2019-07-22', '07:24:32', 1, '1907220707301', '1907220707301', NULL, NULL, NULL, NULL, 112.40, NULL),
(45, '2019-07-22', '05:41:29', 1, '1907220507271', '1907220507271', NULL, NULL, NULL, NULL, 112.40, NULL),
(44, '2019-07-21', '09:28:34', 1, '1907210907321', '1907210907321', NULL, NULL, NULL, NULL, 115.80, NULL),
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
(47, '2019-07-23', '07:05:08', 1, '1907230707051', '1907230707051', NULL, NULL, NULL, NULL, 115.80, NULL),
(48, '2019-07-24', '04:24:20', 1, '1907240407181', '1907240407181', NULL, NULL, NULL, NULL, 115.80, NULL),
(49, '2019-07-26', '07:25:02', 1, '19072607070012', '19072607070012', NULL, NULL, NULL, NULL, 115.80, NULL),
(50, '2019-07-26', '07:45:34', 1, '19072607073212', '19072607073212', NULL, NULL, NULL, NULL, 115.80, NULL),
(51, '2019-07-26', '07:48:13', 12, '19072607071212', '19072607071212', NULL, NULL, NULL, NULL, 115.80, NULL),
(52, '2019-07-26', '07:50:23', 12, '19072607072112', '19072607072112', NULL, NULL, NULL, NULL, 115.80, NULL),
(53, '2019-07-26', '16:31:05', 12, '19072616070312', '19072616070312', NULL, NULL, NULL, NULL, 112.40, NULL),
(54, '2019-07-28', '02:59:58', 16, '19072802075616', '19072802075616', NULL, NULL, NULL, NULL, 112.40, NULL),
(55, '2019-07-28', '03:24:22', 16, '19072803072016', '19072803072016', NULL, NULL, NULL, NULL, 112.40, NULL),
(56, '2019-07-28', '03:33:44', 16, '19072803074316', '19072803074316', NULL, NULL, NULL, NULL, 112.40, NULL),
(57, '2019-07-28', '04:46:50', 16, '19072804074716', '19072804074716', NULL, NULL, NULL, NULL, 112.40, NULL),
(58, '2019-07-28', '21:55:44', 16, '19072821074116', '19072821074116', NULL, NULL, NULL, NULL, 112.40, NULL),
(59, '2019-07-29', '16:22:15', 16, '19072916071216', '19072916071216', NULL, NULL, NULL, NULL, 112.40, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

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
(65, 5, 89.90, 1, '19072916071216');

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
  `pro_ativo` char(1) NOT NULL,
  `pro_frete_gratis` varchar(100) NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_produtos`
--

INSERT INTO `gm_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_gratis`) VALUES
(8, 5, 'Blusa Moletom adidas ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.050, 89.90, 1, 1, 1, 'blusa-adidas.jpg', 'blusa-adidas-moletom', 1, '4', '5', 6, '1', 'Não'),
(7, 4, 'Calça Camuflada Feminina', '', 0.050, 49.90, 55, 15, 56, 'calca-camuflada.jpg', 'calca-camuflada-feminina', 2, '2', '2', 1, '1', 'Não'),
(6, 4, 'Calça Couro Sintetico', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.090, 79.90, 1, 1, 1, 'calca-de-coro.jpg', 'calca-de-coro-preta', 10, '1', '1', 1, '1', 'Não'),
(5, 3, 'Vestido Azul ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.060, 89.90, 1, 1, 1, 'vestido-azul.jpg', 'vestido-azul', 12, '456', '456', 5889, '1', 'Não'),
(3, 3, 'Vestido Zebrado ', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.100, 45.90, 1, 1, 1, 'vestidod-zebrado.jpg', 'vestido-zebrado', 4, '456', '458', 4, '1', 'Não'),
(4, 3, 'Vestido Cores', '<b>OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</b><br><br>\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega<br><br>\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.<br>\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br>\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br>\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.<br><br>\r\n\r\n            <i>Aceitamos cartões com 5% de acréscimo</i><br><br>\r\n\r\n            ', 0.060, 49.90, 0, 0, 0, 'vestido-cores.jpg', 'vestido-cores', 6, '456', 'ddds', 12, '1', 'Não'),
(9, 6, 'Saia Roxa  ', '', 0.045, 56.00, 1, 1, 1, 'saia-roxa.jpg', 'saia-roxa', 1, '125', '5666', 5522, '1', 'Não'),
(11, 6, 'Saia Jeans ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.500, 99.99, 10, 10, 10, 'saia-jeans.jpg', 'saia-jeans', 10, 'asddff', '45522', NULL, '1', 'Não'),
(13, 7, 'Short Jeans ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.500, 99.99, 10, 10, 10, 'shorts-jeans.jpg', 'short-jeans', 10, 'asddff', '45522', NULL, '1', 'Não'),
(14, 2, 'Camisa Manga Comprida ', '            OS PEDIDOS SERÃO SEPARADOS NA PRÓXIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)\r\n\r\n            ->ATENÇÃO CONSULTAR A DATA DE ENTREGA ANTES DE FINALIZAR O PEDIDO\r\n            ->NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.\r\n            ->NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.\r\n            ->NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.\r\n            ->NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.\r\n\r\n            Aceitamos cartões com 5% de acréscimo\r\n\r\n            Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento será feito no momento da entrega\r\n            ', 0.059, 69.90, 10, 10, 10, 'camisa-manga-comprida.jpg', 'camisa-manga-comprida', 10, 'sssdf', 'ddfff', NULL, '1', 'Não'),
(15, 3, 'Vestido Vermelho ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 49.90, 10, 10, 10, 'vestido-vermelho.jpg', 'vestido-vermelho', 10, 'asddff', '45522', NULL, '1', 'Não'),
(17, 4, 'Calca Jeans', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.500, 49.90, 10, 10, 10, '190729160428calca-jeans.jpg.jpg', 'calca-jeans', 10, 'asddff', '45522', NULL, '1', 'Não'),
(16, 2, 'Conjunto Short e Blusa', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.059, 45.90, 10, 10, 10, '190729154509conjunto.jpg.jpg', 'conjunto-short-e-blusa', 10, 'asddff', '45522', NULL, '1', 'Não'),
(21, 4, 'Calca Jeans', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.500, 99.90, 10, 10, 10, '190729161710calca-jeans.jpg.jpg', 'calca-jeans', 10, 'asddff', '45522', NULL, '1', 'Não'),
(22, 3, 'Vestido Preto ', '<p><strong>OS PEDIDOS SER&Atilde;O SEPARADOS NA PR&Oacute;XIMA SEGUNDA-FEIRA (PAGAMENTO NA ENTREGA)</strong><br /><br />Por favor consulte a data de entrega antes de finalizar seu pedido porque o pagamento ser&aacute; feito no momento da entrega<br /><br />-&gt;NA PR&Oacute;XIMA QUARTA-FEIRA ENTREGAREMOS EM S&Atilde;O SEBASTI&Atilde;O.<br />-&gt;NA PR&Oacute;XIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.<br />-&gt;NA PR&Oacute;XIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.<br />-&gt;NO PR&Oacute;XIMO S&Aacute;BADO ENTREGAREMOS NA COSTA SUL DE S&Atilde;O SEBASTI&Atilde;O AT&Eacute; BORAC&Eacute;IA.<br /><br /><em>Aceitamos cart&otilde;es com 5% de acr&eacute;scimo</em><br /><br /></p>', 0.050, 89.90, NULL, NULL, NULL, '190729175359vestido-preto.jpg.jpg', 'vestido-preto', 10, NULL, '45662255', NULL, '1', 'Não');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
