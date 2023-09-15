-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 15 sep. 2023 à 17:29
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cnts_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `donneurs`
--

CREATE TABLE `donneurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `groupe_sanguin` varchar(255) NOT NULL,
  `rhesus` varchar(255) NOT NULL,
  `rdv` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `donneurs`
--

INSERT INTO `donneurs` (`id`, `nom`, `prenom`, `contact`, `adresse`, `groupe_sanguin`, `rhesus`, `rdv`, `created_at`, `updated_at`) VALUES
(4, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 12:05:52', '2023-09-15 13:55:15'),
(5, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 12:09:13', '2023-09-15 12:09:13'),
(6, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:01', '2023-09-15 14:39:01'),
(7, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:08', '2023-09-15 14:39:08'),
(8, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:09', '2023-09-15 14:39:09'),
(9, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:09', '2023-09-15 14:39:09'),
(10, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:11', '2023-09-15 14:39:11'),
(11, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:12', '2023-09-15 14:39:12'),
(12, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:13', '2023-09-15 14:39:13'),
(13, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:15', '2023-09-15 14:39:15'),
(14, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:25', '2023-09-15 14:39:25'),
(15, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:27', '2023-09-15 14:39:27'),
(16, 'BANE', 'Alpha', 96696324, 'Djelibougou', 'A', 'positif', '2024-05-14 00:00:00', '2023-09-15 14:39:28', '2023-09-15 14:39:28');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_15_102354_create_donneurs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `donneurs`
--
ALTER TABLE `donneurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `donneurs`
--
ALTER TABLE `donneurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
