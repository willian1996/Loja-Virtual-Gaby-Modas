-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 17-Jul-2019 às 17:12
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
  `cli_uf` varchar(11) NOT NULL,
  `cli_cep` varchar(10) NOT NULL,
  `cli_cpf` varchar(12) NOT NULL,
  `cli_rg` int(11) NOT NULL,
  `cli_ddd` varchar(2) NOT NULL,
  `cli_fone` varchar(12) NOT NULL,
  `cli_celular` varchar(12) NOT NULL,
  `cli_email` varchar(150) NOT NULL,
  `cli_pass` varchar(64) NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_clientes`
--

INSERT INTO `gm_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Willian ', 'Sales Gabriel', 'Rua Cleusa Fatima dos Santos', '30', 'Pegorelli', 'Caraguatatuba', 'SP', '11669309', '43593584824', 420895140, '12', '996417887', '38894092', 'williansalesgabriel@hotmail.com', '123', '1996-01-01', '2019-07-17', '12:11:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos`
--

INSERT INTO `gm_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(14, '2019-07-17', '14:50:01', 1, 'c1b6b7d50551ed5272be77a2fbaf0c17', '0544551ref', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(12, '2019-07-17', '14:39:18', 1, '1234456789', '0544551ref', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(11, '2019-07-17', '14:36:20', 1, '1234456789', '0544551ref', NULL, NULL, NULL, NULL, 22.90, 'pac'),
(13, '2019-07-17', '14:48:01', 1, 'b6c3c28d89b03bcdcefcbaad1977769b', '0544551ref', NULL, NULL, NULL, NULL, 22.90, 'pac');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gm_pedidos_itens`
--

INSERT INTO `gm_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(2, 8, 89.90, 1, '1234456789'),
(3, 8, 89.90, 1, '1234456789'),
(4, 9, 56.00, 1, '1234456789'),
(7, 5, 89.90, 1, 'b6c3c28d89b03bcdcefcbaad1977769b'),
(8, 3, 45.90, 1, 'b6c3c28d89b03bcdcefcbaad1977769b'),
(9, 4, 49.90, 1, 'c1b6b7d50551ed5272be77a2fbaf0c17');

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
(8, 5, 'Blusa Moletom adidas ', 'Blusa de moletom confortável inspirada no estilo esportivo. Um contrastante logo simples da adidas na frente adiciona um look autêntico. O pulôver é confeccionado em algodão e poliéster reciclado para um toque de maciez.', 5.000, 89.90, 1, 1, 1, 'blusa-adidas.jpg', 'blusa-adidas-moletom', 1, '4', '5', 6, '1', 'Não'),
(7, 4, 'Calça Camuflada Feminina', '', 4.000, 49.90, 55, 15, 56, 'calca-camuflada.jpg', 'calca-camuflada-feminina', 2, '2', '2', 1, '1', 'Não'),
(6, 4, 'Calça Couro Sintetico', 'CLARA MORENA -\r\n\r\n> Calça Couro Fake Cós de Moletom\r\n\r\n+ Composição: 96% Poliéster - 4% Elastano\r\n\r\nP veste até 96cm de quadril, M até 104cm e G até 108cm.\r\n\r\nAconselhamos comprar seu tamanho usual.\r\nConosco você compra tecidos de qualidade e acabamento impecável.\r\nEnviamos em até 1 dia útil após a confirmação do pagamento.\r\n\r\nTodos os nossos produtos acompanham Nota Fiscal.', 1.000, 79.90, 1, 1, 1, 'calca-de-coro.jpg', 'calca-de-coro-preta', 10, '1', '1', 1, '1', 'Não'),
(5, 3, 'Vestido Azul ', 'Vestido Manga Longa Estampa Étnica Código do produto: 1496734\r\nObservação: Elástico na cintura\r\nTecido: Helanca\r\nComposição: 100% poliéster', 1.000, 89.90, 1, 1, 1, 'vestido-azul.jpg', 'vestido-azul', 12, '456', '456', 5889, '1', 'Não'),
(3, 3, 'Vestido Zebrado ', 'Vestido Manga Longa Estampa Étnica Código do produto: 1496734\r\nObservação: Elástico na cintura\r\nTecido: Helanca\r\nComposição: 100% poliéster', 0.100, 45.90, 1, 1, 1, 'vestidod-zebrado.jpg', 'vestido-zebrado', 4, '456', '458', 4, '1', 'Não'),
(4, 3, 'Vestido Cores', 'Vestido Manga Longa Estampa Étnica Código do produto: 1496734\r\nObservação: Elástico na cintura\r\nTecido: Helanca\r\nComposição: 100% poliéster', 15.600, 49.90, 0, 0, 0, 'vestido-cores.jpg', 'vestido-cores', 6, '456', 'ddds', 12, '1', 'Não'),
(2, 2, 'Camisa Polo', 'Clássico, moderno e cheio de atitude! A Camisa Social Watkins & Krown é a peça coringa para momentos de grandes decisões. Com caimento soltinho, exibe modelagem clássica com bolso ', 50.500, 60.00, 50, 50, 50, 'camisa.jpg', 'camisa-social', 10, 'modelo 054515', '54789', 566, '1', 'Não'),
(1, 2, 'Camisa Social', ' Camisa Social Manga Longa Watkins & Krown Lisa Masculina acompanha o dia a dia do homem moderno. Com um design básico e alinhado, conta com bolso no detalhe e mangas longas', 15.300, 80.00, 80, 80, 80, '44.jpg', 'camisa-polo', 1, 'modelo01', '25601', 1, '1', 'gratuito'),
(9, 6, 'Saia Roxa  ', '', 1.000, 56.00, 1, 1, 1, 'saia-roxa.jpg', 'saia-roxa', 1, '125', '5666', 5522, '1', 'Não');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
