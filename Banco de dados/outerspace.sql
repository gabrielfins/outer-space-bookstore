-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Out-2018 às 04:11
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outerspace`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

DROP TABLE IF EXISTS `editoras`;
CREATE TABLE IF NOT EXISTS `editoras` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`cod`, `nome`, `cnpj`, `endereco`, `cidade`, `estado`, `email`) VALUES
(7, 'Bloomsbury', '00.000.000/0000-02', 'Av. Rio Amazonas', 'Manaus', 'Amazonas', 'bloomsbury@contato.com'),
(6, 'Moderna', '00.000.000/0000-01', 'Av. Rio Pavuna', 'Rio de Janeiro', 'Rio de Janeiro', 'moderna@contato.com'),
(9, 'Companhia Das Letras', '00.000.000/0000-04', 'Av. Rio Tiête', 'São Paulo', 'São Paulo', 'companhiadasletras@contato.com'),
(8, 'Zahar', '00.000.000/0000-03', 'Av. Rio São Francisco', 'Salvador', 'Bahia', 'zahar@contato.com'),
(10, 'Jardim dos Livros', '00.000.000/0000-05', 'Av. Rio Paraná', 'Curitiba', 'Paraná', 'jardimdoslivros@contato.com'),
(11, 'Companhia de Bolso', '00.000.000/0000-06', 'Av. Rio Tocantins', 'Palmas', 'Tocantins', 'companhiadebolso@contato.com'),
(12, 'Rocco', '00.000.000/0000-07', 'Av. Rio Araguaia', 'Goiânia', 'Goiás', 'rocco@contato.com'),
(13, 'Via Leitura', '00.000.000/0000-08', 'Av. Rio Madeira', 'Porto Velho', 'Rondônia', 'vialeitura@contato.com'),
(14, 'Casa da Palavra', '00.000.000/0000-09', 'Av. Rio Xingu', 'Cuiabá', 'Mato Grosso', 'casadapalavra@contato.com'),
(15, 'Planeta', '00.000.000/0000-10', 'Av. Rio Iguaçu', 'Londrina', 'Paraná', 'planeta@contato.com'),
(16, 'Martin Claret', '00.000.000/0000-11', 'Av. Rio Paraíba do Sul', 'João Pessoa', 'Paraíba', 'martinclaret@contato.com'),
(17, 'V&R', '00.000.000/0000-12', 'Av. Rio Juruá', 'Rio Branco', 'Acre', 'v&r@contato.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `cod` int(10) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `salario` double NOT NULL,
  `nascimento` date NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `apelido` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`cod`, `endereco`, `bairro`, `cep`, `cidade`, `estado`, `salario`, `nascimento`, `cpf`, `email`, `apelido`, `telefone`, `nome`, `nivel`) VALUES
(1, 'Rua das Flores, 120', 'Centro', '20000-000', 'Rio de Janeiro', 'Rio de Janeiro', 5500, '1990-05-15', '111.111.111-11', 'carlos@example.com', 'Carlos', '(21) 99999-0000', 'Carlos Almeida', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `gênero` varchar(20) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `capa` varchar(300) DEFAULT NULL,
  `editora` varchar(30) NOT NULL,
  `ano` varchar(20) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`cod`, `nome`, `gênero`, `autor`, `capa`, `editora`, `ano`) VALUES
(15, 'O Príncipe', 'Não ficção', 'Nicolau Maquiavel', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa O Príncipe.jpg', 'Companhia Das Letras', '1513'),
(14, 'Harry Potter and the Philosopher\'s Stone', 'Fantasia e Fantasia ', 'J. K. Rowling', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa Harry Potter.jpg', 'Bloomsbury', '1997'),
(13, 'Viagem ao Centro da Terra', 'Ficcção Científica', 'Jules Verne', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa Viagem ao Centro da Terra.jpg', 'Zahar', '1864'),
(12, 'Dom Casmurro', 'Realismo Literário', 'Machado de Assis', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa Dom Casmurro.jpg', 'Moderna', '1900'),
(16, '20 Mil Léguas Submarinas', 'Ficcção Científica', 'Jules Verne', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa 20 mil léguas.jpg', 'Zahar', '1871'),
(17, 'O Visconde Partido ao Meio', 'Ficcção Científica', 'Italo Calvino', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa O Visconde.jpg', 'Companhia de Bolso', '1952'),
(18, 'A Arte da Guerra', 'Ficcção Científica', 'Sun Tzu', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa a arte da guerra.jpg', 'Jardim dos Livros', '1772'),
(19, 'As Vantagens de Ser Invisível', 'Romance', 'Stephen Chbosky', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\Capa as vantagens.png', 'Companhia de Bolso', '2012'),
(20, 'Minha Vida de Menina', 'Biografia', 'Helena Morley', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\capa minha vida de menina.jpg', 'Companhia de Bolso', '1942'),
(21, 'A Origem das Espécies', 'Ciência', 'Charles Darwin', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\capa a origem.jpg', 'Martin Claret', '1859'),
(22, 'A Volta ao Mundo em 80 Dias', 'Ficcção Científica', 'Jules Verne', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\capa a volta ao mundo.jpg', 'Via Leitura', '1873'),
(23, 'O Universo em Suas Mãos', 'Ciência', 'Christophe Galfard', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\capa o universo.png', 'Casa da Palavra', '2016'),
(24, 'Origens', 'Ciência', 'Neil deGrasse Tyson', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\capa origens.jpg', 'Planeta', '2004'),
(25, 'Diário de um Banana', 'Literatura Infanto-J', 'Jeff Kinney', 'C:\\Users\\gfigu\\Documents\\Projetos de Programas\\Projetos Delphi\\Outer Space Project 2.1 9-10\\Projeto\\Win32\\Debug\\Fotos oficiais\\capa diario de um banana.jpg', 'V&R', '2007');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
