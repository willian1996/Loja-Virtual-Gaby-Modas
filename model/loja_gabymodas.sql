-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 27-Jul-2019 às 21:14
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_clientes`
--

INSERT INTO `gm_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(12, 'Willian', 'Sales Gabriel', 'Rua Cleusa Fátima dos Santos, 62', '62', 'Pegorelli', 'Ubatuba', NULL, '11669309', '43593584824', NULL, '12', '38894092', '996417887', 'williansalesgabriel@hotmail.com', 'f8bf5f221cef51838766c7e8348bf5da', NULL, '2019-07-26', '06:41:18'),
(13, 'Marcos ', 'Felipe ', 'Rua Safira ', '62', 'Pegorelli', 'Caraguatatuba', NULL, '11669309', '45678912358', NULL, '12', '38834092', '996418789', 'williansales@hotmail.com', '6b195350366f7a3e387446ebfc77a9ca', NULL, '2019-07-27', '13:10:36'),
(14, 'Reagiane ', 'de Olievira', 'Rua Freitas', '30', 'Topolandia', 'Sao Sebastiao', NULL, '11669309', '43595985858', NULL, '12', '38894092', '996418888', 'regiane@gmail.com', '8517ee9eab4a82138f0d9ba6da22f590', NULL, '2019-07-27', '14:08:37');

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

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
(53, '2019-07-26', '16:31:05', 12, '19072616070312', '19072616070312', NULL, NULL, NULL, NULL, 112.40, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

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
(56, 7, 49.90, 1, '19072616070312');

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
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `pro_slug` varchar(100) NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) NOT NULL,
  `pro_ref` varchar(100) NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) NOT NULL,
  `pro_frete_gratis` varchar(100) NOT NULL DEFAULT 'Não',
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_produtos`
--

INSERT INTO `gm_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_gratis`) VALUES
(8, 5, 'Blusa Moletom adidas ', 'Blusa de moletom confortável inspirada no estilo esportivo. Um contrastante logo simples da adidas na frente adiciona um look autêntico. O pulôver é confeccionado em algodão e poliéster reciclado para um toque de maciez.', 0.050, 89.90, 1, 1, 1, 'blusa-adidas.jpg', 'blusa-adidas-moletom', 1, '4', '5', 6, '1', 'Não'),
(7, 4, 'Calça Camuflada Feminina', '', 0.050, 49.90, 55, 15, 56, 'calca-camuflada.jpg', 'calca-camuflada-feminina', 2, '2', '2', 1, '1', 'Não'),
(6, 4, 'Calça Couro Sintetico', 'CLARA MORENA -\r\n\r\n> Calça Couro Fake Cós de Moletom\r\n\r\n+ Composição: 96% Poliéster - 4% Elastano\r\n\r\nP veste até 96cm de quadril, M até 104cm e G até 108cm.\r\n\r\nAconselhamos comprar seu tamanho usual.\r\nConosco você compra tecidos de qualidade e acabamento impecável.\r\nEnviamos em até 1 dia útil após a confirmação do pagamento.\r\n\r\nTodos os nossos produtos acompanham Nota Fiscal.', 0.090, 79.90, 1, 1, 1, 'calca-de-coro.jpg', 'calca-de-coro-preta', 10, '1', '1', 1, '1', 'Não'),
(5, 3, 'Vestido Azul ', 'Vestido Manga Longa Estampa Étnica Código do produto: 1496734\r\nObservação: Elástico na cintura\r\nTecido: Helanca\r\nComposição: 100% poliéster', 0.060, 89.90, 1, 1, 1, 'vestido-azul.jpg', 'vestido-azul', 12, '456', '456', 5889, '1', 'Não'),
(3, 3, 'Vestido Zebrado ', 'Vestido Manga Longa Estampa Étnica Código do produto: 1496734\r\nObservação: Elástico na cintura\r\nTecido: Helanca\r\nComposição: 100% poliéster', 0.100, 45.90, 1, 1, 1, 'vestidod-zebrado.jpg', 'vestido-zebrado', 4, '456', '458', 4, '1', 'Não'),
(4, 3, 'Vestido Cores', 'Vestido Manga Longa Estampa Étnica Código do produto: 1496734\r\nObservação: Elástico na cintura\r\nTecido: Helanca\r\nComposição: 100% poliéster', 0.060, 49.90, 0, 0, 0, 'vestido-cores.jpg', 'vestido-cores', 6, '456', 'ddds', 12, '1', 'Não'),
(9, 6, 'Saia Roxa  ', '', 0.045, 56.00, 1, 1, 1, 'saia-roxa.jpg', 'saia-roxa', 1, '125', '5666', 5522, '1', 'Não');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
