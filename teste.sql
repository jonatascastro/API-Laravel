-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 11-Maio-2023 às 20:08
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta_oferta_credito`
--

DROP TABLE IF EXISTS `consulta_oferta_credito`;
CREATE TABLE IF NOT EXISTS `consulta_oferta_credito` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instituicao` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codModaLidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `consulta_oferta_credito_cnpj_unique` (`cnpj`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `consulta_oferta_credito`
--

INSERT INTO `consulta_oferta_credito` (`id`, `cnpj`, `instituicao`, `codModaLidade`, `modalidade`, `created_at`, `updated_at`) VALUES
(1, '12456756454', 'banco 01', '1', 'credito', NULL, NULL),
(2, '45878796412', 'Banco nordeste', '2', 'Declaracao de imposto de renda da empresa', NULL, NULL),
(3, '5646578954564', 'banco safra', '3', 'Relatório de faturamento', NULL, NULL),
(4, '3568798544', 'banco agro', '4', 'Contrato social (caso seja EPP ou ME)', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_05_10_231342_create_credito', 1),
(5, '2023_05_10_233919_create_cliente', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `simula_oferta_credito`
--

DROP TABLE IF EXISTS `simula_oferta_credito`;
CREATE TABLE IF NOT EXISTS `simula_oferta_credito` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cpf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instituicao_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codModaLidade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QntParcelaMin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QntParcelaMAx` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorMin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorMax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jurosMes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `simula_oferta_credito_cpf_unique` (`cpf`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `simula_oferta_credito`
--

INSERT INTO `simula_oferta_credito` (`id`, `cpf`, `instituicao_id`, `codModaLidade`, `QntParcelaMin`, `QntParcelaMAx`, `valorMin`, `valorMax`, `created_at`, `updated_at`, `jurosMes`) VALUES
(1, '12345678912', '1', '1', '4', '12', '700', '2000', NULL, NULL, '5'),
(2, '111111111111', '2', '2', '20', '60', '300', '1500', NULL, NULL, '6'),
(3, '44444444444', '3', '3', '100', '200', '650', '1200', NULL, NULL, '4'),
(4, '55555555555', 'Banco MG', '4', '25', '36', '400', '1600', NULL, NULL, '3'),
(5, '66666666666', 'Banco pague menos', '5', '80', '96', '700', '900', NULL, NULL, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
