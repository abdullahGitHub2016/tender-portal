-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: tender_portal
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bids` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tender_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `quoted_amount` decimal(15,2) NOT NULL,
  `document_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bids_tender_id_foreign` (`tender_id`),
  KEY `bids_user_id_foreign` (`user_id`),
  CONSTRAINT `bids_tender_id_foreign` FOREIGN KEY (`tender_id`) REFERENCES `tenders` (`id`),
  CONSTRAINT `bids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES (1,1,8,108307.94,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:53','2025-12-23 22:47:53'),(2,1,9,846848.26,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:53','2025-12-23 22:47:53'),(3,1,10,131731.12,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:53','2025-12-23 22:47:53'),(4,2,11,937394.14,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(5,2,12,499990.76,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(6,2,13,505699.14,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(7,3,14,792640.68,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(8,3,15,983625.35,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(9,3,16,466577.06,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(10,4,17,896716.36,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(11,4,18,921520.99,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(12,4,19,657475.78,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(13,5,20,654492.95,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(14,5,21,241938.77,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(15,5,22,240976.38,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(16,6,23,89097.60,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(17,6,24,87734.32,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(18,6,25,979901.16,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(19,7,26,189417.64,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(20,7,27,625267.13,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(21,7,28,694745.85,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(22,8,29,768097.21,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(23,8,30,233781.14,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(24,8,31,695125.68,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(25,9,32,880465.45,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(26,9,33,203100.40,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(27,9,34,281830.21,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(28,10,35,997919.39,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(29,10,36,169793.56,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(30,10,37,577699.81,'tenders/bids/sample_bid.pdf','2025-12-23 22:47:54','2025-12-23 22:47:54');
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-ghayes@example.or|127.0.0.1','i:1;',1769507604),('laravel-cache-ghayes@example.or|127.0.0.1:timer','i:1769507604;',1769507604);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_12_23_083101_create_permission_tables',1),(5,'2025_12_23_083614_create_tenders_table',1),(6,'2025_12_23_083710_create_bids_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',2),(2,'App\\Models\\User',3),(2,'App\\Models\\User',4),(2,'App\\Models\\User',5),(2,'App\\Models\\User',6),(2,'App\\Models\\User',7);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'create tenders','web','2025-12-23 22:47:53','2025-12-23 22:47:53'),(2,'edit tenders','web','2025-12-23 22:47:53','2025-12-23 22:47:53'),(3,'submit bids','web','2025-12-23 22:47:53','2025-12-23 22:47:53'),(4,'view all bids','web','2025-12-23 22:47:53','2025-12-23 22:47:53');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(4,1),(3,2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Navy Admin','web','2025-12-23 22:47:53','2025-12-23 22:47:53'),(2,'Supplier','web','2025-12-23 22:47:53','2025-12-23 22:47:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('82IkKsCjSZRsDCCRroi0y60SFRKXj9tckGi1z1jV',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibTJHRkkwdGV1c0ZLVXRRVWlLZDVlVEY2T2k0Uk1XTmpyZjFYMHR3biI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1766559402),('gDUiPIuvuxw1aCUSjcz4bOxifD52Nq8iVXXPEBzZ',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0pIWHlZSkp0QzhBaEl3bk9uaGNUT2dzN3VRRWluMjV1TWVxOG1MViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1766822413),('KWoISe804wY3VaKZ5frqn2M7xwzwFpYmDlA2ifmk',2,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoidUR3WnY3dDQ0UUNTcFJubUdoTXlwS1hXTGYxNkIwcUc2TTlrc0I2bSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90ZW5kZXJzIjtzOjU6InJvdXRlIjtzOjEzOiJ0ZW5kZXJzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1769507808);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenders`
--

DROP TABLE IF EXISTS `tenders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tender_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_date` datetime NOT NULL,
  `status` enum('open','closed','processing') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenders_tender_no_unique` (`tender_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenders`
--

LOCK TABLES `tenders` WRITE;
/*!40000 ALTER TABLE `tenders` DISABLE KEYS */;
INSERT INTO `tenders` VALUES (1,'NSSD/2025/aa-1820','Dolore qui sint reiciendis impedit. Procurement','Quia omnis voluptatem nisi aut tempora saepe autem. Laudantium aliquam quo sit adipisci ut eum nulla. Eveniet consequatur rerum error error.','2025-12-25 10:29:40','open','2025-12-23 22:47:53','2025-12-23 22:47:53',NULL),(2,'NSSD/2025/hx-7077','Deleniti et quam et. Procurement','Possimus aut debitis blanditiis voluptatem voluptas accusamus consequatur. Qui non ab illo minus debitis dicta. Laborum nihil nihil et exercitationem. Necessitatibus voluptate possimus voluptatem sit.','2026-01-15 06:17:15','open','2025-12-23 22:47:53','2025-12-23 22:47:53',NULL),(3,'NSSD/2025/cc-5113','Voluptatem quibusdam qui et deleniti. Procurement','Culpa blanditiis voluptas magni qui officiis cum magni. Fugit eos officiis harum sunt id amet ut. Est modi voluptate qui libero quaerat.','2025-12-31 11:17:25','open','2025-12-23 22:47:54','2025-12-23 22:50:12','2025-12-23 22:50:12'),(4,'NSSD/2025/cy-8979','Porro sint animi est. Procurement','Explicabo debitis in iusto earum reprehenderit nobis eveniet. In necessitatibus provident dolorem repellat magni. Quos itaque nostrum ad qui voluptatem est eum quisquam. Non excepturi doloremque laudantium quaerat.','2026-01-15 09:26:33','open','2025-12-23 22:47:54','2025-12-23 23:01:49','2025-12-23 23:01:49'),(5,'NSSD/2025/nu-8178','Omnis autem et sit. Procurement','Quia dolorum dolores recusandae sit assumenda tempore. Ea illo omnis modi saepe. Quidem voluptatem eaque culpa et dolores ipsa. Sit possimus reiciendis et voluptatum saepe deleniti hic.','2025-12-26 22:32:26','open','2025-12-23 22:47:54','2025-12-23 22:47:54',NULL),(6,'NSSD/2025/af-9835','Expedita ducimus consequatur sed. Procurement','Ipsam id neque sunt non reprehenderit est. Itaque rerum repellat iure quam quas. Veniam debitis animi temporibus quia fugit aut.','2026-01-01 00:05:40','open','2025-12-23 22:47:54','2025-12-23 22:47:54',NULL),(7,'NSSD/2025/cc-5566','Vitae excepturi sed incidunt sit voluptatem. Procurement','Et ad nesciunt eum magnam voluptate nemo. Dolore tempore exercitationem est dolorum perspiciatis et. Quo exercitationem impedit iure odit et ut non.','2026-01-17 15:41:49','open','2025-12-23 22:47:54','2025-12-23 22:47:54',NULL),(8,'NSSD/2025/be-4915','Sint voluptatem expedita. Procurement','Aut porro ea eos laboriosam in. Et placeat suscipit consequatur placeat veritatis. Iste beatae est cum saepe. Dolor dicta minima vel aut voluptas.','2026-01-13 06:17:24','open','2025-12-23 22:47:54','2025-12-23 22:47:54',NULL),(9,'NSSD/2025/ls-7199','Similique dolor et omnis occaecati voluptas. Procurement','Voluptatem repudiandae perspiciatis animi nesciunt incidunt eius. Et aliquam sequi id ea repellat dolores ea. Et aut sit temporibus et velit voluptatum. Quia odio et et.','2026-01-13 04:44:49','open','2025-12-23 22:47:54','2025-12-23 22:47:54',NULL),(10,'NSSD/2025/pf-1249','Similique laudantium nihil molestias. Procurement','Velit nesciunt laboriosam consequatur voluptatem. Ut eaque aut voluptatum excepturi voluptas possimus. Consequatur nemo aut tenetur. Harum corrupti pariatur velit nobis.','2025-12-28 12:54:20','open','2025-12-23 22:47:54','2025-12-23 22:47:54',NULL);
/*!40000 ALTER TABLE `tenders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','dnxVaf5tqS','2025-12-23 22:47:53','2025-12-23 22:47:53'),(2,'Admin Officer','admin@example.com','2025-12-23 22:47:53','$2y$12$mXkVI4nHKWYVelyNpjaxp.vgYYPLaJX3xxtuNh.1oedKdcrZ7QfA.','N9iqoBwJjLrw94DkDx5Z4NuJyNHSY3mDhQDsq9xl7rosHC7JdkQIMSxLprf5','2025-12-23 22:47:53','2026-01-27 03:55:53'),(3,'Dr. Bennett Paucek','ghayes@example.org','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','FAqsjMv2ec','2025-12-23 22:47:53','2025-12-23 22:47:53'),(4,'Leo Pfeffer','noconner@example.org','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','Gs1zbm6AJF','2025-12-23 22:47:53','2025-12-23 22:47:53'),(5,'Antoinette Boyle','shyanne67@example.com','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','i94YVCESRa','2025-12-23 22:47:53','2025-12-23 22:47:53'),(6,'Mr. Mckenna Lind','johns.gust@example.net','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','KVZ2eyLMfW','2025-12-23 22:47:53','2025-12-23 22:47:53'),(7,'Angelo Swaniawski','lynch.delpha@example.net','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','mS6Vk6foV8','2025-12-23 22:47:53','2025-12-23 22:47:53'),(8,'Kyla Swaniawski Jr.','roger74@example.com','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','kAjndqonbv','2025-12-23 22:47:53','2025-12-23 22:47:53'),(9,'Joanny McDermott IV','jovan.rolfson@example.com','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','fsm8SiSq32','2025-12-23 22:47:53','2025-12-23 22:47:53'),(10,'Mr. Frankie Russel','duncan.kunze@example.net','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','vu71TAyZub','2025-12-23 22:47:53','2025-12-23 22:47:53'),(11,'Myles Strosin','roberta.abbott@example.com','2025-12-23 22:47:53','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','GMgLnI5DVy','2025-12-23 22:47:53','2025-12-23 22:47:53'),(12,'Prof. Elmira Schiller MD','toreilly@example.com','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','3nMSwwZT8A','2025-12-23 22:47:54','2025-12-23 22:47:54'),(13,'Dr. Dario Hahn IV','johnathan90@example.com','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','SU1wcjQRwf','2025-12-23 22:47:54','2025-12-23 22:47:54'),(14,'Pasquale Murphy','janessa.becker@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','ZJIzMzzXPo','2025-12-23 22:47:54','2025-12-23 22:47:54'),(15,'Ms. Lulu Daugherty I','chelsea13@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','qZpyMtiGhm','2025-12-23 22:47:54','2025-12-23 22:47:54'),(16,'Brando Beer','bednar.mose@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','kiApaQ7aK4','2025-12-23 22:47:54','2025-12-23 22:47:54'),(17,'Susie Konopelski','judy15@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','wz77Sg2gPs','2025-12-23 22:47:54','2025-12-23 22:47:54'),(18,'Antonetta Yundt','carter.daren@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','ouL3Ns9QJW','2025-12-23 22:47:54','2025-12-23 22:47:54'),(19,'Florencio Casper','yasmeen94@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','qxZBSjIkdy','2025-12-23 22:47:54','2025-12-23 22:47:54'),(20,'Kylie Beatty','imaggio@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','JCPfanqZSe','2025-12-23 22:47:54','2025-12-23 22:47:54'),(21,'Alana Larson','bechtelar.sterling@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','PPXU1QJSbG','2025-12-23 22:47:54','2025-12-23 22:47:54'),(22,'Jeremy Heidenreich','rcarroll@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','qNtezrMuzM','2025-12-23 22:47:54','2025-12-23 22:47:54'),(23,'Tremaine Moore Jr.','nparker@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','KKFKBuhGuw','2025-12-23 22:47:54','2025-12-23 22:47:54'),(24,'Bud Pouros','boris03@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','Y33F1jsAbc','2025-12-23 22:47:54','2025-12-23 22:47:54'),(25,'Roel Mayert','cruz16@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','xRBcz2MEiP','2025-12-23 22:47:54','2025-12-23 22:47:54'),(26,'Ryan Johns II','mschneider@example.com','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','9VPBugvGll','2025-12-23 22:47:54','2025-12-23 22:47:54'),(27,'Abby Ebert','wkoepp@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','QaFR5o9ja6','2025-12-23 22:47:54','2025-12-23 22:47:54'),(28,'Chasity Lynch','norbert66@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','SkABFbCibG','2025-12-23 22:47:54','2025-12-23 22:47:54'),(29,'Drake Batz','uweimann@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','JM44TtmcQE','2025-12-23 22:47:54','2025-12-23 22:47:54'),(30,'Leonardo Towne','koelpin.alfredo@example.com','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','Qc8Oi8ebw3','2025-12-23 22:47:54','2025-12-23 22:47:54'),(31,'Isaiah D\'Amore','cbogan@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','pu69jcEwC0','2025-12-23 22:47:54','2025-12-23 22:47:54'),(32,'Dr. Elmo Kub II','deonte74@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','CP9wR4Osma','2025-12-23 22:47:54','2025-12-23 22:47:54'),(33,'Clarabelle Stroman','arnoldo49@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','9qTmyuQYia','2025-12-23 22:47:54','2025-12-23 22:47:54'),(34,'Constance Schuppe','klocko.olga@example.org','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','yHaWPTjR0n','2025-12-23 22:47:54','2025-12-23 22:47:54'),(35,'Corbin Bayer','lfritsch@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','IYCUW230sT','2025-12-23 22:47:54','2025-12-23 22:47:54'),(36,'Hayden Lindgren IV','jovany.kiehn@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','n7K6buWHJZ','2025-12-23 22:47:54','2025-12-23 22:47:54'),(37,'Turner Nikolaus','gerhard95@example.net','2025-12-23 22:47:54','$2y$12$CsBXQGeFjOh2RkMohLHrSeYNx0o82PXoUaRDa8Bhnu/BLBAXNFjLC','YAsnAViUIz','2025-12-23 22:47:54','2025-12-23 22:47:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-27 15:57:12
