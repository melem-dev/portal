-- MySQL dump 10.13  Distrib 8.0.28, for macos10.15 (x86_64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'gYA6qc4WPQDOp8PJ3rUt8Kj0RpJI3m6S',1,'2022-06-01 07:37:19','2022-06-01 07:37:19','2022-06-01 07:37:19');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2027-06-01 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(2,'Make your Breakfast','2027-06-01 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(3,'The best Organic','2027-06-01 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(4,'Bring nature into your home','2027-06-01 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(5,'Delivered to your home','2027-06-01 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(6,'Save 17% on Oganic Juice','2027-06-01 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(7,'Everyday Fresh & Clean with Our Products','2027-06-01 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(8,'The best Organic Products Online','2027-06-01 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(9,'Everyday Fresh with Our Products','2027-06-01 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(10,'100% guaranteed all Fresh items','2027-06-01 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(11,'Special grocery sale off this month','2027-06-01 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2022-06-01 07:37:25','2022-06-01 07:37:25'),(12,'Enjoy 15% OFF for all vegetable and fruit','2027-06-01 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2022-06-01 07:37:25','2022-06-01 07:37:25');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Quidem qui ut in id reiciendis voluptates perferendis. Et cumque quibusdam minus quia iure minima velit. Eligendi nihil aut enim.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(2,'Fashion',0,'Hic a sed sed cumque. Et ullam culpa est pariatur dolor enim omnis. Voluptas dicta et odit vel. Voluptas laboriosam beatae voluptate debitis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(3,'Electronic',0,'Odit dolores quaerat voluptatem sint. Suscipit illum reprehenderit sit praesentium sint et harum. Saepe autem possimus qui eaque eos ratione aliquam magnam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(4,'Commercial',0,'Qui nihil quia voluptas explicabo. Dicta ea nisi eos sint qui amet repellendus ducimus. Optio alias maiores laudantium et suscipit et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-06-01 07:37:18','2022-06-01 07:37:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2022-06-01 07:36:12','2022-06-01 07:36:12');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(2,'EUR','€',0,2,1,0,0.84,'2022-06-01 07:36:12','2022-06-01 07:36:12'),(3,'VND','₫',0,0,2,0,23203,'2022-06-01 07:36:12','2022-06-01 07:36:12');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Walter Satterfield','customer@botble.com','+15419254784','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',1,1,'2022-06-01 07:36:50','2022-06-01 07:36:50','20744'),(2,'Walter Satterfield','customer@botble.com','+17475177225','SZ','West Virginia','Gutmannfort','4925 Brekke Underpass Suite 635',1,0,'2022-06-01 07:36:50','2022-06-01 07:36:50','30826-5230'),(3,'Mr. Laverna Kshlerin PhD','vendor@botble.com','+12166605471','FO','Massachusetts','Silasside','4038 Carroll Underpass Apt. 214',2,1,'2022-06-01 07:36:50','2022-06-01 07:36:50','55370-0184'),(4,'Mr. Laverna Kshlerin PhD','vendor@botble.com','+17403758345','SZ','Delaware','Rosemariemouth','7396 Kameron Points',2,0,'2022-06-01 07:36:50','2022-06-01 07:36:50','83060'),(5,'Henriette Orn','stark.walter@example.org','+14849851138','SK','Wisconsin','Gaylordside','4073 Delfina Street Apt. 851',3,1,'2022-06-01 07:36:50','2022-06-01 07:36:50','26104-1956'),(6,'Prof. Misael McKenzie','boyer.pattie@example.net','+14138681338','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',4,1,'2022-06-01 07:36:50','2022-06-01 07:36:50','02785-2829'),(7,'Ms. Alysha Luettgen','breitenberg.tina@example.org','+15018265576','SK','District of Columbia','East Lilianside','1677 Velva Walks',5,1,'2022-06-01 07:36:50','2022-06-01 07:36:50','06763-4121'),(8,'Ursula Gleichner','mnader@example.org','+15202149620','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',6,1,'2022-06-01 07:36:50','2022-06-01 07:36:50','70070'),(9,'Jerrold Wilkinson','fritsch.frank@example.com','+18189926702','BG','Connecticut','New Maevemouth','51293 Lowe Hills Suite 391',7,1,'2022-06-01 07:36:51','2022-06-01 07:36:51','76003'),(10,'Dr. Evangeline Aufderhar','myles35@example.com','+16787823573','US','Alabama','West Joan','3951 Merle River',8,1,'2022-06-01 07:36:51','2022-06-01 07:36:51','96017'),(11,'Esta Kilback PhD','stella.prohaska@example.net','+19292530135','GM','Kansas','Lebsackton','84666 Reanna Islands Apt. 954',9,1,'2022-06-01 07:36:51','2022-06-01 07:36:51','08367-0165'),(12,'Vivienne Langosh','cbernhard@example.org','+15719989683','GT','Texas','Tessland','88387 Denesik Mill',10,1,'2022-06-01 07:36:51','2022-06-01 07:36:51','83998-1551');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Walter Satterfield','customer@botble.com','$2y$10$JhkWk2TTZDaBL9sygruy8uAbcCC7MWFb0o2A716btNfUmvxAM2oou','customers/5.jpg','1976-05-30','+17702421757',NULL,'2022-06-01 07:36:50','2022-06-01 07:36:50','2022-06-01 14:36:50',NULL,0,NULL,'activated'),(2,'Mr. Laverna Kshlerin PhD','vendor@botble.com','$2y$10$g87EKZLQRjlY.OKC0YMqMep12tdekkMiK9YYwtB5iybd9I3GIgq4K','customers/4.jpg','2002-05-17','+15105906944',NULL,'2022-06-01 07:36:50','2022-06-01 07:37:39','2022-06-01 14:36:50',NULL,1,'2022-06-01 14:37:39','activated'),(3,'Henriette Orn','stark.walter@example.org','$2y$10$7vAXZjNq7gC2ojSh/yQ0KOWShZUIizdm/nVIZAJxIUwGC1/Gp7Geq','customers/1.jpg','1982-05-04','+15595165689',NULL,'2022-06-01 07:36:50','2022-06-01 07:37:39','2022-06-01 14:36:50',NULL,1,'2022-06-01 14:37:39','activated'),(4,'Prof. Misael McKenzie','boyer.pattie@example.net','$2y$10$EcrC42Dii/3a7mUBoZhG5OrQCsDD/63A.9CYNVL6aKjFERYxmHDGe','customers/2.jpg','1986-05-02','+18459845163',NULL,'2022-06-01 07:36:50','2022-06-01 07:36:50','2022-06-01 14:36:50',NULL,0,NULL,'activated'),(5,'Ms. Alysha Luettgen','breitenberg.tina@example.org','$2y$10$2M0eTWHmVLc.D1MZrxZjP.n.Fs6vOEdhqZXTky5/w2G5GM4EmTLiC','customers/3.jpg','1974-05-21','+19172674599',NULL,'2022-06-01 07:36:50','2022-06-01 07:37:39','2022-06-01 14:36:50',NULL,1,'2022-06-01 14:37:39','activated'),(6,'Ursula Gleichner','mnader@example.org','$2y$10$jmYpjmhxQepCi1rIaU1TMuyZuQIP7Q1UnJizPYTl.9LD9hqaAcxie','customers/4.jpg','1992-05-11','+17243476917',NULL,'2022-06-01 07:36:50','2022-06-01 07:36:50','2022-06-01 14:36:50',NULL,0,NULL,'activated'),(7,'Jerrold Wilkinson','fritsch.frank@example.com','$2y$10$z8rjxEeRvDxbtsEn524nZOKF7liycvBMjimVgVcvjwVJng0UrBviG','customers/5.jpg','1984-05-10','+16625835334',NULL,'2022-06-01 07:36:51','2022-06-01 07:37:39','2022-06-01 14:36:51',NULL,1,'2022-06-01 14:37:39','activated'),(8,'Dr. Evangeline Aufderhar','myles35@example.com','$2y$10$lJ0jaSowob/BwdnDVWhfXule5StZTcD/J6v/2agxMRRGSb/fy.KHe','customers/6.jpg','1988-05-11','+19156178068',NULL,'2022-06-01 07:36:51','2022-06-01 07:37:39','2022-06-01 14:36:51',NULL,1,'2022-06-01 14:37:39','activated'),(9,'Esta Kilback PhD','stella.prohaska@example.net','$2y$10$sf4VzwzrgjH87FOhl8TeQujDPxfCJ96ry2ikVb02hxpy5nM9PL9ki','customers/7.jpg','1988-05-31','+15637399991',NULL,'2022-06-01 07:36:51','2022-06-01 07:37:39','2022-06-01 14:36:51',NULL,1,'2022-06-01 14:37:39','activated'),(10,'Vivienne Langosh','cbernhard@example.org','$2y$10$nG5UqrxWQZEgRzyY76r6rufl97vL7sPJHGdcjDsFH48WSGrdaSG1W','customers/8.jpg','1992-05-09','+19129343784',NULL,'2022-06-01 07:36:51','2022-06-01 07:37:39','2022-06-01 14:36:51',NULL,1,'2022-06-01 14:37:39','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,18,102.5,20,3),(2,17,37.51,13,2),(3,15,110.49,6,1),(4,15,53.34,14,5),(5,7,108.36,15,5),(6,1,100.32,18,2),(6,2,169.68,17,4),(6,3,289.2,15,1),(6,4,21.2976,12,2),(6,5,12.4,6,1),(6,6,35.28,20,4),(6,7,68.04,18,5),(6,8,80.456,7,3),(6,9,70.21,13,5),(6,10,121.36,16,4),(6,11,78,16,1),(6,12,66.7128,9,3),(6,13,59.94,7,4),(6,14,86.24,8,5),(6,15,80.01,16,3),(6,16,43.56,12,4),(6,17,88.33,19,4),(6,18,112.5,11,2),(6,19,75.6,16,2),(6,20,32.8152,6,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2022-06-19 00:00:00','published','2022-06-03 21:02:33','2022-06-03 21:02:33'),(2,'Flash sale 2','2022-06-20 00:00:00','published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(3,'Flash sale 3','2022-07-21 00:00:00','published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(4,'Flash sale 4','2022-07-10 00:00:00','published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(5,'Flash sale 5','2022-07-16 00:00:00','published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(6,'Daily Best Sales','2022-07-04 00:00:00','published','2022-06-03 21:02:34','2022-06-03 21:02:34');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',1,'70070'),(2,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',2,'70070'),(3,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',3,'70070'),(4,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',4,'20744'),(5,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',5,'20744'),(6,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',6,'20744'),(7,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',7,'20744'),(8,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',8,'02785-2829'),(9,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',9,'02785-2829'),(10,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',10,'02785-2829'),(11,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',11,'70070'),(12,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',12,'70070'),(13,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',13,'70070'),(14,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',14,'20744'),(15,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',15,'20744'),(16,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',16,'02785-2829'),(17,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',17,'02785-2829'),(18,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',18,'70070'),(19,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',19,'70070'),(20,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',20,'70070'),(21,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',21,'70070'),(22,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',22,'20744'),(23,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',23,'20744'),(24,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',24,'02785-2829'),(25,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',25,'02785-2829'),(26,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',26,'02785-2829'),(27,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',27,'02785-2829'),(28,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',28,'02785-2829'),(29,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',29,'02785-2829'),(30,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',30,'02785-2829'),(31,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',31,'02785-2829'),(32,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',32,'02785-2829'),(33,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',33,'02785-2829'),(34,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',34,'02785-2829'),(35,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',35,'02785-2829'),(36,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',36,'20744'),(37,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',37,'20744'),(38,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',38,'70070'),(39,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',39,'70070'),(40,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',40,'70070'),(41,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',41,'70070'),(42,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',42,'02785-2829'),(43,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',43,'02785-2829'),(44,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',44,'70070'),(45,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',45,'70070'),(46,'Ursula Gleichner','+15202149620','mnader@example.org','GA','Tennessee','Okunevafurt','8102 Lina Islands Apt. 258',46,'70070'),(47,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',47,'02785-2829'),(48,'Prof. Misael McKenzie','+14138681338','boyer.pattie@example.net','JO','Massachusetts','Port Humberto','61779 Torrance Path Suite 070',48,'02785-2829'),(49,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',49,'20744'),(50,'Walter Satterfield','+15419254784','customer@botble.com','AO','Virginia','South Ethylville','9554 Jarvis Valleys Apt. 158',50,'20744');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-05-26 13:02:35','2022-05-26 13:02:35'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-05-26 13:02:35','2022-05-26 13:02:35'),(3,'confirm_payment','Payment was confirmed (amount $61.60) by %user_name%',0,1,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-05-29 21:02:35','2022-05-29 21:02:35'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-05-29 21:02:35','2022-05-29 21:02:35'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-06-02 05:02:35','2022-06-02 05:02:35'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-06-02 05:02:35','2022-06-02 05:02:35'),(12,'confirm_payment','Payment was confirmed (amount $390.60) by %user_name%',0,3,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-06-02 07:02:35','2022-06-02 07:02:35'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-06-02 07:02:35','2022-06-02 07:02:35'),(17,'confirm_payment','Payment was confirmed (amount $626.20) by %user_name%',0,4,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-05-22 05:02:35','2022-05-22 05:02:35'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-05-22 05:02:35','2022-05-22 05:02:35'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-06-02 07:02:35','2022-06-02 07:02:35'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-06-02 07:02:35','2022-06-02 07:02:35'),(24,'confirm_payment','Payment was confirmed (amount $325.60) by %user_name%',0,6,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-05-26 23:02:35','2022-05-26 23:02:35'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-05-26 23:02:35','2022-05-26 23:02:35'),(28,'confirm_payment','Payment was confirmed (amount $387.50) by %user_name%',0,7,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-05-25 21:02:35','2022-05-25 21:02:35'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-05-25 21:02:35','2022-05-25 21:02:35'),(32,'confirm_payment','Payment was confirmed (amount $173.60) by %user_name%',0,8,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-05-27 09:02:35','2022-05-27 09:02:35'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-05-27 09:02:35','2022-05-27 09:02:35'),(36,'confirm_payment','Payment was confirmed (amount $237.30) by %user_name%',0,9,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(37,'create_shipment','Created shipment for order',0,9,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-05-24 09:02:35','2022-05-24 09:02:35'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-05-24 09:02:35','2022-05-24 09:02:35'),(40,'confirm_payment','Payment was confirmed (amount $347.20) by %user_name%',0,10,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(41,'create_shipment','Created shipment for order',0,10,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-05-23 13:02:35','2022-05-23 13:02:35'),(43,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-05-23 13:02:35','2022-05-23 13:02:35'),(44,'confirm_payment','Payment was confirmed (amount $124.30) by %user_name%',0,11,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-05-29 05:02:35','2022-05-29 05:02:35'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-05-29 05:02:35','2022-05-29 05:02:35'),(49,'confirm_payment','Payment was confirmed (amount $130.90) by %user_name%',0,12,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-05-23 13:02:35','2022-05-23 13:02:35'),(52,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-05-23 13:02:35','2022-05-23 13:02:35'),(53,'confirm_payment','Payment was confirmed (amount $137.50) by %user_name%',0,13,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-05-21 13:02:35','2022-05-21 13:02:35'),(56,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-05-21 13:02:35','2022-05-21 13:02:35'),(57,'confirm_payment','Payment was confirmed (amount $638.40) by %user_name%',0,14,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-06-02 13:02:35','2022-06-02 13:02:35'),(60,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-06-02 13:02:35','2022-06-02 13:02:35'),(61,'confirm_payment','Payment was confirmed (amount $243.60) by %user_name%',0,15,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-06-01 09:02:36','2022-06-01 09:02:36'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-06-01 09:02:36','2022-06-01 09:02:36'),(65,'confirm_payment','Payment was confirmed (amount $1,234.40) by %user_name%',0,16,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-05-22 09:02:36','2022-05-22 09:02:36'),(68,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-05-22 09:02:36','2022-05-22 09:02:36'),(69,'confirm_payment','Payment was confirmed (amount $347.20) by %user_name%',0,17,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(72,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(73,'confirm_payment','Payment was confirmed (amount $556.90) by %user_name%',0,18,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(74,'create_shipment','Created shipment for order',0,18,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(75,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-05-26 17:02:36','2022-05-26 17:02:36'),(77,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-05-26 17:02:36','2022-05-26 17:02:36'),(78,'confirm_payment','Payment was confirmed (amount $123.20) by %user_name%',0,19,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(79,'create_shipment','Created shipment for order',0,19,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(81,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-05-31 15:02:36','2022-05-31 15:02:36'),(82,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-05-31 15:02:36','2022-05-31 15:02:36'),(83,'confirm_payment','Payment was confirmed (amount $530.20) by %user_name%',0,20,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(84,'create_shipment','Created shipment for order',0,20,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(85,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-06-02 19:02:36','2022-06-02 19:02:36'),(86,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-06-02 19:02:36','2022-06-02 19:02:36'),(87,'confirm_payment','Payment was confirmed (amount $487.20) by %user_name%',0,21,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(88,'create_shipment','Created shipment for order',0,21,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(89,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-06-02 21:02:36','2022-06-02 21:02:36'),(90,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-06-02 21:02:36','2022-06-02 21:02:36'),(91,'confirm_payment','Payment was confirmed (amount $290.10) by %user_name%',0,22,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(92,'create_shipment','Created shipment for order',0,22,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-05-30 21:02:36','2022-05-30 21:02:36'),(94,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-05-30 21:02:36','2022-05-30 21:02:36'),(95,'confirm_payment','Payment was confirmed (amount $235.20) by %user_name%',0,23,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(96,'create_shipment','Created shipment for order',0,23,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(98,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-05-25 17:02:36','2022-05-25 17:02:36'),(99,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-05-25 17:02:36','2022-05-25 17:02:36'),(100,'create_shipment','Created shipment for order',0,24,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(101,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-06-02 01:02:36','2022-06-02 01:02:36'),(102,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-06-02 01:02:36','2022-06-02 01:02:36'),(103,'confirm_payment','Payment was confirmed (amount $359.60) by %user_name%',0,25,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(104,'create_shipment','Created shipment for order',0,25,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-06-01 03:02:36','2022-06-01 03:02:36'),(106,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-06-01 03:02:36','2022-06-01 03:02:36'),(107,'confirm_payment','Payment was confirmed (amount $347.20) by %user_name%',0,26,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(108,'create_shipment','Created shipment for order',0,26,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(109,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-05-29 01:02:36','2022-05-29 01:02:36'),(111,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-05-29 01:02:36','2022-05-29 01:02:36'),(112,'confirm_payment','Payment was confirmed (amount $621.60) by %user_name%',0,27,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(113,'create_shipment','Created shipment for order',0,27,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-05-29 21:02:36','2022-05-29 21:02:36'),(115,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-05-29 21:02:36','2022-05-29 21:02:36'),(116,'confirm_payment','Payment was confirmed (amount $123.20) by %user_name%',0,28,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(117,'create_shipment','Created shipment for order',0,28,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(118,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-05-28 05:02:36','2022-05-28 05:02:36'),(120,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-05-28 05:02:36','2022-05-28 05:02:36'),(121,'create_shipment','Created shipment for order',0,29,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(122,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(123,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-06-03 03:02:36','2022-06-03 03:02:36'),(124,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-06-03 03:02:36','2022-06-03 03:02:36'),(125,'confirm_payment','Payment was confirmed (amount $626.20) by %user_name%',0,30,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(126,'create_shipment','Created shipment for order',0,30,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(127,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(128,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-05-30 09:02:36','2022-05-30 09:02:36'),(129,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-05-30 09:02:36','2022-05-30 09:02:36'),(130,'confirm_payment','Payment was confirmed (amount $117.60) by %user_name%',0,31,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(131,'create_shipment','Created shipment for order',0,31,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(132,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-06-01 21:02:36','2022-06-01 21:02:36'),(134,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-06-01 21:02:36','2022-06-01 21:02:36'),(135,'confirm_payment','Payment was confirmed (amount $471.50) by %user_name%',0,32,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(136,'create_shipment','Created shipment for order',0,32,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(137,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-05-31 09:02:36','2022-05-31 09:02:36'),(138,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-05-31 09:02:36','2022-05-31 09:02:36'),(139,'confirm_payment','Payment was confirmed (amount $2,506.40) by %user_name%',0,33,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(140,'create_shipment','Created shipment for order',0,33,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-05-30 19:02:36','2022-05-30 19:02:36'),(142,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-05-30 19:02:36','2022-05-30 19:02:36'),(143,'confirm_payment','Payment was confirmed (amount $347.20) by %user_name%',0,34,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(144,'create_shipment','Created shipment for order',0,34,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-06-01 13:02:36','2022-06-01 13:02:36'),(146,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-06-01 13:02:36','2022-06-01 13:02:36'),(147,'confirm_payment','Payment was confirmed (amount $347.20) by %user_name%',0,35,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(148,'create_shipment','Created shipment for order',0,35,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(149,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-05-31 09:02:36','2022-05-31 09:02:36'),(151,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-05-31 09:02:36','2022-05-31 09:02:36'),(152,'create_shipment','Created shipment for order',0,36,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(153,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-06-03 09:02:36','2022-06-03 09:02:36'),(154,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-06-03 09:02:36','2022-06-03 09:02:36'),(155,'confirm_payment','Payment was confirmed (amount $347.20) by %user_name%',0,37,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(156,'create_shipment','Created shipment for order',0,37,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(157,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(158,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-06-01 09:02:36','2022-06-01 09:02:36'),(159,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-06-01 09:02:36','2022-06-01 09:02:36'),(160,'confirm_payment','Payment was confirmed (amount $133.10) by %user_name%',0,38,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(161,'create_shipment','Created shipment for order',0,38,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(162,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-06-03 11:02:36','2022-06-03 11:02:36'),(163,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-06-03 11:02:36','2022-06-03 11:02:36'),(164,'confirm_payment','Payment was confirmed (amount $137.50) by %user_name%',0,39,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(165,'create_shipment','Created shipment for order',0,39,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(166,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-06-01 19:02:36','2022-06-01 19:02:36'),(168,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-06-01 19:02:36','2022-06-01 19:02:36'),(169,'create_shipment','Created shipment for order',0,40,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(170,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-06-03 01:02:36','2022-06-03 01:02:36'),(171,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-06-03 01:02:36','2022-06-03 01:02:36'),(172,'confirm_payment','Payment was confirmed (amount $124.30) by %user_name%',0,41,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(173,'create_shipment','Created shipment for order',0,41,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(174,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(175,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-06-02 05:02:36','2022-06-02 05:02:36'),(176,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-06-02 05:02:36','2022-06-02 05:02:36'),(177,'confirm_payment','Payment was confirmed (amount $626.20) by %user_name%',0,42,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(178,'create_shipment','Created shipment for order',0,42,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-05-31 13:02:36','2022-05-31 13:02:36'),(180,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-05-31 13:02:36','2022-05-31 13:02:36'),(181,'confirm_payment','Payment was confirmed (amount $84.00) by %user_name%',0,43,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(182,'create_shipment','Created shipment for order',0,43,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(183,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-06-02 09:02:36','2022-06-02 09:02:36'),(185,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-06-02 09:02:36','2022-06-02 09:02:36'),(186,'create_shipment','Created shipment for order',0,44,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(187,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2022-06-02 21:02:36','2022-06-02 21:02:36'),(188,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2022-06-02 21:02:36','2022-06-02 21:02:36'),(189,'create_shipment','Created shipment for order',0,45,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2022-06-01 21:02:36','2022-06-01 21:02:36'),(191,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2022-06-01 21:02:36','2022-06-01 21:02:36'),(192,'create_shipment','Created shipment for order',0,46,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(193,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(194,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(195,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(196,'confirm_payment','Payment was confirmed (amount $424.20) by %user_name%',0,47,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(197,'create_shipment','Created shipment for order',0,47,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(198,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(199,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(200,'confirm_payment','Payment was confirmed (amount $123.20) by %user_name%',0,48,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(201,'create_shipment','Created shipment for order',0,48,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(202,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(203,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2022-06-03 17:02:36','2022-06-03 17:02:36'),(204,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2022-06-03 17:02:36','2022-06-03 17:02:36'),(205,'create_shipment','Created shipment for order',0,49,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(206,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(207,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2022-06-03 09:02:36','2022-06-03 09:02:36'),(208,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2022-06-03 09:02:36','2022-06-03 09:02:36'),(209,'confirm_payment','Payment was confirmed (amount $264.60) by %user_name%',0,50,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(210,'create_shipment','Created shipment for order',0,50,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(211,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(212,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(213,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(214,'update_status','Order confirmed by %user_name%',0,11,NULL,'2022-06-03 21:02:37','2022-06-03 21:02:37'),(215,'update_status','Order confirmed by %user_name%',0,18,NULL,'2022-06-03 21:02:37','2022-06-03 21:02:37'),(216,'update_status','Order confirmed by %user_name%',0,19,NULL,'2022-06-03 21:02:37','2022-06-03 21:02:37'),(217,'update_status','Order confirmed by %user_name%',0,23,NULL,'2022-06-03 21:02:37','2022-06-03 21:02:37'),(218,'update_status','Order confirmed by %user_name%',0,26,NULL,'2022-06-03 21:02:37','2022-06-03 21:02:37'),(219,'update_status','Order confirmed by %user_name%',0,28,NULL,'2022-06-03 21:02:37','2022-06-03 21:02:37'),(220,'update_status','Order confirmed by %user_name%',0,30,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(221,'update_status','Order confirmed by %user_name%',0,31,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(222,'update_status','Order confirmed by %user_name%',0,35,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(223,'update_status','Order confirmed by %user_name%',0,37,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(224,'update_status','Order confirmed by %user_name%',0,39,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(225,'update_status','Order confirmed by %user_name%',0,41,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(226,'update_status','Order confirmed by %user_name%',0,43,NULL,'2022-06-03 21:02:38','2022-06-03 21:02:38'),(227,'update_status','Order confirmed by %user_name%',0,48,NULL,'2022-06-03 21:02:39','2022-06-03 21:02:39'),(228,'update_status','Order confirmed by %user_name%',0,50,NULL,'2022-06-03 21:02:39','2022-06-03 21:02:39');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,56.00,5.60,'[]',38,'Chobani Complete Vanilla Greek',597.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(2,2,2,112.00,11.20,'[]',74,'Organic Cage-Free Grade A Large Brown Eggs',1744.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(3,3,3,126.00,12.60,'[]',81,'Signature Wood-Fired Mushroom and Caramelized',1635.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(4,4,3,202.00,20.20,'[]',27,'All Natural Italian-Style Chicken Meatballs',2457.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(5,5,1,126.00,12.60,'[]',42,'Canada Dry Ginger Ale – 2 L Bottle',600.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(6,6,1,296.00,29.60,'[]',47,'Haagen-Dazs Caramel Cone Ice Cream',524.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(7,7,3,125.00,12.50,'[]',65,'All Natural Italian-Style Chicken Meatballs',1809.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(8,8,3,56.00,5.60,'[]',39,'Chobani Complete Vanilla Greek',1791.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(9,9,2,113.00,11.30,'[]',44,'Encore Seafoods Stuffed Alaskan',1506.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(10,10,3,112.00,11.20,'[]',75,'Organic Cage-Free Grade A Large Brown Eggs',2616.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(11,11,1,113.00,11.30,'[]',44,'Encore Seafoods Stuffed Alaskan',753.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(12,12,1,119.00,11.90,'[]',46,'Gorton’s Beer Battered Fish Fillets',703.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(13,13,1,125.00,12.50,'[]',64,'All Natural Italian-Style Chicken Meatballs',603.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(14,14,2,72.00,7.20,'[]',34,'Foster Farms Takeout Crispy Classic',1660.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(15,14,2,111.00,11.10,'[]',52,'Pepperidge Farm Farmhouse Hearty White Bread',1786.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(16,14,2,121.00,12.10,'[]',60,'Foster Farms Takeout Crispy Classic Buffalo Wings',1010.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(17,15,2,116.00,11.60,'[]',71,'Chen Watermelon',1754.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(18,16,1,202.00,20.20,'[]',28,'All Natural Italian-Style Chicken Meatballs',819.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(19,16,2,482.00,48.20,'[]',32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1318.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(20,17,3,112.00,11.20,'[]',56,'Organic Frozen Triple Berry Blend',2544.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(21,18,3,56.00,5.60,'[]',40,'Chobani Complete Vanilla Greek',1791.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(22,18,1,127.00,12.70,'[]',58,'Oroweat Country Buttermilk Bread',520.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(23,18,2,116.00,11.60,'[]',71,'Chen Watermelon',1754.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(24,19,1,112.00,11.20,'[]',73,'Organic Cage-Free Grade A Large Brown Eggs',872.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(25,20,1,482.00,48.20,'[]',31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',659.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(26,21,1,116.00,11.60,'[]',69,'Chen Watermelon',877.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(27,21,3,116.00,11.60,'[]',72,'Chen Watermelon',2631.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(28,22,1,40.00,4.00,'[]',35,'Blue Diamond Almonds Lightly',674.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(29,22,3,40.00,4.00,'[]',36,'Blue Diamond Almonds Lightly',2022.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(30,22,1,111.00,11.10,'[]',55,'Pepperidge Farm Farmhouse Hearty White Bread',893.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(31,23,2,112.00,11.20,'[]',75,'Organic Cage-Free Grade A Large Brown Eggs',1744.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(32,24,3,121.00,12.10,'[]',60,'Foster Farms Takeout Crispy Classic Buffalo Wings',1515.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(33,25,3,116.00,11.60,'[]',71,'Chen Watermelon',2631.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(34,26,3,112.00,11.20,'[]',75,'Organic Cage-Free Grade A Large Brown Eggs',2616.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(35,27,2,296.00,29.60,'[]',47,'Haagen-Dazs Caramel Cone Ice Cream',1048.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(36,28,1,112.00,11.20,'[]',56,'Organic Frozen Triple Berry Blend',848.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(37,29,1,112.00,11.20,'[]',73,'Organic Cage-Free Grade A Large Brown Eggs',872.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(38,30,3,202.00,20.20,'[]',29,'All Natural Italian-Style Chicken Meatballs',2457.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(39,31,2,56.00,5.60,'[]',37,'Chobani Complete Vanilla Greek',1194.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(40,32,1,113.00,11.30,'[]',45,'Encore Seafoods Stuffed Alaskan',753.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(41,32,3,112.00,11.20,'[]',57,'Organic Frozen Triple Berry Blend',2544.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(42,33,2,482.00,48.20,'[]',31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1318.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(43,33,3,482.00,48.20,'[]',32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1977.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(44,34,3,112.00,11.20,'[]',57,'Organic Frozen Triple Berry Blend',2544.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(45,35,3,112.00,11.20,'[]',73,'Organic Cage-Free Grade A Large Brown Eggs',2616.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(46,36,1,72.00,7.20,'[]',34,'Foster Farms Takeout Crispy Classic',830.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(47,36,1,125.00,12.50,'[]',64,'All Natural Italian-Style Chicken Meatballs',603.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(48,37,3,112.00,11.20,'[]',57,'Organic Frozen Triple Berry Blend',2544.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(49,38,1,121.00,12.10,'[]',61,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',538.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(50,39,1,125.00,12.50,'[]',65,'All Natural Italian-Style Chicken Meatballs',603.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(51,40,2,116.00,11.60,'[]',70,'Chen Watermelon',1754.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(52,41,1,113.00,11.30,'[]',76,'Colorful Banana',663.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(53,42,3,202.00,20.20,'[]',27,'All Natural Italian-Style Chicken Meatballs',2457.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(54,43,2,40.00,4.00,'[]',36,'Blue Diamond Almonds Lightly',1348.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(55,44,2,120.00,12.00,'[]',50,'Nestle Original Coffee-Mate Coffee Creamer',1472.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(56,45,2,125.00,12.50,'[]',63,'All Natural Italian-Style Chicken Meatballs',1206.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(57,45,3,125.00,12.50,'[]',65,'All Natural Italian-Style Chicken Meatballs',1809.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(58,46,2,113.00,11.30,'[]',76,'Colorful Banana',1326.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(59,47,2,202.00,20.20,'[]',29,'All Natural Italian-Style Chicken Meatballs',1638.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(60,48,1,112.00,11.20,'[]',57,'Organic Frozen Triple Berry Blend',848.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(61,49,2,56.00,5.60,'[]',40,'Chobani Complete Vanilla Greek',1194.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(62,50,2,126.00,12.60,'[]',66,'Simply Lemonade with Raspberry Juice',1372.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,6,'1','default','completed',61.60,5.60,0.00,NULL,NULL,0.00,56.00,1,NULL,1,'SEj0eixG9B7a7UZu7j17HrecQArf9',1,'2022-05-26 13:02:35','2022-06-03 21:02:35',5),(2,6,'1','default','completed',235.20,11.20,0.00,NULL,NULL,0.00,224.00,1,NULL,1,'j8bJU5z5cGsxq28UIHFgeD1gqN642',2,'2022-05-29 21:02:35','2022-06-03 21:02:35',3),(3,6,'1','default','completed',390.60,12.60,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'XyxRCtCnWjkGkQDsu7LtqSjmfqidb',3,'2022-06-02 05:02:35','2022-06-03 21:02:35',1),(4,1,'1','default','pending',626.20,20.20,0.00,NULL,NULL,0.00,606.00,1,NULL,1,'sEK5XZtmVDJoPJhmlHZfBwiNG2BRd',4,'2022-06-02 07:02:35','2022-06-03 21:02:35',4),(5,1,'1','default','pending',138.60,12.60,0.00,NULL,NULL,0.00,126.00,1,NULL,1,'30nhEMV9knjMBCrPRI7rAlOg7hnzz',5,'2022-05-22 05:02:35','2022-06-03 21:02:35',3),(6,1,'1','default','pending',325.60,29.60,0.00,NULL,NULL,0.00,296.00,1,NULL,1,'cb4TFdZOTsjDJL9sm6jJhROGodnQc',6,'2022-06-02 07:02:35','2022-06-03 21:02:35',2),(7,1,'1','default','pending',387.50,12.50,0.00,NULL,NULL,0.00,375.00,1,NULL,1,'YJThbRCSSgaCvdQGvztrkAWTzJ6Kv',7,'2022-05-26 23:02:35','2022-06-03 21:02:35',6),(8,4,'1','default','pending',173.60,5.60,0.00,NULL,NULL,0.00,168.00,1,NULL,1,'0N7xvfhyzh0T5e3N38SmSrJ9sqdRz',8,'2022-05-25 21:02:35','2022-06-03 21:02:35',5),(9,4,'1','default','pending',237.30,11.30,0.00,NULL,NULL,0.00,226.00,1,NULL,1,'0VPuGPvWsUthBfa6xLpz7s1JeY4dx',9,'2022-05-27 09:02:35','2022-06-03 21:02:35',7),(10,4,'1','default','pending',347.20,11.20,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'VSP8r4u1G11lWfEI6ffVUHEGKKN5K',10,'2022-05-24 09:02:35','2022-06-03 21:02:35',3),(11,6,'1','default','completed',124.30,11.30,0.00,NULL,NULL,0.00,113.00,1,NULL,1,'5DcXmOdTEU53S2AMPxD4eawYRpJis',11,'2022-05-23 13:02:35','2022-06-03 21:02:35',7),(12,6,'1','default','pending',130.90,11.90,0.00,NULL,NULL,0.00,119.00,1,NULL,1,'voEvb0FhoAT59z0Kt8K22BpXpCZj9',12,'2022-05-29 05:02:35','2022-06-03 21:02:35',1),(13,6,'1','default','pending',137.50,12.50,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'DN9UNyuIRUHFwHWiMqhAHGIdtfvCR',13,'2022-05-23 13:02:35','2022-06-03 21:02:35',6),(14,1,'1','default','pending',638.40,30.40,0.00,NULL,NULL,0.00,608.00,1,NULL,1,'M1c3R0gCCj1YyfQ59rFhSJcbgrdfa',14,'2022-05-21 13:02:35','2022-06-03 21:02:35',6),(15,1,'1','default','pending',243.60,11.60,0.00,NULL,NULL,0.00,232.00,1,NULL,1,'DXfOMRp6OEpWmG5qut4AqEm8KQ0bH',15,'2022-06-02 13:02:35','2022-06-03 21:02:35',5),(16,4,'1','default','pending',1234.40,68.40,0.00,NULL,NULL,0.00,1166.00,1,NULL,1,'lzMTv4ZG4xjzCQc3PBzAPUPDoZ3FB',16,'2022-06-01 09:02:36','2022-06-03 21:02:36',4),(17,4,'1','default','pending',347.20,11.20,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'QyZ34C5MJFkXC0xQoiaZPP6jzsMF3',17,'2022-05-22 09:02:36','2022-06-03 21:02:36',7),(18,6,'1','default','completed',556.90,29.90,0.00,NULL,NULL,0.00,527.00,1,NULL,1,'ARyBbjXp9iQOVTNtZqwcYskLmOmKG',18,'2022-06-02 17:02:36','2022-06-03 21:02:36',5),(19,6,'1','default','completed',123.20,11.20,0.00,NULL,NULL,0.00,112.00,1,NULL,1,'YNwTNHQgQN3rAC9mu35jiityyX4rx',19,'2022-05-26 17:02:36','2022-06-03 21:02:36',3),(20,6,'1','default','pending',530.20,48.20,0.00,NULL,NULL,0.00,482.00,1,NULL,1,'5RDEJiDQ2PRYLfbN9U749MUkUU2k8',20,'2022-05-31 15:02:36','2022-06-03 21:02:36',4),(21,6,'1','default','pending',487.20,23.20,0.00,NULL,NULL,0.00,464.00,1,NULL,1,'UQKXrwIbrgjGqc7luj2Uz6qqWvgOW',21,'2022-06-02 19:02:36','2022-06-03 21:02:36',5),(22,1,'1','default','pending',290.10,19.10,0.00,NULL,NULL,0.00,271.00,1,NULL,1,'95VEDmwYd6XiHYOxaGvogcnT9VlFS',22,'2022-06-02 21:02:36','2022-06-03 21:02:36',6),(23,1,'1','default','completed',235.20,11.20,0.00,NULL,NULL,0.00,224.00,1,NULL,1,'7DCiDa266aA0B0BikWHhqMc2Soinr',23,'2022-05-30 21:02:36','2022-06-03 21:02:36',3),(24,4,'1','default','pending',375.10,12.10,0.00,NULL,NULL,0.00,363.00,1,NULL,1,'tiEKl5PjKMaQpHmRo3cIEtjIIHR3U',24,'2022-05-25 17:02:36','2022-06-03 21:02:36',6),(25,4,'1','default','pending',359.60,11.60,0.00,NULL,NULL,0.00,348.00,1,NULL,1,'Z6f1e1GguHltHeQ21TecFbKs3rHsP',25,'2022-06-02 01:02:36','2022-06-03 21:02:36',5),(26,4,'1','default','completed',347.20,11.20,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'R35jt5HiYCxWdtS3TNeclhGmq2872',26,'2022-06-01 03:02:36','2022-06-03 21:02:36',3),(27,4,'1','default','pending',621.60,29.60,0.00,NULL,NULL,0.00,592.00,1,NULL,1,'D3UN87kqRqVuIzbyIBf2YVf5ocGMa',27,'2022-05-29 01:02:36','2022-06-03 21:02:36',2),(28,4,'1','default','completed',123.20,11.20,0.00,NULL,NULL,0.00,112.00,1,NULL,1,'q33X6KMYxAX5sd0V1HliUmozkp3q4',28,'2022-05-29 21:02:36','2022-06-03 21:02:36',7),(29,4,'1','default','completed',123.20,11.20,0.00,NULL,NULL,0.00,112.00,1,NULL,1,'n9Ao3E7oPd6cTWJx63VG9aF7ZOrAR',29,'2022-05-28 05:02:36','2022-06-03 21:02:36',3),(30,4,'1','default','completed',626.20,20.20,0.00,NULL,NULL,0.00,606.00,1,NULL,1,'QLoKP0XGurpfJfO5wlofUMqHk4YZA',30,'2022-06-03 03:02:36','2022-06-03 21:02:36',4),(31,4,'1','default','completed',117.60,5.60,0.00,NULL,NULL,0.00,112.00,1,NULL,1,'HklT0TvSSpWboPSkQhPtXQLco3l4n',31,'2022-05-30 09:02:36','2022-06-03 21:02:36',5),(32,4,'1','default','pending',471.50,22.50,0.00,NULL,NULL,0.00,449.00,1,NULL,1,'UbzOh8ZZriQx83wqWPim28Dbt26iQ',32,'2022-06-01 21:02:36','2022-06-03 21:02:36',7),(33,4,'1','default','pending',2506.40,96.40,0.00,NULL,NULL,0.00,2410.00,1,NULL,1,'ruceUwV2ytYvAHSt98AKtidlwsC2b',33,'2022-05-31 09:02:36','2022-06-03 21:02:36',4),(34,4,'1','default','pending',347.20,11.20,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'hWlGN7eJAWFXSNS7Ole0qjCNCBV9G',34,'2022-05-30 19:02:36','2022-06-03 21:02:36',7),(35,4,'1','default','completed',347.20,11.20,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'DiLAXu2vqzPZAu5F2pUK4HjGs1yGM',35,'2022-06-01 13:02:36','2022-06-03 21:02:36',3),(36,1,'1','default','pending',216.70,19.70,0.00,NULL,NULL,0.00,197.00,1,NULL,1,'TEcTxft3QmxI0OWNxsl0dKBL8V7Py',36,'2022-05-31 09:02:36','2022-06-03 21:02:36',6),(37,1,'1','default','completed',347.20,11.20,0.00,NULL,NULL,0.00,336.00,1,NULL,1,'dlKeU19r8tyMJQwN97lU4LN96xI0c',37,'2022-06-03 09:02:36','2022-06-03 21:02:36',7),(38,6,'1','default','pending',133.10,12.10,0.00,NULL,NULL,0.00,121.00,1,NULL,1,'7WvBUxxY31dmty5a1DxqeZ4xyeDg3',38,'2022-06-01 09:02:36','2022-06-03 21:02:36',7),(39,6,'1','default','completed',137.50,12.50,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'MC15f4dKsjTbiQFObhbzldP1nj6bn',39,'2022-06-03 11:02:36','2022-06-03 21:02:36',6),(40,6,'1','default','pending',243.60,11.60,0.00,NULL,NULL,0.00,232.00,1,NULL,1,'EMgPqcwjVfRALwMMVvXaUx0YT5DEF',40,'2022-06-01 19:02:36','2022-06-03 21:02:36',5),(41,6,'1','default','completed',124.30,11.30,0.00,NULL,NULL,0.00,113.00,1,NULL,1,'BtOC4GbE8eGVaLbYifyFXaHezeKos',41,'2022-06-03 01:02:36','2022-06-03 21:02:36',4),(42,4,'1','default','pending',626.20,20.20,0.00,NULL,NULL,0.00,606.00,1,NULL,1,'kzccr0RzuhHhrsBAfh50zVDGWoL3T',42,'2022-06-02 05:02:36','2022-06-03 21:02:36',4),(43,4,'1','default','completed',84.00,4.00,0.00,NULL,NULL,0.00,80.00,1,NULL,1,'sEC536rdX4TS8lNsP9DQdM8f2BpGq',43,'2022-05-31 13:02:36','2022-06-03 21:02:36',6),(44,6,'1','default','pending',252.00,12.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,'7PFgOqpsacqRRoYatitH3z3lQGnFl',44,'2022-06-02 09:02:36','2022-06-03 21:02:36',5),(45,6,'1','default','pending',650.00,25.00,0.00,NULL,NULL,0.00,625.00,1,NULL,1,'svxnPaBJU8jJ6D2ccVrG8kJSXNG7N',45,'2022-06-02 21:02:36','2022-06-03 21:02:36',6),(46,6,'1','default','completed',237.30,11.30,0.00,NULL,NULL,0.00,226.00,1,NULL,1,'NnuBRuFzPcddtZcwAkgYHoH8GbKwT',46,'2022-06-01 21:02:36','2022-06-03 21:02:36',4),(47,4,'1','default','pending',424.20,20.20,0.00,NULL,NULL,0.00,404.00,1,NULL,1,'HSkYcPTdUgoo5cU4L4Igzxz0BdTMI',47,'2022-06-02 17:02:36','2022-06-03 21:02:36',4),(48,4,'1','default','completed',123.20,11.20,0.00,NULL,NULL,0.00,112.00,1,NULL,1,'rzWCU0MYtBuLrvFA3xb7T7D4xgype',48,'2022-06-02 17:02:36','2022-06-03 21:02:36',7),(49,1,'1','default','completed',117.60,5.60,0.00,NULL,NULL,0.00,112.00,1,NULL,1,'AqQlGkwkyZpxJeAERDdvGo0qSMVzI',49,'2022-06-03 17:02:36','2022-06-03 21:02:36',5),(50,1,'1','default','completed',264.60,12.60,0.00,NULL,NULL,0.00,252.00,1,NULL,1,'zpwZg8HVDd7Ro2DOyVnUEQtz9EcaM',50,'2022-06-03 09:02:36','2022-06-03 21:02:36',6);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2022-06-03 21:02:34','2022-06-03 21:02:34',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2022-06-03 21:02:34','2022-06-03 21:02:34',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2022-06-03 21:02:34','2022-06-03 21:02:34'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2022-06-03 21:02:34','2022-06-03 21:02:34');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2022-06-01 07:36:21','2022-06-01 07:36:21'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2022-06-01 07:36:22','2022-06-01 07:36:22'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2022-06-01 07:36:22','2022-06-01 07:36:22'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2022-06-01 07:36:22','2022-06-01 07:36:22'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2022-06-01 07:36:22','2022-06-01 07:36:22');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,8,1),(2,2,2),(3,9,3),(4,12,4),(5,6,5),(6,3,6),(7,9,7),(8,2,8),(9,12,9),(10,11,10),(11,3,11),(12,6,12),(13,1,13),(14,8,14),(15,4,15),(16,14,16),(17,8,17),(18,6,18),(19,8,19),(20,10,20),(21,8,21),(22,1,22),(23,9,23),(24,2,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,2,2),(3,2,3),(4,1,4),(5,1,5),(6,1,6),(7,2,7),(8,2,8),(9,1,9),(10,1,10),(11,3,11),(12,3,12),(13,3,13),(14,2,14),(15,3,15),(16,2,16),(17,3,17),(18,1,18),(19,1,19),(20,2,20),(21,1,21),(22,3,22),(23,2,23),(24,3,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,20),(2,1,16),(3,1,3),(4,1,11),(5,2,17),(6,2,12),(7,2,8),(8,3,18),(9,3,19),(10,3,8),(11,3,22),(12,4,23),(13,4,19),(14,4,20),(15,4,17),(16,5,24),(17,5,2),(18,5,12),(19,6,16),(20,6,3),(21,6,20),(22,7,6),(23,7,3),(24,7,18),(25,7,23),(26,8,16),(27,8,3),(28,8,11),(29,8,5),(30,9,14),(31,9,22),(32,9,17),(33,10,15),(34,10,19),(35,10,21),(36,10,3),(37,11,4),(38,11,21),(39,11,22),(40,11,24),(41,12,9),(42,12,18),(43,12,14),(44,12,13),(45,13,1),(46,13,22),(47,13,19),(48,13,2),(49,14,16),(50,14,11),(51,14,4),(52,14,18),(53,15,24),(54,15,14),(55,15,16),(56,15,19),(57,16,19),(58,16,9),(59,16,13),(60,16,10),(61,17,3),(62,17,21),(63,17,18),(64,17,19),(65,18,5),(66,18,12),(67,18,22),(68,19,11),(69,19,20),(70,19,9),(71,19,14),(72,20,16),(73,20,15),(74,20,7),(75,21,11),(76,21,22),(77,21,2),(78,21,8),(79,22,10),(80,22,18),(81,22,23),(82,22,3),(83,23,24),(84,23,10),(85,23,6),(86,23,12),(87,24,10),(88,24,20),(89,24,16),(90,24,13);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,7),(1,21),(3,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-06-01 07:36:22','2022-06-01 07:36:22'),(2,'New','#00c9a7','published','2022-06-01 07:36:22','2022-06-01 07:36:22'),(3,'Sale','#fe9931','published','2022-06-01 07:36:22','2022-06-01 07:36:22');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,5),(1,6),(2,1),(2,4),(3,1),(3,4),(4,1),(4,3),(4,4),(5,2),(5,3),(6,2),(6,4),(7,1),(7,6),(8,3),(8,4),(9,1),(9,3),(9,6),(10,1),(10,5),(10,6),(11,1),(11,4),(11,5),(12,2),(12,4),(13,1),(13,3),(13,6),(14,2),(14,3),(15,1),(15,6),(16,3),(16,4),(16,5),(17,1),(17,5),(18,2),(18,3),(18,5),(19,1),(19,2),(19,4),(20,1),(20,2),(21,1),(21,2),(21,3),(22,2),(22,4),(22,5),(23,1),(23,3),(23,6),(24,1),(24,3),(24,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22'),(2,'Bags',NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22'),(3,'Shoes',NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22'),(4,'Clothes',NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22'),(5,'Hand bag',NULL,'published','2022-06-01 07:36:22','2022-06-01 07:36:22');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,4,1),(2,9,1),(3,5,2),(4,6,2),(5,2,3),(6,10,3),(7,4,4),(8,8,4),(9,3,5),(10,9,5),(11,5,6),(12,7,6),(13,4,7),(14,7,7),(15,4,8),(16,6,8),(17,1,9),(18,7,9),(19,5,10),(20,6,10),(21,3,11),(22,8,11),(23,2,12),(24,7,12),(25,5,13),(26,8,13),(27,4,14),(28,6,14),(29,1,15),(30,6,15),(31,1,16),(32,6,16),(33,5,17),(34,6,17),(35,5,18),(36,8,18),(37,5,19),(38,10,19),(39,5,20),(40,10,20),(41,4,21),(42,9,21),(43,5,22),(44,9,22),(45,5,23),(46,6,23),(47,2,24),(48,8,24),(49,5,25),(50,7,25),(51,3,26),(52,7,26),(53,1,27),(54,7,27),(55,5,28),(56,6,28),(57,4,29),(58,10,29),(59,5,30),(60,8,30),(61,5,31),(62,6,31),(63,4,32),(64,9,32),(65,2,33),(66,9,33),(67,4,34),(68,6,34),(69,5,35),(70,9,35),(71,5,36),(72,7,36),(73,3,37),(74,7,37),(75,4,38),(76,7,38),(77,3,39),(78,8,39),(79,5,40),(80,9,40),(81,3,41),(82,6,41),(83,1,42),(84,7,42),(85,4,43),(86,10,43),(87,1,44),(88,10,44),(89,4,45),(90,7,45),(91,5,46),(92,7,46),(93,2,47),(94,7,47),(95,4,48),(96,8,48),(97,1,49),(98,10,49),(99,4,50),(100,10,50),(101,2,51),(102,9,51),(103,2,52),(104,9,52),(105,2,53),(106,6,53),(107,2,54),(108,7,54),(109,4,55),(110,10,55),(111,3,56),(112,7,56),(113,1,57),(114,6,57);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,2,1),(4,28,2,0),(5,29,2,0),(6,30,3,1),(7,31,3,0),(8,32,3,0),(9,33,4,1),(10,34,4,0),(11,35,5,1),(12,36,5,0),(13,37,6,1),(14,38,6,0),(15,39,6,0),(16,40,6,0),(17,41,7,1),(18,42,7,0),(19,43,8,1),(20,44,8,0),(21,45,8,0),(22,46,9,1),(23,47,10,1),(24,48,10,0),(25,49,11,1),(26,50,11,0),(27,51,12,1),(28,52,13,1),(29,53,13,0),(30,54,13,0),(31,55,13,0),(32,56,14,1),(33,57,14,0),(34,58,15,1),(35,59,15,0),(36,60,16,1),(37,61,17,1),(38,62,17,0),(39,63,18,1),(40,64,18,0),(41,65,18,0),(42,66,19,1),(43,67,20,1),(44,68,20,0),(45,69,21,1),(46,70,21,0),(47,71,21,0),(48,72,21,0),(49,73,22,1),(50,74,22,0),(51,75,22,0),(52,76,23,1),(53,77,23,0),(54,78,23,0),(55,79,24,1),(56,80,24,0),(57,81,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int unsigned DEFAULT NULL,
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-118-A0',0,20,0,1,1,3,0,0,209,NULL,NULL,NULL,19.00,18.00,12.00,698.00,1,199550,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-144-A0',0,10,0,1,1,1,0,0,202,NULL,NULL,NULL,10.00,12.00,12.00,819.00,1,77910,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-117-A0',0,12,0,1,1,7,0,0,482,NULL,NULL,NULL,19.00,19.00,11.00,659.00,1,44736,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-171-A0',0,20,0,1,1,7,0,0,72,62.64,NULL,NULL,18.00,12.00,11.00,830.00,1,1906,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Blue Diamond Almonds Lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-116-A0',0,10,0,1,1,3,0,0,40,NULL,NULL,NULL,15.00,13.00,11.00,674.00,1,55403,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-152-A0',0,11,0,1,1,4,0,0,56,NULL,NULL,NULL,17.00,17.00,15.00,597.00,1,152314,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-172-A0',0,13,0,1,1,6,0,0,126,NULL,NULL,NULL,10.00,12.00,16.00,600.00,1,168975,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-196-A0',0,10,0,1,1,6,0,0,113,100.57,NULL,NULL,10.00,15.00,11.00,753.00,1,98436,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Gorton’s Beer Battered Fish Fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-134-A0',0,13,0,1,1,5,0,0,119,NULL,NULL,NULL,17.00,14.00,17.00,703.00,1,50582,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-138-A0',0,20,0,1,1,2,0,0,296,NULL,NULL,NULL,19.00,12.00,19.00,524.00,1,138758,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-193-A0',0,15,0,1,1,3,0,0,120,NULL,NULL,NULL,10.00,16.00,13.00,736.00,1,160003,'2022-06-01 07:36:45','2022-06-01 07:37:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-112-A0',0,12,0,1,1,3,0,0,114,87.78,NULL,NULL,19.00,18.00,13.00,639.00,1,158500,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Pepperidge Farm Farmhouse Hearty White Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-156-A0',0,15,0,1,1,2,0,0,111,NULL,NULL,NULL,17.00,10.00,15.00,893.00,1,143894,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-136-A0',0,17,0,1,1,4,0,0,112,NULL,NULL,NULL,15.00,20.00,18.00,848.00,1,138925,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-132-A0',0,15,0,1,1,1,0,0,127,NULL,NULL,NULL,17.00,18.00,11.00,520.00,1,157892,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-140-A0',0,15,0,1,1,1,0,0,121,96.8,NULL,NULL,18.00,15.00,15.00,505.00,1,71963,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-128-A0',0,14,0,1,1,7,0,0,121,NULL,NULL,NULL,12.00,13.00,12.00,538.00,1,172997,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-179-A0',0,11,0,1,1,7,0,0,125,NULL,NULL,NULL,18.00,10.00,14.00,603.00,1,101050,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-163-A0',0,18,0,1,1,4,0,0,126,NULL,NULL,NULL,16.00,20.00,20.00,686.00,1,146397,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-173-A0',0,20,0,1,1,6,0,0,113,99.44,NULL,NULL,19.00,10.00,18.00,650.00,1,24687,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'Chen Watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-167-A0',0,12,0,1,1,1,0,0,116,NULL,NULL,NULL,16.00,20.00,18.00,877.00,1,6938,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-111-A0',0,14,0,1,1,3,0,0,112,NULL,NULL,NULL,10.00,20.00,17.00,872.00,1,148775,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-195-A0',0,16,0,1,1,1,0,0,113,NULL,NULL,NULL,18.00,19.00,15.00,663.00,1,14668,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-131-A0',0,13,0,1,1,3,0,0,126,95.76,NULL,NULL,16.00,20.00,19.00,545.00,1,179977,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-118-A0',0,20,0,1,0,3,1,0,209,NULL,NULL,NULL,19.00,18.00,12.00,698.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-118-A0-A1',0,20,0,1,0,3,1,0,209,NULL,NULL,NULL,19.00,18.00,12.00,698.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-144-A0',0,10,0,1,0,1,1,0,202,NULL,NULL,NULL,10.00,12.00,12.00,819.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-144-A0-A1',0,10,0,1,0,1,1,0,202,NULL,NULL,NULL,10.00,12.00,12.00,819.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-144-A0-A2',0,10,0,1,0,1,1,0,202,NULL,NULL,NULL,10.00,12.00,12.00,819.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-117-A0',0,12,0,1,0,7,1,0,482,NULL,NULL,NULL,19.00,19.00,11.00,659.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-117-A0-A1',0,12,0,1,0,7,1,0,482,NULL,NULL,NULL,19.00,19.00,11.00,659.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-117-A0-A2',0,12,0,1,0,7,1,0,482,NULL,NULL,NULL,19.00,19.00,11.00,659.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-171-A0',0,20,0,1,0,7,1,0,72,62.64,NULL,NULL,18.00,12.00,11.00,830.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-171-A0-A1',0,20,0,1,0,7,1,0,72,64.08,NULL,NULL,18.00,12.00,11.00,830.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-116-A0',0,10,0,1,0,3,1,0,40,NULL,NULL,NULL,15.00,13.00,11.00,674.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-116-A0-A1',0,10,0,1,0,3,1,0,40,NULL,NULL,NULL,15.00,13.00,11.00,674.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-152-A0',0,11,0,1,0,4,1,0,56,NULL,NULL,NULL,17.00,17.00,15.00,597.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-152-A0-A1',0,11,0,1,0,4,1,0,56,NULL,NULL,NULL,17.00,17.00,15.00,597.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-152-A0-A2',0,11,0,1,0,4,1,0,56,NULL,NULL,NULL,17.00,17.00,15.00,597.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-152-A0-A3',0,11,0,1,0,4,1,0,56,NULL,NULL,NULL,17.00,17.00,15.00,597.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-172-A0',0,13,0,1,0,6,1,0,126,NULL,NULL,NULL,10.00,12.00,16.00,600.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-172-A0-A1',0,13,0,1,0,6,1,0,126,NULL,NULL,NULL,10.00,12.00,16.00,600.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-196-A0',0,10,0,1,0,6,1,0,113,100.57,NULL,NULL,10.00,15.00,11.00,753.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-196-A0-A1',0,10,0,1,0,6,1,0,113,101.7,NULL,NULL,10.00,15.00,11.00,753.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-196-A0-A2',0,10,0,1,0,6,1,0,113,97.18,NULL,NULL,10.00,15.00,11.00,753.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-134-A0',0,13,0,1,0,5,1,0,119,NULL,NULL,NULL,17.00,14.00,17.00,703.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-138-A0',0,20,0,1,0,2,1,0,296,NULL,NULL,NULL,19.00,12.00,19.00,524.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-138-A0-A1',0,20,0,1,0,2,1,0,296,NULL,NULL,NULL,19.00,12.00,19.00,524.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-193-A0',0,15,0,1,0,3,1,0,120,NULL,NULL,NULL,10.00,16.00,13.00,736.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-193-A0-A1',0,15,0,1,0,3,1,0,120,NULL,NULL,NULL,10.00,16.00,13.00,736.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-112-A0',0,12,0,1,0,3,1,0,114,87.78,NULL,NULL,19.00,18.00,13.00,639.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-156-A0',0,15,0,1,0,2,1,0,111,NULL,NULL,NULL,17.00,10.00,15.00,893.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-156-A0-A1',0,15,0,1,0,2,1,0,111,NULL,NULL,NULL,17.00,10.00,15.00,893.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-156-A0-A2',0,15,0,1,0,2,1,0,111,NULL,NULL,NULL,17.00,10.00,15.00,893.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-156-A0-A3',0,15,0,1,0,2,1,0,111,NULL,NULL,NULL,17.00,10.00,15.00,893.00,NULL,0,'2022-06-01 07:36:46','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-136-A0',0,17,0,1,0,4,1,0,112,NULL,NULL,NULL,15.00,20.00,18.00,848.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-136-A0-A1',0,17,0,1,0,4,1,0,112,NULL,NULL,NULL,15.00,20.00,18.00,848.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-132-A0',0,15,0,1,0,1,1,0,127,NULL,NULL,NULL,17.00,18.00,11.00,520.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-132-A0-A1',0,15,0,1,0,1,1,0,127,NULL,NULL,NULL,17.00,18.00,11.00,520.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-140-A0',0,15,0,1,0,1,1,0,121,96.8,NULL,NULL,18.00,15.00,15.00,505.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-128-A0',0,14,0,1,0,7,1,0,121,NULL,NULL,NULL,12.00,13.00,12.00,538.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-128-A0-A1',0,14,0,1,0,7,1,0,121,NULL,NULL,NULL,12.00,13.00,12.00,538.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-179-A0',0,11,0,1,0,7,1,0,125,NULL,NULL,NULL,18.00,10.00,14.00,603.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-179-A0-A1',0,11,0,1,0,7,1,0,125,NULL,NULL,NULL,18.00,10.00,14.00,603.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-179-A0-A2',0,11,0,1,0,7,1,0,125,NULL,NULL,NULL,18.00,10.00,14.00,603.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-163-A0',0,18,0,1,0,4,1,0,126,NULL,NULL,NULL,16.00,20.00,20.00,686.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-173-A0',0,20,0,1,0,6,1,0,113,99.44,NULL,NULL,19.00,10.00,18.00,650.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-173-A0-A1',0,20,0,1,0,6,1,0,113,97.18,NULL,NULL,19.00,10.00,18.00,650.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-167-A0',0,12,0,1,0,1,1,0,116,NULL,NULL,NULL,16.00,20.00,18.00,877.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-167-A0-A1',0,12,0,1,0,1,1,0,116,NULL,NULL,NULL,16.00,20.00,18.00,877.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-167-A0-A2',0,12,0,1,0,1,1,0,116,NULL,NULL,NULL,16.00,20.00,18.00,877.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-167-A0-A3',0,12,0,1,0,1,1,0,116,NULL,NULL,NULL,16.00,20.00,18.00,877.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-111-A0',0,14,0,1,0,3,1,0,112,NULL,NULL,NULL,10.00,20.00,17.00,872.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-111-A0-A1',0,14,0,1,0,3,1,0,112,NULL,NULL,NULL,10.00,20.00,17.00,872.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-111-A0-A2',0,14,0,1,0,3,1,0,112,NULL,NULL,NULL,10.00,20.00,17.00,872.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-195-A0',0,16,0,1,0,1,1,0,113,NULL,NULL,NULL,18.00,19.00,15.00,663.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-195-A0-A1',0,16,0,1,0,1,1,0,113,NULL,NULL,NULL,18.00,19.00,15.00,663.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-195-A0-A2',0,16,0,1,0,1,1,0,113,NULL,NULL,NULL,18.00,19.00,15.00,663.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-131-A0',0,13,0,1,0,3,1,0,126,95.76,NULL,NULL,16.00,20.00,19.00,545.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(80,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-131-A0-A1',0,13,0,1,0,3,1,0,126,113.4,NULL,NULL,16.00,20.00,19.00,545.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(81,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-131-A0-A2',0,13,0,1,0,3,1,0,126,93.24,NULL,NULL,16.00,20.00,19.00,545.00,NULL,0,'2022-06-01 07:36:47','2022-06-01 07:37:39','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',27,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',28,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',29,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',30,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',31,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',32,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',33,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',34,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',35,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',36,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',37,'Chobani vani Hy Lạp',NULL,NULL),('vi',38,'Chobani vani Hy Lạp',NULL,NULL),('vi',39,'Chobani vani Hy Lạp',NULL,NULL),('vi',40,'Chobani vani Hy Lạp',NULL,NULL),('vi',41,'Gừng khô Canada',NULL,NULL),('vi',42,'Gừng khô Canada',NULL,NULL),('vi',43,'Hải sản Alaska',NULL,NULL),('vi',44,'Hải sản Alaska',NULL,NULL),('vi',45,'Hải sản Alaska',NULL,NULL),('vi',46,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',47,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',48,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',49,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',50,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',51,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',52,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',53,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',54,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',55,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',56,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',57,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',58,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',59,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',60,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',61,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',62,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',63,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',64,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',65,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',66,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',67,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',68,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',69,'Dưa hấu chen',NULL,NULL),('vi',70,'Dưa hấu chen',NULL,NULL),('vi',71,'Dưa hấu chen',NULL,NULL),('vi',72,'Dưa hấu chen',NULL,NULL),('vi',73,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',74,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',75,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',76,'Chuối đầy màu sắc',NULL,NULL),('vi',77,'Chuối đầy màu sắc',NULL,NULL),('vi',78,'Chuối đầy màu sắc',NULL,NULL),('vi',79,'Nấm đặc trưng và caramel',NULL,NULL),('vi',80,'Nấm đặc trưng và caramel',NULL,NULL),('vi',81,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,1,12,5.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(2,8,7,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\"]'),(3,6,15,2.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(4,9,6,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(5,1,15,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(6,7,4,3.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(7,8,6,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(8,5,21,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(9,5,9,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(10,6,19,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\"]'),(11,9,13,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(12,7,18,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(13,9,7,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(14,4,23,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(15,2,13,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(16,5,21,5.00,'Good app, good backup service and support. Good documentation.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(17,3,23,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/18.jpg\"}'),(18,6,7,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(19,3,1,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(20,7,24,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(21,9,13,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(22,5,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\"]'),(23,10,24,3.00,'Best ecommerce CMS online store!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(24,6,16,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\"]'),(25,3,1,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(26,2,4,4.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\"]'),(27,5,9,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\"]'),(28,2,24,1.00,'Best ecommerce CMS online store!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(29,3,13,2.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(30,2,12,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\"]'),(31,5,17,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\"]'),(32,7,10,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(33,1,9,3.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(34,7,7,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(35,6,6,4.00,'Clean & perfect source code','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(36,10,12,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(37,1,23,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(38,8,11,5.00,'Good app, good backup service and support. Good documentation.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\"]'),(39,5,22,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(40,8,5,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/19.jpg\"}'),(41,1,24,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(42,7,8,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\"]'),(43,10,6,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(44,1,13,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/11.jpg\"}'),(45,2,15,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\"]'),(46,9,2,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(47,3,1,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(48,2,7,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(49,9,12,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(50,2,10,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(51,1,9,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(52,4,1,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/17.jpg\"}'),(53,7,6,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/10.jpg\"]'),(54,3,20,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(55,8,15,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(56,2,12,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(57,1,13,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(58,10,13,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\"]'),(59,9,23,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(60,6,14,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/21.jpg\"]'),(61,1,18,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/8.jpg\"}'),(62,8,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(63,7,13,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(64,3,24,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(65,10,5,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/4.jpg\"]'),(66,10,17,2.00,'Best ecommerce CMS online store!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\"]'),(67,6,10,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(68,6,11,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\"]'),(69,6,10,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/23.jpg\"}'),(70,6,9,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/1.jpg\"]'),(71,10,24,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(72,4,5,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-01 07:36:51','2022-06-01 07:36:51','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/14.jpg\"}'),(73,7,14,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-06-01 07:36:51','2022-06-01 07:36:51','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/10.jpg\"]'),(74,8,15,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(75,7,23,5.00,'Best ecommerce CMS online store!','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(76,2,24,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(77,5,18,5.00,'Good app, good backup service and support. Good documentation.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(78,9,22,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(79,3,11,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(80,5,23,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(81,10,2,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(82,2,5,5.00,'Clean & perfect source code','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(83,6,11,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(84,9,13,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(85,9,24,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(86,6,6,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/23.jpg\"}'),(87,5,11,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-06-01 07:36:52','2022-06-01 07:36:52','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/22.jpg\"}'),(88,4,10,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-06-01 07:36:52','2022-06-01 07:36:52','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/8.jpg\"}'),(89,9,3,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/3.jpg\"]'),(90,8,13,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(91,7,2,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(92,8,18,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(93,4,18,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(94,10,6,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/3.jpg\"]'),(95,4,13,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(96,10,11,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\"]'),(97,4,1,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(98,10,17,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(99,8,14,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(100,7,8,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-06-01 07:36:52','2022-06-01 07:36:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-05-26 13:02:35','2022-05-26 13:02:35'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-06-02 05:02:35','2022-06-03 21:02:35'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-05-29 21:02:35','2022-05-29 21:02:35'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-06-02 05:02:35','2022-06-03 21:02:35'),(6,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-06-02 05:02:35','2022-06-02 05:02:35'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-06-02 05:02:35','2022-06-03 21:02:35'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(10,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-06-02 07:02:35','2022-06-02 07:02:35'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-06-02 07:02:35','2022-06-03 21:02:35'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-05-22 05:02:35','2022-05-22 05:02:35'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-06-02 07:02:35','2022-06-03 21:02:35'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-06-02 07:02:35','2022-06-02 07:02:35'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-06-02 07:02:35','2022-06-03 21:02:35'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-05-26 23:02:35','2022-05-26 23:02:35'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-06-02 07:02:35','2022-06-03 21:02:35'),(18,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-05-25 21:02:35','2022-05-25 21:02:35'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-06-02 09:02:35','2022-06-03 21:02:35'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-05-27 09:02:35','2022-05-27 09:02:35'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-06-02 09:02:35','2022-06-03 21:02:35'),(22,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-05-24 09:02:35','2022-05-24 09:02:35'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-06-02 09:02:35','2022-06-03 21:02:35'),(24,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-05-23 13:02:35','2022-05-23 13:02:35'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-06-02 11:02:35','2022-06-03 21:02:35'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2022-06-03 21:02:35','2022-06-03 21:02:35'),(27,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-05-29 05:02:35','2022-05-29 05:02:35'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-06-02 11:02:35','2022-06-03 21:02:35'),(29,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-05-23 13:02:35','2022-05-23 13:02:35'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-06-02 11:02:35','2022-06-03 21:02:35'),(31,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-05-21 13:02:35','2022-05-21 13:02:35'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-06-02 13:02:35','2022-06-03 21:02:35'),(33,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-06-02 13:02:35','2022-06-02 13:02:35'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-06-02 13:02:35','2022-06-03 21:02:35'),(35,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-06-01 09:02:36','2022-06-01 09:02:36'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-06-02 15:02:36','2022-06-03 21:02:36'),(37,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-05-22 09:02:36','2022-05-22 09:02:36'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-06-02 15:02:36','2022-06-03 21:02:36'),(39,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-06-02 17:02:36','2022-06-03 21:02:36'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(42,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-05-26 17:02:36','2022-05-26 17:02:36'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-06-02 17:02:36','2022-06-03 21:02:36'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(45,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-05-31 15:02:36','2022-05-31 15:02:36'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-06-02 19:02:36','2022-06-03 21:02:36'),(47,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-06-02 19:02:36','2022-06-02 19:02:36'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-06-02 19:02:36','2022-06-03 21:02:36'),(49,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-06-02 21:02:36','2022-06-02 21:02:36'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-06-02 21:02:36','2022-06-03 21:02:36'),(51,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-05-30 21:02:36','2022-05-30 21:02:36'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-06-02 21:02:36','2022-06-03 21:02:36'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(54,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-05-25 17:02:36','2022-05-25 17:02:36'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-06-02 23:02:36','2022-06-03 21:02:36'),(56,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-06-02 01:02:36','2022-06-02 01:02:36'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-06-02 23:02:36','2022-06-03 21:02:36'),(58,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-06-01 03:02:36','2022-06-01 03:02:36'),(59,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-06-02 23:02:36','2022-06-03 21:02:36'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(61,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-05-29 01:02:36','2022-05-29 01:02:36'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-06-03 01:02:36','2022-06-03 21:02:36'),(63,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-05-29 21:02:36','2022-05-29 21:02:36'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-06-03 01:02:36','2022-06-03 21:02:36'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(66,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-05-28 05:02:36','2022-05-28 05:02:36'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-06-03 01:02:36','2022-06-03 21:02:36'),(68,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(69,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-06-03 03:02:36','2022-06-03 03:02:36'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-06-03 03:02:36','2022-06-03 21:02:36'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(72,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-05-30 09:02:36','2022-05-30 09:02:36'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-06-03 03:02:36','2022-06-03 21:02:36'),(74,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,31,31,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(75,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-06-01 21:02:36','2022-06-01 21:02:36'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-06-03 05:02:36','2022-06-03 21:02:36'),(77,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-05-31 09:02:36','2022-05-31 09:02:36'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-06-03 07:02:36','2022-06-03 21:02:36'),(79,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-05-30 19:02:36','2022-05-30 19:02:36'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-06-03 07:02:36','2022-06-03 21:02:36'),(81,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-06-01 13:02:36','2022-06-01 13:02:36'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-06-03 07:02:36','2022-06-03 21:02:36'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,35,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(84,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-05-31 09:02:36','2022-05-31 09:02:36'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-06-03 09:02:36','2022-06-03 21:02:36'),(86,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-06-03 09:02:36','2022-06-03 09:02:36'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-06-03 09:02:36','2022-06-03 21:02:36'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,37,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(89,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-06-01 09:02:36','2022-06-01 09:02:36'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-06-03 11:02:36','2022-06-03 21:02:36'),(91,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-06-03 11:02:36','2022-06-03 11:02:36'),(92,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2022-06-03 11:02:36','2022-06-03 21:02:36'),(93,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(94,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-06-01 19:02:36','2022-06-01 19:02:36'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2022-06-03 11:02:36','2022-06-03 21:02:36'),(96,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-06-03 01:02:36','2022-06-03 01:02:36'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2022-06-03 11:02:36','2022-06-03 21:02:36'),(98,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(99,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-06-02 05:02:36','2022-06-02 05:02:36'),(100,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2022-06-03 13:02:36','2022-06-03 21:02:36'),(101,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-05-31 13:02:36','2022-05-31 13:02:36'),(102,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2022-06-03 13:02:36','2022-06-03 21:02:36'),(103,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,43,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(104,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-06-02 09:02:36','2022-06-02 09:02:36'),(105,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2022-06-03 15:02:36','2022-06-03 21:02:36'),(106,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2022-06-02 21:02:36','2022-06-02 21:02:36'),(107,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2022-06-03 15:02:36','2022-06-03 21:02:36'),(108,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2022-06-01 21:02:36','2022-06-01 21:02:36'),(109,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2022-06-03 15:02:36','2022-06-03 21:02:36'),(110,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,46,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(111,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(112,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,47,47,'2022-06-03 17:02:36','2022-06-03 21:02:36'),(113,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2022-06-02 17:02:36','2022-06-02 17:02:36'),(114,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,48,48,'2022-06-03 17:02:36','2022-06-03 21:02:36'),(115,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,48,48,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(116,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2022-06-03 17:02:36','2022-06-03 17:02:36'),(117,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,49,49,'2022-06-03 19:02:36','2022-06-03 21:02:36'),(118,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,49,49,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(119,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,49,49,'2022-06-03 21:02:36','2022-06-03 21:02:36'),(120,'create_from_order','Shipping was created from order %order_id%',0,50,50,'2022-06-03 09:02:36','2022-06-03 09:02:36'),(121,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,50,50,'2022-06-03 19:02:36','2022-06-03 21:02:36'),(122,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,50,50,'2022-06-03 21:02:36','2022-06-03 21:02:36');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,597.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0087987659','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-08 04:02:35','2022-06-04 04:02:35'),(2,2,NULL,1744.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0055914149','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:35','2022-06-04 04:02:35'),(3,3,NULL,1635.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0078836476','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:35','2022-06-04 04:02:35'),(4,4,NULL,2457.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0067700919','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-09 04:02:35',NULL),(5,5,NULL,600.00,NULL,'','approved',138.60,'pending','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD009403687','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-10 04:02:35',NULL),(6,6,NULL,524.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD004844824','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:35',NULL),(7,7,NULL,1809.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0039513613','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-07 04:02:35',NULL),(8,8,NULL,1791.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0019017825','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-07 04:02:35',NULL),(9,9,NULL,1506.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0078037860','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-08 04:02:35',NULL),(10,10,NULL,2616.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD007198537','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-11 04:02:35',NULL),(11,11,NULL,753.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0069166751','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-07 04:02:35','2022-06-04 04:02:35'),(12,12,NULL,703.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0083776983','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-07 04:02:35',NULL),(13,13,NULL,603.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0096370500','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-06 04:02:35',NULL),(14,14,NULL,4456.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD0093582101','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:35',NULL),(15,15,NULL,1754.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:35','2022-06-03 21:02:35','JJD002245849','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-09 04:02:35',NULL),(16,16,NULL,2137.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0089108333','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36',NULL),(17,17,NULL,2544.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0069731159','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-09 04:02:36',NULL),(18,18,NULL,4065.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0044640830','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:36','2022-06-04 04:02:36'),(19,19,NULL,872.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD002047992','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-13 04:02:36','2022-06-04 04:02:36'),(20,20,NULL,659.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0086225044','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-10 04:02:36',NULL),(21,21,NULL,3508.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0096914023','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-06 04:02:36',NULL),(22,22,NULL,3589.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0013193308','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-10 04:02:36',NULL),(23,23,NULL,1744.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0045680239','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:36','2022-06-04 04:02:36'),(24,24,NULL,1515.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0058821971','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-06 04:02:36',NULL),(25,25,NULL,2631.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD008633476','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-11 04:02:36',NULL),(26,26,NULL,2616.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0026794731','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:36','2022-06-04 04:02:36'),(27,27,NULL,1048.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0038731494','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36',NULL),(28,28,NULL,848.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD008810340','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-09 04:02:36','2022-06-04 04:02:36'),(29,29,NULL,872.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0093926013','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:36','2022-06-04 04:02:36'),(30,30,NULL,2457.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0049862072','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36','2022-06-04 04:02:36'),(31,31,NULL,1194.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0042493679','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36','2022-06-04 04:02:36'),(32,32,NULL,3297.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0012234747','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-10 04:02:36',NULL),(33,33,NULL,3295.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0063363680','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-08 04:02:36',NULL),(34,34,NULL,2544.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0059779491','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-08 04:02:36',NULL),(35,35,NULL,2616.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0029491367','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-10 04:02:36','2022-06-04 04:02:36'),(36,36,NULL,1433.00,NULL,'','approved',216.70,'pending','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0061819531','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36',NULL),(37,37,NULL,2544.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0035785468','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-09 04:02:36','2022-06-04 04:02:36'),(38,38,NULL,538.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0073347886','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36',NULL),(39,39,NULL,603.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0032744005','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-12 04:02:36','2022-06-04 04:02:36'),(40,40,NULL,1754.00,NULL,'','approved',243.60,'pending','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0052147635','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-09 04:02:36',NULL),(41,41,NULL,663.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0045474267','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-14 04:02:36','2022-06-04 04:02:36'),(42,42,NULL,2457.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0096760527','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-07 04:02:36',NULL),(43,43,NULL,1348.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0087366728','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-05 04:02:36','2022-06-04 04:02:36'),(44,44,NULL,1472.00,NULL,'','approved',252.00,'pending','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0095183925','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-11 04:02:36',NULL),(45,45,NULL,3015.00,NULL,'','approved',650.00,'pending','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0034892436','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-11 04:02:36',NULL),(46,46,NULL,1326.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0025719917','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-13 04:02:36','2022-06-04 04:02:36'),(47,47,NULL,1638.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0087848244','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-10 04:02:36',NULL),(48,48,NULL,848.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0011325715','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-11 04:02:36','2022-06-04 04:02:36'),(49,49,NULL,1194.00,NULL,'','delivered',117.60,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0059674620','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-07 04:02:36','2022-06-04 04:02:36'),(50,50,NULL,1372.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-06-03 21:02:36','2022-06-03 21:02:36','JJD0032901463','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-06-14 04:02:36','2022-06-04 04:02:36');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-06-01 07:36:52','2022-06-01 07:36:52');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-06-01 07:36:52','2022-06-01 07:36:52'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-06-01 07:36:52','2022-06-01 07:36:52'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-06-01 07:36:52','2022-06-01 07:36:52');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-06-01 07:36:52','2022-06-01 07:36:52');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-06-01 07:36:47','2022-06-01 07:36:47'),(2,'None',0.000000,2,'published','2022-06-01 07:36:47','2022-06-01 07:36:47');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(2,'Payment',1,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(3,'Order & Returns',2,'published','2022-06-01 07:37:26','2022-06-01 07:37:26');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-06-01 07:37:26','2022-06-01 07:37:26'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-06-01 07:37:26','2022-06-01 07:37:26');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','177201ad6ab43389489779c03f78d0cb',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','475319710937e25a4f37eae72aa1c939',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','be55ea378130e3fe6cb3d347cfd80043',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','065b587f5d9ea261a973e45d4746ce17',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','dca17ba8001ab4e64f7362a350b3e2a4',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','281c44d7dddbfb92c651d6f0c336c67f',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','86689b87851f06179f91b1f26c540313',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','177201ad6ab43389489779c03f78d0cb',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','475319710937e25a4f37eae72aa1c939',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','be55ea378130e3fe6cb3d347cfd80043',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','065b587f5d9ea261a973e45d4746ce17',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','dca17ba8001ab4e64f7362a350b3e2a4',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','281c44d7dddbfb92c651d6f0c336c67f',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','86689b87851f06179f91b1f26c540313',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','8efc8f71b0ee99ded469ef8e287a4344',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','ae09d2ddf4198144696ffbf57b3b8b29',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','761c43df657de1d182a0bba94664dd68',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','22ba3f56e08c766ddef6bd4abda3f859',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','9bca118d8e34895a67022884b1753ac5',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','240062a6b3a5f8b304379f5b8ce1cff6',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','ab8db68cfd4c96c28ced0eb14bbc77f7',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','3e1f6f04f365811321b11beea4ea33e0',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','ae09d2ddf4198144696ffbf57b3b8b29',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','2b66a54242903f2da7b2227283ba35a2',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','22ba3f56e08c766ddef6bd4abda3f859',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','9bca118d8e34895a67022884b1753ac5',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','240062a6b3a5f8b304379f5b8ce1cff6',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','ab8db68cfd4c96c28ced0eb14bbc77f7',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1',1,'image/png',4323,'product-categories/icon-1.png','[]','2022-06-01 07:36:12','2022-06-01 07:36:12',NULL),(2,0,'icon-10',1,'image/png',4357,'product-categories/icon-10.png','[]','2022-06-01 07:36:12','2022-06-01 07:36:12',NULL),(3,0,'icon-11',1,'image/png',2024,'product-categories/icon-11.png','[]','2022-06-01 07:36:12','2022-06-01 07:36:12',NULL),(4,0,'icon-12',1,'image/png',3531,'product-categories/icon-12.png','[]','2022-06-01 07:36:13','2022-06-01 07:36:13',NULL),(5,0,'icon-13',1,'image/png',2344,'product-categories/icon-13.png','[]','2022-06-01 07:36:13','2022-06-01 07:36:13',NULL),(6,0,'icon-14',1,'image/png',2314,'product-categories/icon-14.png','[]','2022-06-01 07:36:13','2022-06-01 07:36:13',NULL),(7,0,'icon-2',1,'image/png',3204,'product-categories/icon-2.png','[]','2022-06-01 07:36:13','2022-06-01 07:36:13',NULL),(8,0,'icon-3',1,'image/png',4184,'product-categories/icon-3.png','[]','2022-06-01 07:36:14','2022-06-01 07:36:14',NULL),(9,0,'icon-4',1,'image/png',4648,'product-categories/icon-4.png','[]','2022-06-01 07:36:14','2022-06-01 07:36:14',NULL),(10,0,'icon-5',1,'image/png',4594,'product-categories/icon-5.png','[]','2022-06-01 07:36:15','2022-06-01 07:36:15',NULL),(11,0,'icon-6',1,'image/png',3518,'product-categories/icon-6.png','[]','2022-06-01 07:36:15','2022-06-01 07:36:15',NULL),(12,0,'icon-7',1,'image/png',3829,'product-categories/icon-7.png','[]','2022-06-01 07:36:16','2022-06-01 07:36:16',NULL),(13,0,'icon-8',1,'image/png',4815,'product-categories/icon-8.png','[]','2022-06-01 07:36:16','2022-06-01 07:36:16',NULL),(14,0,'icon-9',1,'image/png',3126,'product-categories/icon-9.png','[]','2022-06-01 07:36:16','2022-06-01 07:36:16',NULL),(15,0,'image-1',1,'image/png',25796,'product-categories/image-1.png','[]','2022-06-01 07:36:17','2022-06-01 07:36:17',NULL),(16,0,'image-10',1,'image/png',13714,'product-categories/image-10.png','[]','2022-06-01 07:36:17','2022-06-01 07:36:17',NULL),(17,0,'image-11',1,'image/png',18723,'product-categories/image-11.png','[]','2022-06-01 07:36:17','2022-06-01 07:36:17',NULL),(18,0,'image-12',1,'image/png',19482,'product-categories/image-12.png','[]','2022-06-01 07:36:17','2022-06-01 07:36:17',NULL),(19,0,'image-13',1,'image/png',19312,'product-categories/image-13.png','[]','2022-06-01 07:36:18','2022-06-01 07:36:18',NULL),(20,0,'image-14',1,'image/png',19593,'product-categories/image-14.png','[]','2022-06-01 07:36:18','2022-06-01 07:36:18',NULL),(21,0,'image-15',1,'image/png',17706,'product-categories/image-15.png','[]','2022-06-01 07:36:18','2022-06-01 07:36:18',NULL),(22,0,'image-2',1,'image/png',19956,'product-categories/image-2.png','[]','2022-06-01 07:36:19','2022-06-01 07:36:19',NULL),(23,0,'image-3',1,'image/png',20032,'product-categories/image-3.png','[]','2022-06-01 07:36:19','2022-06-01 07:36:19',NULL),(24,0,'image-4',1,'image/png',18475,'product-categories/image-4.png','[]','2022-06-01 07:36:19','2022-06-01 07:36:19',NULL),(25,0,'image-5',1,'image/png',16666,'product-categories/image-5.png','[]','2022-06-01 07:36:20','2022-06-01 07:36:20',NULL),(26,0,'image-6',1,'image/png',15381,'product-categories/image-6.png','[]','2022-06-01 07:36:20','2022-06-01 07:36:20',NULL),(27,0,'image-7',1,'image/png',13804,'product-categories/image-7.png','[]','2022-06-01 07:36:20','2022-06-01 07:36:20',NULL),(28,0,'image-8',1,'image/png',17392,'product-categories/image-8.png','[]','2022-06-01 07:36:20','2022-06-01 07:36:20',NULL),(29,0,'image-9',1,'image/png',17729,'product-categories/image-9.png','[]','2022-06-01 07:36:21','2022-06-01 07:36:21',NULL),(30,0,'1-1',2,'image/jpeg',77048,'products/1-1.jpg','[]','2022-06-01 07:36:23','2022-06-01 07:36:23',NULL),(31,0,'1',2,'image/jpeg',80718,'products/1.jpg','[]','2022-06-01 07:36:23','2022-06-01 07:36:23',NULL),(32,0,'10-1',2,'image/jpeg',105100,'products/10-1.jpg','[]','2022-06-01 07:36:23','2022-06-01 07:36:23',NULL),(33,0,'10',2,'image/jpeg',117642,'products/10.jpg','[]','2022-06-01 07:36:24','2022-06-01 07:36:24',NULL),(34,0,'11-1',2,'image/jpeg',45724,'products/11-1.jpg','[]','2022-06-01 07:36:24','2022-06-01 07:36:24',NULL),(35,0,'11',2,'image/jpeg',46272,'products/11.jpg','[]','2022-06-01 07:36:25','2022-06-01 07:36:25',NULL),(36,0,'12-1',2,'image/jpeg',72251,'products/12-1.jpg','[]','2022-06-01 07:36:26','2022-06-01 07:36:26',NULL),(37,0,'12',2,'image/jpeg',71309,'products/12.jpg','[]','2022-06-01 07:36:26','2022-06-01 07:36:26',NULL),(38,0,'13-1',2,'image/jpeg',32608,'products/13-1.jpg','[]','2022-06-01 07:36:27','2022-06-01 07:36:27',NULL),(39,0,'13',2,'image/jpeg',33526,'products/13.jpg','[]','2022-06-01 07:36:27','2022-06-01 07:36:27',NULL),(40,0,'14-1',2,'image/jpeg',64893,'products/14-1.jpg','[]','2022-06-01 07:36:28','2022-06-01 07:36:28',NULL),(41,0,'14',2,'image/jpeg',53642,'products/14.jpg','[]','2022-06-01 07:36:28','2022-06-01 07:36:28',NULL),(42,0,'15-1',2,'image/jpeg',93293,'products/15-1.jpg','[]','2022-06-01 07:36:29','2022-06-01 07:36:29',NULL),(43,0,'15',2,'image/jpeg',70399,'products/15.jpg','[]','2022-06-01 07:36:29','2022-06-01 07:36:29',NULL),(44,0,'16-1',2,'image/jpeg',59168,'products/16-1.jpg','[]','2022-06-01 07:36:29','2022-06-01 07:36:29',NULL),(45,0,'16-2',2,'image/jpeg',74882,'products/16-2.jpg','[]','2022-06-01 07:36:30','2022-06-01 07:36:30',NULL),(46,0,'16-3',2,'image/jpeg',71574,'products/16-3.jpg','[]','2022-06-01 07:36:30','2022-06-01 07:36:30',NULL),(47,0,'16-4',2,'image/jpeg',87131,'products/16-4.jpg','[]','2022-06-01 07:36:31','2022-06-01 07:36:31',NULL),(48,0,'16-5',2,'image/jpeg',59849,'products/16-5.jpg','[]','2022-06-01 07:36:31','2022-06-01 07:36:31',NULL),(49,0,'16-6',2,'image/jpeg',91691,'products/16-6.jpg','[]','2022-06-01 07:36:32','2022-06-01 07:36:32',NULL),(50,0,'16',2,'image/jpeg',100953,'products/16.jpg','[]','2022-06-01 07:36:32','2022-06-01 07:36:32',NULL),(51,0,'17-1',2,'image/jpeg',17816,'products/17-1.jpg','[]','2022-06-01 07:36:32','2022-06-01 07:36:32',NULL),(52,0,'17',2,'image/jpeg',17551,'products/17.jpg','[]','2022-06-01 07:36:32','2022-06-01 07:36:32',NULL),(53,0,'18-1',2,'image/jpeg',13352,'products/18-1.jpg','[]','2022-06-01 07:36:33','2022-06-01 07:36:33',NULL),(54,0,'18',2,'image/jpeg',20319,'products/18.jpg','[]','2022-06-01 07:36:33','2022-06-01 07:36:33',NULL),(55,0,'19-1',2,'image/jpeg',22960,'products/19-1.jpg','[]','2022-06-01 07:36:33','2022-06-01 07:36:33',NULL),(56,0,'19',2,'image/jpeg',15156,'products/19.jpg','[]','2022-06-01 07:36:33','2022-06-01 07:36:33',NULL),(57,0,'2-1',2,'image/jpeg',56143,'products/2-1.jpg','[]','2022-06-01 07:36:33','2022-06-01 07:36:33',NULL),(58,0,'2',2,'image/jpeg',64331,'products/2.jpg','[]','2022-06-01 07:36:34','2022-06-01 07:36:34',NULL),(59,0,'20-1',2,'image/jpeg',27985,'products/20-1.jpg','[]','2022-06-01 07:36:35','2022-06-01 07:36:35',NULL),(60,0,'20',2,'image/jpeg',18065,'products/20.jpg','[]','2022-06-01 07:36:35','2022-06-01 07:36:35',NULL),(61,0,'21-1',2,'image/jpeg',28003,'products/21-1.jpg','[]','2022-06-01 07:36:35','2022-06-01 07:36:35',NULL),(62,0,'21',2,'image/jpeg',18198,'products/21.jpg','[]','2022-06-01 07:36:36','2022-06-01 07:36:36',NULL),(63,0,'22-1',2,'image/jpeg',28621,'products/22-1.jpg','[]','2022-06-01 07:36:36','2022-06-01 07:36:36',NULL),(64,0,'22',2,'image/jpeg',19002,'products/22.jpg','[]','2022-06-01 07:36:36','2022-06-01 07:36:36',NULL),(65,0,'23-1',2,'image/jpeg',35525,'products/23-1.jpg','[]','2022-06-01 07:36:37','2022-06-01 07:36:37',NULL),(66,0,'23',2,'image/jpeg',19227,'products/23.jpg','[]','2022-06-01 07:36:37','2022-06-01 07:36:37',NULL),(67,0,'24-1',2,'image/jpeg',20531,'products/24-1.jpg','[]','2022-06-01 07:36:37','2022-06-01 07:36:37',NULL),(68,0,'24',2,'image/jpeg',10609,'products/24.jpg','[]','2022-06-01 07:36:38','2022-06-01 07:36:38',NULL),(69,0,'3-1',2,'image/jpeg',79350,'products/3-1.jpg','[]','2022-06-01 07:36:38','2022-06-01 07:36:38',NULL),(70,0,'3',2,'image/jpeg',89626,'products/3.jpg','[]','2022-06-01 07:36:38','2022-06-01 07:36:38',NULL),(71,0,'4-1',2,'image/jpeg',58354,'products/4-1.jpg','[]','2022-06-01 07:36:39','2022-06-01 07:36:39',NULL),(72,0,'4',2,'image/jpeg',76935,'products/4.jpg','[]','2022-06-01 07:36:39','2022-06-01 07:36:39',NULL),(73,0,'5-1',2,'image/jpeg',91691,'products/5-1.jpg','[]','2022-06-01 07:36:39','2022-06-01 07:36:39',NULL),(74,0,'5',2,'image/jpeg',100953,'products/5.jpg','[]','2022-06-01 07:36:40','2022-06-01 07:36:40',NULL),(75,0,'6-1',2,'image/jpeg',74851,'products/6-1.jpg','[]','2022-06-01 07:36:40','2022-06-01 07:36:40',NULL),(76,0,'6',2,'image/jpeg',89464,'products/6.jpg','[]','2022-06-01 07:36:41','2022-06-01 07:36:41',NULL),(77,0,'7-1',2,'image/jpeg',66135,'products/7-1.jpg','[]','2022-06-01 07:36:41','2022-06-01 07:36:41',NULL),(78,0,'7',2,'image/jpeg',71573,'products/7.jpg','[]','2022-06-01 07:36:41','2022-06-01 07:36:41',NULL),(79,0,'8-1',2,'image/jpeg',41283,'products/8-1.jpg','[]','2022-06-01 07:36:42','2022-06-01 07:36:42',NULL),(80,0,'8',2,'image/jpeg',33964,'products/8.jpg','[]','2022-06-01 07:36:42','2022-06-01 07:36:42',NULL),(81,0,'9-1',2,'image/jpeg',78790,'products/9-1.jpg','[]','2022-06-01 07:36:43','2022-06-01 07:36:43',NULL),(82,0,'9',2,'image/jpeg',84813,'products/9.jpg','[]','2022-06-01 07:36:43','2022-06-01 07:36:43',NULL),(83,0,'1',3,'image/jpeg',274660,'customers/1.jpg','[]','2022-06-01 07:36:47','2022-06-01 07:36:47',NULL),(84,0,'2',3,'image/jpeg',295031,'customers/2.jpg','[]','2022-06-01 07:36:48','2022-06-01 07:36:48',NULL),(85,0,'3',3,'image/jpeg',183576,'customers/3.jpg','[]','2022-06-01 07:36:48','2022-06-01 07:36:48',NULL),(86,0,'4',3,'image/jpeg',245360,'customers/4.jpg','[]','2022-06-01 07:36:48','2022-06-01 07:36:48',NULL),(87,0,'5',3,'image/jpeg',262908,'customers/5.jpg','[]','2022-06-01 07:36:48','2022-06-01 07:36:48',NULL),(88,0,'6',3,'image/jpeg',109600,'customers/6.jpg','[]','2022-06-01 07:36:49','2022-06-01 07:36:49',NULL),(89,0,'7',3,'image/jpeg',159280,'customers/7.jpg','[]','2022-06-01 07:36:49','2022-06-01 07:36:49',NULL),(90,0,'8',3,'image/jpeg',99998,'customers/8.jpg','[]','2022-06-01 07:36:49','2022-06-01 07:36:49',NULL),(96,0,'1-1',5,'image/png',519229,'sliders/1-1.png','[]','2022-06-01 07:36:56','2022-06-01 07:36:56',NULL),(97,0,'1-2',5,'image/png',468469,'sliders/1-2.png','[]','2022-06-01 07:36:57','2022-06-01 07:36:57',NULL),(98,0,'1-3',5,'image/png',2697,'sliders/1-3.png','[]','2022-06-01 07:36:58','2022-06-01 07:36:58',NULL),(99,0,'2-1',5,'image/png',159240,'sliders/2-1.png','[]','2022-06-01 07:36:58','2022-06-01 07:36:58',NULL),(100,0,'2-2',5,'image/png',113574,'sliders/2-2.png','[]','2022-06-01 07:36:59','2022-06-01 07:36:59',NULL),(101,0,'2-3',5,'image/png',2697,'sliders/2-3.png','[]','2022-06-01 07:36:59','2022-06-01 07:36:59',NULL),(102,0,'3-1',5,'image/png',519229,'sliders/3-1.png','[]','2022-06-01 07:37:00','2022-06-01 07:37:00',NULL),(103,0,'3-2',5,'image/png',468469,'sliders/3-2.png','[]','2022-06-01 07:37:01','2022-06-01 07:37:01',NULL),(104,0,'4-1',5,'image/png',618556,'sliders/4-1.png','[]','2022-06-01 07:37:01','2022-06-01 07:37:01',NULL),(105,0,'4-2',5,'image/png',949745,'sliders/4-2.png','[]','2022-06-01 07:37:02','2022-06-01 07:37:02',NULL),(106,0,'4-3',5,'image/png',2697,'sliders/4-3.png','[]','2022-06-01 07:37:03','2022-06-01 07:37:03',NULL),(107,0,'5-1',5,'image/png',1273599,'sliders/5-1.png','[]','2022-06-01 07:37:03','2022-06-01 07:37:03',NULL),(108,0,'5-2',5,'image/png',695846,'sliders/5-2.png','[]','2022-06-01 07:37:04','2022-06-01 07:37:04',NULL),(109,0,'banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2022-06-01 07:37:05','2022-06-01 07:37:05',NULL),(110,0,'thumbnail-1',5,'image/jpeg',28966,'sliders/thumbnail-1.jpg','[]','2022-06-01 07:37:06','2022-06-01 07:37:06',NULL),(111,0,'thumbnail-2',5,'image/jpeg',13975,'sliders/thumbnail-2.jpg','[]','2022-06-01 07:37:06','2022-06-01 07:37:06',NULL),(112,0,'thumbnail-3',5,'image/jpeg',15751,'sliders/thumbnail-3.jpg','[]','2022-06-01 07:37:06','2022-06-01 07:37:06',NULL),(113,0,'thumbnail-4',5,'image/jpeg',16846,'sliders/thumbnail-4.jpg','[]','2022-06-01 07:37:06','2022-06-01 07:37:06',NULL),(114,0,'thumbnail-5',5,'image/jpeg',24938,'sliders/thumbnail-5.jpg','[]','2022-06-01 07:37:07','2022-06-01 07:37:07',NULL),(115,0,'thumbnail-6',5,'image/jpeg',63412,'sliders/thumbnail-6.jpg','[]','2022-06-01 07:37:07','2022-06-01 07:37:07',NULL),(116,0,'1',6,'image/png',533812,'news/1.png','[]','2022-06-01 07:37:08','2022-06-01 07:37:08',NULL),(117,0,'10',6,'image/png',439491,'news/10.png','[]','2022-06-01 07:37:09','2022-06-01 07:37:09',NULL),(118,0,'11',6,'image/png',593219,'news/11.png','[]','2022-06-01 07:37:10','2022-06-01 07:37:10',NULL),(119,0,'2',6,'image/png',633277,'news/2.png','[]','2022-06-01 07:37:11','2022-06-01 07:37:11',NULL),(120,0,'3',6,'image/png',372986,'news/3.png','[]','2022-06-01 07:37:12','2022-06-01 07:37:12',NULL),(121,0,'4',6,'image/png',438363,'news/4.png','[]','2022-06-01 07:37:13','2022-06-01 07:37:13',NULL),(122,0,'5',6,'image/png',483356,'news/5.png','[]','2022-06-01 07:37:14','2022-06-01 07:37:14',NULL),(123,0,'6',6,'image/png',502720,'news/6.png','[]','2022-06-01 07:37:14','2022-06-01 07:37:14',NULL),(124,0,'7',6,'image/png',465225,'news/7.png','[]','2022-06-01 07:37:15','2022-06-01 07:37:15',NULL),(125,0,'8',6,'image/png',489034,'news/8.png','[]','2022-06-01 07:37:16','2022-06-01 07:37:16',NULL),(126,0,'9',6,'image/png',328817,'news/9.png','[]','2022-06-01 07:37:17','2022-06-01 07:37:17',NULL),(127,0,'1',7,'image/png',50119,'promotion/1.png','[]','2022-06-01 07:37:19','2022-06-01 07:37:19',NULL),(128,0,'10',7,'image/png',108470,'promotion/10.png','[]','2022-06-01 07:37:19','2022-06-01 07:37:19',NULL),(129,0,'11',7,'image/png',106453,'promotion/11.png','[]','2022-06-01 07:37:20','2022-06-01 07:37:20',NULL),(130,0,'12',7,'image/png',104430,'promotion/12.png','[]','2022-06-01 07:37:20','2022-06-01 07:37:20',NULL),(131,0,'2',7,'image/png',38339,'promotion/2.png','[]','2022-06-01 07:37:21','2022-06-01 07:37:21',NULL),(132,0,'3',7,'image/png',65066,'promotion/3.png','[]','2022-06-01 07:37:21','2022-06-01 07:37:21',NULL),(133,0,'4',7,'image/png',62462,'promotion/4.png','[]','2022-06-01 07:37:22','2022-06-01 07:37:22',NULL),(134,0,'5',7,'image/png',190175,'promotion/5.png','[]','2022-06-01 07:37:22','2022-06-01 07:37:22',NULL),(135,0,'6',7,'image/png',190175,'promotion/6.png','[]','2022-06-01 07:37:23','2022-06-01 07:37:23',NULL),(136,0,'7',7,'image/png',272480,'promotion/7.png','[]','2022-06-01 07:37:24','2022-06-01 07:37:24',NULL),(137,0,'8',7,'image/png',73547,'promotion/8.png','[]','2022-06-01 07:37:24','2022-06-01 07:37:24',NULL),(138,0,'9',7,'image/png',126894,'promotion/9.png','[]','2022-06-01 07:37:25','2022-06-01 07:37:25',NULL),(139,0,'app-store',8,'image/jpeg',29714,'general/app-store.jpg','[]','2022-06-01 07:37:27','2022-06-01 07:37:27',NULL),(140,0,'category-1',8,'image/png',4323,'general/category-1.png','[]','2022-06-01 07:37:27','2022-06-01 07:37:27',NULL),(141,0,'facebook',8,'image/png',646,'general/facebook.png','[]','2022-06-01 07:37:28','2022-06-01 07:37:28',NULL),(142,0,'favicon',8,'image/png',3890,'general/favicon.png','[]','2022-06-01 07:37:28','2022-06-01 07:37:28',NULL),(143,0,'google-play',8,'image/jpeg',29477,'general/google-play.jpg','[]','2022-06-01 07:37:28','2022-06-01 07:37:28',NULL),(144,0,'header-bg',8,'image/png',16995,'general/header-bg.png','[]','2022-06-01 07:37:29','2022-06-01 07:37:29',NULL),(145,0,'home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2022-06-01 07:37:29','2022-06-01 07:37:29',NULL),(146,0,'icon-1',8,'image/png',2024,'general/icon-1.png','[]','2022-06-01 07:37:30','2022-06-01 07:37:30',NULL),(147,0,'icon-2',8,'image/png',3531,'general/icon-2.png','[]','2022-06-01 07:37:30','2022-06-01 07:37:30',NULL),(148,0,'icon-3',8,'image/png',2344,'general/icon-3.png','[]','2022-06-01 07:37:30','2022-06-01 07:37:30',NULL),(149,0,'icon-4',8,'image/png',2314,'general/icon-4.png','[]','2022-06-01 07:37:30','2022-06-01 07:37:30',NULL),(150,0,'icon-5',8,'image/png',2853,'general/icon-5.png','[]','2022-06-01 07:37:31','2022-06-01 07:37:31',NULL),(151,0,'instagram',8,'image/png',2586,'general/instagram.png','[]','2022-06-01 07:37:31','2022-06-01 07:37:31',NULL),(152,0,'loading',8,'image/gif',25062,'general/loading.gif','[]','2022-06-01 07:37:31','2022-06-01 07:37:31',NULL),(153,0,'login-1',8,'image/png',270812,'general/login-1.png','[]','2022-06-01 07:37:32','2022-06-01 07:37:32',NULL),(154,0,'logo',8,'image/png',7698,'general/logo.png','[]','2022-06-01 07:37:32','2022-06-01 07:37:32',NULL),(155,0,'newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2022-06-01 07:37:32','2022-06-01 07:37:32',NULL),(156,0,'newsletter-image',8,'image/png',116235,'general/newsletter-image.png','[]','2022-06-01 07:37:33','2022-06-01 07:37:33',NULL),(157,0,'open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2022-06-01 07:37:33','2022-06-01 07:37:33',NULL),(158,0,'payment-methods',8,'image/png',10634,'general/payment-methods.png','[]','2022-06-01 07:37:34','2022-06-01 07:37:34',NULL),(159,0,'pinterest',8,'image/png',2128,'general/pinterest.png','[]','2022-06-01 07:37:34','2022-06-01 07:37:34',NULL),(160,0,'twitter',8,'image/png',1759,'general/twitter.png','[]','2022-06-01 07:37:34','2022-06-01 07:37:34',NULL),(161,0,'youtube',8,'image/png',1083,'general/youtube.png','[]','2022-06-01 07:37:35','2022-06-01 07:37:35',NULL),(162,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-06-01 07:37:35','2022-06-01 07:37:35',NULL),(163,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-06-01 07:37:35','2022-06-01 07:37:35',NULL),(164,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-06-01 07:37:35','2022-06-01 07:37:35',NULL),(165,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-06-01 07:37:36','2022-06-01 07:37:36',NULL),(166,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-06-01 07:37:36','2022-06-01 07:37:36',NULL),(167,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-06-01 07:37:36','2022-06-01 07:37:36',NULL),(168,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-06-01 07:37:36','2022-06-01 07:37:36',NULL),(169,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-06-01 07:37:36','2022-06-01 07:37:36',NULL),(170,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-06-01 07:37:37','2022-06-01 07:37:37',NULL),(171,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-06-01 07:37:37','2022-06-01 07:37:37',NULL),(172,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-06-01 07:37:37','2022-06-01 07:37:37',NULL),(173,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-06-01 07:37:37','2022-06-01 07:37:37',NULL),(174,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-06-01 07:37:37','2022-06-01 07:37:37',NULL),(175,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-06-01 07:37:38','2022-06-01 07:37:38',NULL),(176,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-06-01 07:37:38','2022-06-01 07:37:38',NULL),(177,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-06-01 07:37:38','2022-06-01 07:37:38',NULL),(178,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-06-01 07:37:38','2022-06-01 07:37:38',NULL),(179,0,'1',10,'image/png',431894,'flash-sales/1.png','[]','2022-06-03 21:02:30','2022-06-03 21:02:30',NULL),(180,0,'2',10,'image/png',118543,'flash-sales/2.png','[]','2022-06-03 21:02:31','2022-06-03 21:02:31',NULL),(181,0,'3',10,'image/png',163085,'flash-sales/3.png','[]','2022-06-03 21:02:31','2022-06-03 21:02:31',NULL),(182,0,'4',10,'image/png',195017,'flash-sales/4.png','[]','2022-06-03 21:02:32','2022-06-03 21:02:32',NULL),(183,0,'5',10,'image/png',153833,'flash-sales/5.png','[]','2022-06-03 21:02:33','2022-06-03 21:02:33',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2022-06-01 07:36:12','2022-06-01 07:36:12',NULL),(2,0,'products','products',0,'2022-06-01 07:36:22','2022-06-01 07:36:22',NULL),(3,0,'customers','customers',0,'2022-06-01 07:36:47','2022-06-01 07:36:47',NULL),(5,0,'sliders','sliders',0,'2022-06-01 07:36:56','2022-06-01 07:36:56',NULL),(6,0,'news','news',0,'2022-06-01 07:37:08','2022-06-01 07:37:08',NULL),(7,0,'promotion','promotion',0,'2022-06-01 07:37:19','2022-06-01 07:37:19',NULL),(8,0,'general','general',0,'2022-06-01 07:37:27','2022-06-01 07:37:27',NULL),(9,0,'stores','stores',0,'2022-06-01 07:37:35','2022-06-01 07:37:35',NULL),(10,0,'flash-sales','flash-sales',0,'2022-06-03 21:02:30','2022-06-03 21:02:30',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-06-01 07:37:39','2022-06-01 07:37:39'),(2,2,'header-navigation','2022-06-01 07:37:39','2022-06-01 07:37:39'),(3,6,'main-menu','2022-06-01 07:37:40','2022-06-01 07:37:40'),(4,7,'header-navigation','2022-06-01 07:37:40','2022-06-01 07:37:40');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_reference_id_index` (`reference_id`),
  KEY `menu_nodes_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(2,1,1,1,'Botble\\Page\\Models\\Page','',NULL,0,'Home 1',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2022-06-01 07:37:39','2022-06-01 07:37:40'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(53,6,52,1,'Botble\\Page\\Models\\Page','',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-06-01 07:37:40','2022-06-01 07:37:40');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-06-01 07:37:39','2022-06-01 07:37:39'),(2,'Header menu','header-menu','published','2022-06-01 07:37:39','2022-06-01 07:37:39'),(3,'Product categories','product-categories','published','2022-06-01 07:37:39','2022-06-01 07:37:39'),(4,'Information','information','published','2022-06-01 07:37:39','2022-06-01 07:37:39'),(5,'Company','company','published','2022-06-01 07:37:40','2022-06-01 07:37:40'),(6,'Menu chính','menu-chinh','published','2022-06-01 07:37:40','2022-06-01 07:37:40'),(7,'Menu trên cùng','menu-tren-cung','published','2022-06-01 07:37:40','2022-06-01 07:37:40'),(8,'Product categories','danh-muc-san-pham','published','2022-06-01 07:37:40','2022-06-01 07:37:40'),(9,'Information','thong-tin','published','2022-06-01 07:37:40','2022-06-01 07:37:40'),(10,'Công ty','cong-ty','published','2022-06-01 07:37:40','2022-06-01 07:37:40');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:21','2022-06-01 07:36:21'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-06-01 07:36:22','2022-06-01 07:36:22'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:45','2022-06-01 07:36:45'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-06-01 07:36:46','2022-06-01 07:36:46'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:07','2022-06-01 07:37:07'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:08','2022-06-01 07:37:08'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:08','2022-06-01 07:37:08'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:08','2022-06-01 07:37:08'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:08','2022-06-01 07:37:08'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:08','2022-06-01 07:37:08'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-06-01 07:37:08','2022-06-01 07:37:08'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-06-01 07:37:18','2022-06-01 07:37:18'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-06-01 07:37:18','2022-06-01 07:37:18'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-06-01 07:37:18','2022-06-01 07:37:18'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-06-01 07:37:18','2022-06-01 07:37:18'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2022-06-01 07:37:19','2022-06-01 07:37:19'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2022-06-01 07:37:19','2022-06-01 07:37:19'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:25','2022-06-01 07:37:25'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2022-06-01 07:37:26','2022-06-01 07:37:26'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(149,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(150,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(151,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',6,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(152,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',7,'Botble\\Marketplace\\Models\\Store','2022-06-01 07:37:39','2022-06-01 07:37:39'),(153,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:33','2022-06-03 21:02:33'),(154,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(155,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(156,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(157,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(158,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(159,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(160,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(161,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34'),(162,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-06-03 21:02:34','2022-06-03 21:02:34');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2020_03_05_041139_create_ecommerce_tables',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(28,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(29,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(30,'2021_02_16_092633_remove_default_value_for_author_type',1),(31,'2021_02_18_073505_update_table_ec_reviews',1),(32,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(33,'2021_03_10_025153_change_column_tax_amount',1),(34,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(35,'2021_03_27_144913_add_customer_type_into_table_payments',1),(36,'2021_04_28_074008_ecommerce_create_product_label_table',1),(37,'2021_05_24_034720_make_column_currency_nullable',1),(38,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(39,'2021_06_28_153141_correct_slugs_data',1),(40,'2021_07_06_030002_create_marketplace_table',1),(41,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(42,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(43,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(44,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(45,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(46,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(47,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(48,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(49,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(50,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(51,'2021_10_19_020859_update_metadata_field',1),(52,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(53,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(54,'2021_11_23_071403_correct_languages_for_product_variations',1),(55,'2021_11_28_031808_add_product_tags_translations',1),(56,'2021_12_01_031123_add_featured_image_to_ec_products',1),(57,'2021_12_02_035301_add_ads_translations_table',1),(58,'2021_12_03_030600_create_blog_translations',1),(59,'2021_12_03_075608_create_page_translations',1),(60,'2021_12_03_082134_create_faq_translations',1),(61,'2021_12_03_084118_create_location_translations',1),(62,'2021_12_03_094518_migrate_old_location_data',1),(63,'2021_12_06_031304_update_table_mp_customer_revenues',1),(64,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(65,'2022_01_01_033107_update_table_ec_shipments',1),(66,'2022_01_16_085908_improve_plugin_location',1),(67,'2022_02_16_042457_improve_product_attribute_sets',1),(68,'2022_03_22_075758_correct_product_name',1),(69,'2022_04_19_113334_add_index_to_ec_products',1),(70,'2022_04_19_113923_add_index_to_table_posts',1),(71,'2022_04_20_100851_add_index_to_media_table',1),(72,'2022_04_20_101046_add_index_to_menu_table',1),(73,'2022_04_28_144405_remove_unused_table',1),(74,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(75,'2022_05_18_143720_add_index_to_table_ec_product_categories',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,8,1,61.60,0.00,61.60,610.30,'USD',NULL,'2022-06-02 13:02:36','2022-06-02 13:02:36',0,NULL),(2,2,3,390.60,0.00,390.60,0.00,'USD',NULL,'2022-05-31 21:02:37','2022-05-31 21:02:37',0,NULL),(3,10,11,124.30,0.00,124.30,324.40,'USD',NULL,'2022-05-28 21:02:37','2022-05-28 21:02:37',0,NULL),(4,8,18,556.90,0.00,556.90,671.90,'USD',NULL,'2022-05-28 13:02:37','2022-05-28 13:02:37',0,NULL),(5,5,19,123.20,0.00,123.20,613.00,'USD',NULL,'2022-05-29 21:02:37','2022-05-29 21:02:37',0,NULL),(6,5,23,235.20,0.00,235.20,736.20,'USD',NULL,'2022-05-20 21:02:37','2022-05-20 21:02:37',0,NULL),(7,5,26,347.20,0.00,347.20,971.40,'USD',NULL,'2022-05-12 09:02:37','2022-05-12 09:02:37',0,NULL),(8,10,28,123.20,0.00,123.20,448.70,'USD',NULL,'2022-05-10 17:02:37','2022-05-10 17:02:37',0,NULL),(9,7,30,626.20,0.00,626.20,837.40,'USD',NULL,'2022-05-09 01:02:38','2022-05-09 01:02:38',0,NULL),(10,8,31,117.60,0.00,117.60,1228.80,'USD',NULL,'2022-05-13 13:02:38','2022-05-13 13:02:38',0,NULL),(11,5,35,347.20,0.00,347.20,1318.60,'USD',NULL,'2022-05-16 21:02:38','2022-05-16 21:02:38',0,NULL),(12,10,37,347.20,0.00,347.20,571.90,'USD',NULL,'2022-05-12 17:02:38','2022-05-12 17:02:38',0,NULL),(13,9,39,137.50,0.00,137.50,403.70,'USD',NULL,'2022-05-04 21:02:38','2022-05-04 21:02:38',0,NULL),(14,7,41,124.30,0.00,124.30,1463.60,'USD',NULL,'2022-05-10 09:02:38','2022-05-10 09:02:38',0,NULL),(15,9,43,84.00,0.00,84.00,541.20,'USD',NULL,'2022-05-27 13:02:38','2022-05-27 13:02:38',0,NULL),(16,10,48,123.20,0.00,123.20,919.10,'USD',NULL,'2022-05-18 13:02:39','2022-05-18 13:02:39',0,NULL),(17,9,50,264.60,0.00,264.60,625.20,'USD',NULL,'2022-05-09 09:02:39','2022-05-09 09:02:39',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,17.00,390.60,'USD','','{\"name\":\"Cristopher Boyle\",\"number\":\"+14233171783\",\"full_name\":\"Gunner Wilderman\",\"description\":\"Mr. Daron Shanahan\"}',NULL,0,'processing',NULL,'2022-06-03 21:02:39','2022-06-03 21:02:39',NULL),(2,2,0.00,14.00,373.60,'USD','','{\"name\":\"Cristopher Boyle\",\"number\":\"+14233171783\",\"full_name\":\"Gunner Wilderman\",\"description\":\"Mr. Daron Shanahan\"}',NULL,0,'pending',NULL,'2022-06-03 21:02:39','2022-06-03 21:02:39',NULL),(3,5,0.00,498.00,1665.80,'USD','','{\"name\":\"Rozella Kassulke\",\"number\":\"+15677807237\",\"full_name\":\"Mr. Arjun Stark Sr.\",\"description\":\"Jamal Barrows\"}',NULL,0,'processing',NULL,'2022-06-03 21:02:39','2022-06-03 21:02:39',NULL),(4,5,0.00,243.00,1167.80,'USD','','{\"name\":\"Rozella Kassulke\",\"number\":\"+15677807237\",\"full_name\":\"Mr. Arjun Stark Sr.\",\"description\":\"Jamal Barrows\"}',NULL,0,'completed',NULL,'2022-06-03 21:02:39','2022-06-03 21:02:39',NULL),(5,5,0.00,209.00,924.80,'USD','','{\"name\":\"Rozella Kassulke\",\"number\":\"+15677807237\",\"full_name\":\"Mr. Arjun Stark Sr.\",\"description\":\"Jamal Barrows\"}',NULL,0,'processing',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(6,5,0.00,163.00,715.80,'USD','','{\"name\":\"Rozella Kassulke\",\"number\":\"+15677807237\",\"full_name\":\"Mr. Arjun Stark Sr.\",\"description\":\"Jamal Barrows\"}',NULL,0,'completed',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(7,7,0.00,405.00,1587.90,'USD','','{\"name\":\"Ransom Kunde\",\"number\":\"+15307622502\",\"full_name\":\"Prof. Raul Aufderhar IV\",\"description\":\"Kyla Hickle\"}',NULL,0,'completed',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(8,7,0.00,24.00,1182.90,'USD','','{\"name\":\"Ransom Kunde\",\"number\":\"+15307622502\",\"full_name\":\"Prof. Raul Aufderhar IV\",\"description\":\"Kyla Hickle\"}',NULL,0,'completed',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(9,8,0.00,349.00,1346.40,'USD','','{\"name\":\"Eloy Walker\",\"number\":\"+15406572749\",\"full_name\":\"Jerrold Kemmer\",\"description\":\"Carlos Sawayn\"}',NULL,0,'pending',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(10,8,0.00,9.00,997.40,'USD','','{\"name\":\"Eloy Walker\",\"number\":\"+15406572749\",\"full_name\":\"Jerrold Kemmer\",\"description\":\"Carlos Sawayn\"}',NULL,0,'completed',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(11,9,0.00,204.00,889.80,'USD','','{\"name\":\"Alayna Mayert Jr.\",\"number\":\"+13147956560\",\"full_name\":\"Lea Bartoletti\",\"description\":\"Vena Hayes\"}',NULL,0,'processing',NULL,'2022-06-03 21:02:40','2022-06-03 21:02:40',NULL),(12,9,0.00,178.00,685.80,'USD','','{\"name\":\"Alayna Mayert Jr.\",\"number\":\"+13147956560\",\"full_name\":\"Lea Bartoletti\",\"description\":\"Vena Hayes\"}',NULL,0,'pending',NULL,'2022-06-03 21:02:41','2022-06-03 21:02:41',NULL),(13,9,0.00,106.00,507.80,'USD','','{\"name\":\"Alayna Mayert Jr.\",\"number\":\"+13147956560\",\"full_name\":\"Lea Bartoletti\",\"description\":\"Vena Hayes\"}',NULL,0,'processing',NULL,'2022-06-03 21:02:41','2022-06-03 21:02:41',NULL),(14,9,0.00,75.00,401.80,'USD','','{\"name\":\"Alayna Mayert Jr.\",\"number\":\"+13147956560\",\"full_name\":\"Lea Bartoletti\",\"description\":\"Vena Hayes\"}',NULL,0,'completed',NULL,'2022-06-03 21:02:41','2022-06-03 21:02:41',NULL),(15,10,0.00,298.00,1042.30,'USD','','{\"name\":\"Dallas Bayer\",\"number\":\"+18207569695\",\"full_name\":\"Eloisa Barton\",\"description\":\"Bernita Dickens\"}',NULL,0,'pending',NULL,'2022-06-03 21:02:41','2022-06-03 21:02:41',NULL),(16,10,0.00,134.00,744.30,'USD','','{\"name\":\"Dallas Bayer\",\"number\":\"+18207569695\",\"full_name\":\"Eloisa Barton\",\"description\":\"Bernita Dickens\"}',NULL,0,'processing',NULL,'2022-06-03 21:02:41','2022-06-03 21:02:41',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','zwelch@example.com','+14309929097','795 Bobbie Wells Suite 387','EG','Nevada','Guyfurt',2,'stores/1.png','Consequuntur veniam rem odio doloremque.','Repellat optio veniam ipsa quas. Iste est error omnis natus. Omnis enim qui nobis ut vitae id minus.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(2,'Global Office','shanahan.hoyt@example.org','+13209367209','1376 Treutel Creek','BG','Montana','North Brendon',3,'stores/2.png','Fugiat nostrum consequatur dolore quasi.','Et voluptatem quam non explicabo. Atque sint qui dolorem nam maxime. Et veniam omnis exercitationem praesentium ut.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(3,'Young Shop','iva57@example.org','+15712033742','872 Spinka Crescent','VG','Illinois','Dickichester',5,'stores/3.png','Minus dolor consectetur et.','Sit non autem cumque atque neque aliquam. Ea id voluptas magni porro molestias corporis. Vitae et eos atque rerum repellat.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(4,'Global Store','patience87@example.net','+17852397437','386 Marquardt Camp Apt. 986','MK','Vermont','Marquardtberg',7,'stores/4.png','Vel repudiandae ipsum rem dolorem sit.','Velit aut porro nam est. Sunt ex blanditiis aut dignissimos ipsam voluptates doloribus. Saepe id repudiandae vitae eveniet.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(5,'Robert’s Store','amy62@example.com','+19548477371','62646 Murphy Brook Suite 662','LT','New Mexico','South Felicita',8,'stores/5.png','Blanditiis voluptas quia et aut expedita alias.','Sed exercitationem porro tenetur atque. Ipsa sit autem suscipit iste quam. Ducimus iusto nostrum rerum doloremque qui. Aperiam qui nemo odio aut.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(6,'Stouffer','anderson.precious@example.net','+15027741514','95670 Mitchel View','MH','Connecticut','Krajcikport',9,'stores/6.png','Amet numquam velit doloremque consequuntur aut.','Sed sunt eaque debitis aut perspiciatis. Error expedita quisquam quasi porro ipsa. Iure nobis et vel sed.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39'),(7,'StarKist','xquitzon@example.org','+19715534874','6975 Alessia Mill Apt. 972','RE','Oregon','Kemmerberg',10,'stores/7.png','Exercitationem natus porro tempora.','Velit aut dolorem possimus esse. Ex amet quasi recusandae voluptatem rerum vel. Dolor praesentium recusandae exercitationem.','published',NULL,'2022-06-01 07:37:39','2022-06-01 07:37:39');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,359.60,0.00,390.60,'$2y$10$o0tEJO0TH0/Pf9GePnrmEuRSo6tsYrQ3lLILzNVRX5N7Sch/T3Zsa','{\"name\":\"Cristopher Boyle\",\"number\":\"+14233171783\",\"full_name\":\"Gunner Wilderman\",\"description\":\"Mr. Daron Shanahan\"}','2022-06-01 07:37:39','2022-06-03 21:02:39'),(2,3,-1.00,0.00,0.00,'$2y$10$WvIvJHKxvxF4LtHzfe4r0.H2yWHPrZnvNegVQezhNhdeqm9YQeVfC','{\"name\":\"Roslyn Farrell\",\"number\":\"+19726922453\",\"full_name\":\"Norbert Fritsch\",\"description\":\"Mr. Lester Harber\"}','2022-06-01 07:37:39','2022-06-01 07:37:44'),(3,5,552.80,0.00,1885.80,'$2y$10$UmZQtzU.xGJ4einP6N8/beOqtPY9RE2o2OI7IFQVVnNP/MFkMM.7K','{\"name\":\"Rozella Kassulke\",\"number\":\"+15677807237\",\"full_name\":\"Mr. Arjun Stark Sr.\",\"description\":\"Jamal Barrows\"}','2022-06-01 07:37:39','2022-06-03 21:02:40'),(4,7,1158.90,0.00,1800.90,'$2y$10$ot9osng.52wTLde/3rSNI.fQjPJAfgAQrqG2TzWvJnniQiLs0Kgvu','{\"name\":\"Ransom Kunde\",\"number\":\"+15307622502\",\"full_name\":\"Prof. Raul Aufderhar IV\",\"description\":\"Kyla Hickle\"}','2022-06-01 07:37:39','2022-06-03 21:02:40'),(5,8,988.40,0.00,2842.40,'$2y$10$SGadDDy.v0PwT7Y4o3vHpeI8RiHrYIQ6qUt6XZrYY3oTo4eLsYMe.','{\"name\":\"Eloy Walker\",\"number\":\"+15406572749\",\"full_name\":\"Jerrold Kemmer\",\"description\":\"Carlos Sawayn\"}','2022-06-01 07:37:39','2022-06-03 21:02:40'),(6,9,326.80,0.00,1089.80,'$2y$10$i3UfzHzkGizvI2s7VyDsW.yUcW18JZniWvEOxJhlMwUZB8j.Km5Ey','{\"name\":\"Alayna Mayert Jr.\",\"number\":\"+13147956560\",\"full_name\":\"Lea Bartoletti\",\"description\":\"Vena Hayes\"}','2022-06-01 07:37:39','2022-06-03 21:02:41'),(7,10,610.30,0.00,1188.30,'$2y$10$vW99GogkHjjDZ7rTHE5urusFh63O.PVaGpPhKJM3Baz9ANAN8gm8W','{\"name\":\"Dallas Bayer\",\"number\":\"+18207569695\",\"full_name\":\"Eloisa Barton\",\"description\":\"Bernita Dickens\"}','2022-06-01 07:37:39','2022-06-03 21:02:41');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(7,'About us','<p>King eagerly, and he went on, spreading out the answer to it?\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the Hatter. \'You MUST remember,\' remarked the King, and he wasn\'t one?\' Alice asked. \'We called him Tortoise because he was going to leave the court; but on second thoughts she decided to remain where she was, and waited. When the Mouse was swimming away from her as hard as it didn\'t sound at all fairly,\' Alice began, in a deep voice, \'are done with a pair of white kid gloves.</p><p>Alice thought this a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the Queen in a coaxing tone, and she tried to open her mouth; but she remembered trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was very likely true.) Down, down, down. There was not here before,\' said the Dormouse crossed the court, she said this, she came.</p><p>White Rabbit blew three blasts on the English coast you find a number of cucumber-frames there must be!\' thought Alice. The poor little thing sobbed again (or grunted, it was a little timidly: \'but it\'s no use now,\' thought poor Alice, and sighing. \'It IS a Caucus-race?\' said Alice; not that she still held the pieces of mushroom in her own children. \'How should I know?\' said Alice, always ready to ask help of any that do,\' Alice hastily replied; \'only one doesn\'t like changing so often, you.</p><p>I will tell you just now what the next question is, what?\' The great question is, what did the archbishop find?\' The Mouse did not at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was very deep, or she fell very slowly, for she felt a little before she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall do nothing of the Mock Turtle. \'Hold your tongue, Ma!\' said the Cat. \'--so long as I tell you!\' said Alice.</p>',1,NULL,'right-sidebar',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(9,'Terms & Conditions','<p>I\'ll set Dinah at you!\' There was a real Turtle.\' These words were followed by a row of lamps hanging from the time it vanished quite slowly, beginning with the other guinea-pig cheered, and was just in time to be no doubt that it was certainly English. \'I don\'t know the way out of his great wig.\' The judge, by the way, was the first position in dancing.\' Alice said; but was dreadfully puzzled by the way the people that walk with their heads!\' and the Dormouse crossed the court, she said to.</p><p>Duchess; \'I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging for apples, yer honour!\' \'Digging for apples, indeed!\' said the Mock Turtle. \'Very much indeed,\' said Alice. The poor little thing grunted in reply (it had left off when they liked, so that they had settled down again into its eyes by this time, and was in the schoolroom, and though this was of very little use without my shoulders. Oh, how I wish I hadn\'t gone down that rabbit-hole--and yet--and.</p><p>Which shall sing?\' \'Oh, YOU sing,\' said the Mock Turtle in the wind, and was immediately suppressed by the little golden key, and unlocking the door and found in it a minute or two to think that there was no longer to be a book written about me, that there was hardly room for this, and Alice was just in time to wash the things between whiles.\' \'Then you may stand down,\' continued the Gryphon. \'The reason is,\' said the King, who had got its head to keep herself from being run over; and the.</p><p>Queen never left off quarrelling with the birds and beasts, as well as she remembered how small she was as long as I used--and I don\'t understand. Where did they live at the frontispiece if you don\'t know what \"it\" means well enough, when I grow at a reasonable pace,\' said the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. One of the court,\" and I had to pinch it to half-past one as long as there was a large cat which was a very.</p>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(10,'Returns & Exchanges','<p>Alice alone with the birds and animals that had made the whole party look so grave that she began nursing her child again, singing a sort of idea that they must needs come wriggling down from the change: and Alice rather unwillingly took the place of the room again, no wonder she felt a violent blow underneath her chin: it had VERY long claws and a pair of gloves and the whole court was in a tone of great relief. \'Call the first minute or two. \'They couldn\'t have wanted it much,\' said the.</p><p>TO BE TRUE--\" that\'s the queerest thing about it.\' (The jury all wrote down all three dates on their slates, and then I\'ll tell him--it was for bringing the cook took the hookah into its eyes by this time?\' she said this, she looked down at her own children. \'How should I know?\' said Alice, feeling very glad to find that she was quite silent for a great hurry; \'this paper has just been reading about; and when Alice had begun to dream that she had been jumping about like mad things all this.</p><p>White Rabbit returning, splendidly dressed, with a smile. There was not even get her head pressing against the roof of the conversation. Alice replied, so eagerly that the hedgehog to, and, as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me the truth: did you manage to do that,\' said the Hatter, and here the conversation dropped, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the entrance of the evening, beautiful.</p><p>I was going to say,\' said the Lory, who at last came a rumbling of little Alice herself, and once she remembered that she tipped over the verses the White Rabbit, who was trembling down to look about her pet: \'Dinah\'s our cat. And she\'s such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall sit here,\' the Footman continued in the way YOU manage?\' Alice asked. \'We called him Tortoise because he was obliged to write with one eye, How the.</p>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(11,'Shipping & Delivery','<p>Ma!\' said the King. Here one of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance? Will you, won\'t you, won\'t you, will you, won\'t you join the dance. Would not, could not even get her head down to the Queen, who were lying on their slates, and then nodded. \'It\'s no business there, at any rate, there\'s no meaning in it,\' said Five, in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on your shoes and.</p><p>The three soldiers wandered about for some while in silence. At last the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave one sharp kick, and waited till she too began dreaming after a minute or two the Caterpillar took the watch and looked at it uneasily, shaking it every now and then, and holding it to the Gryphon. \'Do you play croquet?\' The soldiers were always getting up and went on.</p><p>Dormouse, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the jelly-fish out of the baby?\' said the Caterpillar. This was such a wretched height to rest herself, and fanned herself with one of the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Cat. \'I don\'t think they play at all comfortable, and it set to work shaking him and.</p><p>King, rubbing his hands; \'so now let the jury--\' \'If any one of the Lobster Quadrille?\' the Gryphon replied very gravely. \'What else had you to sit down without being invited,\' said the King. \'When did you manage on the back. However, it was a body to cut it off from: that he had come back again, and the moment they saw the Mock Turtle in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, won\'t you, won\'t you, won\'t you, will you, won\'t you.</p>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(12,'Privacy Policy','<p>Alice. \'I\'ve read that in the pool, \'and she sits purring so nicely by the officers of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the second time round, she found herself at last the Mock Turtle in the distance, screaming with passion. She had not long to doubt, for the fan and two or three of the March Hare said in a great hurry, muttering to himself in an offended tone, \'so I should think it would be four thousand miles down, I think--\' (for, you.</p><p>Alice. \'Who\'s making personal remarks now?\' the Hatter and the baby was howling so much frightened to say \'I once tasted--\' but checked herself hastily, and said \'No, never\') \'--so you can have no answers.\' \'If you can\'t think! And oh, my poor little Lizard, Bill, was in managing her flamingo: she succeeded in bringing herself down to them, and then all the rats and--oh dear!\' cried Alice, quite forgetting that she ran off as hard as it turned round and round the hall, but they began solemnly.</p><p>Those whom she sentenced were taken into custody by the soldiers, who of course you know the song, perhaps?\' \'I\'ve heard something splashing about in a ring, and begged the Mouse was bristling all over, and she felt that this could not be denied, so she went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of them even when they hit her; and when she was to twist it up into a small passage, not much like keeping so close to her: its face to see anything; then she noticed.</p><p>Mock Turtle Soup is made from,\' said the Duchess; \'and the moral of that is--\"Oh, \'tis love, \'tis love, that makes you forget to talk. I can\'t take more.\' \'You mean you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what you\'re doing!\' cried Alice, jumping up in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\'.</p>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-06-01 07:37:19','2022-06-01 07:37:19');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>However, everything is queer to-day.\' Just then she heard a little shaking among the branches, and every now and then raised himself upon tiptoe, put his shoes on. \'--and just take his head contemptuously. \'I dare say there may be different,\' said Alice; \'all I know is, it would be grand, certainly,\' said Alice as he wore his crown over the verses on his knee, and the sound of many footsteps, and Alice guessed who it was, and, as there was room for YOU, and no one else seemed inclined to say.</p><p>Caterpillar. \'Well, perhaps not,\' said Alice sadly. \'Hand it over here,\' said the Gryphon. \'Do you know about it, you know.\' Alice had got its neck nicely straightened out, and was going to dive in among the distant sobs of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, that I should think very likely true.) Down, down, down. Would the fall was over. Alice was a very decided tone: \'tell her something worth hearing. For some minutes it seemed quite natural to.</p><p>Duchess, it had some kind of rule, \'and vinegar that makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most confusing thing I ever saw in another moment, splash! she was getting so used to queer things happening. While she was out of sight. Alice remained looking thoughtfully at the other arm curled round her head. \'If I eat one of the game, the Queen to-day?\' \'I should like to show you! A little.</p><p>Alice, \'or perhaps they won\'t walk the way out of its mouth and yawned once or twice, half hoping that they could not make out exactly what they WILL do next! As for pulling me out of breath, and till the eyes appeared, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can creep under the door; so either way I\'ll get into that lovely garden. I think I can creep under the sea,\' the Gryphon as if nothing had happened. \'How am I to get out at the moment, \'My dear! I.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Hatter, \'you wouldn\'t talk about trouble!\' said the cook. The King and Queen of Hearts were seated on their slates, and she felt a little glass box that was said, and went on planning to herself how she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Duchess: \'and the moral of that is--\"The more there is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who felt ready to sink into the wood for fear of their wits!\' So she sat on, with closed eyes, and feebly stretching out.</p><p>Alice, very loudly and decidedly, and there she saw in my time, but never ONE with such a puzzled expression that she was playing against herself, for this time the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of its mouth open, gazing up into the sky. Alice went timidly up to the Classics master, though. He was an immense length of neck, which seemed to be lost: away went Alice like the Queen?\' said the Hatter, \'I cut some more tea,\' the Hatter was the Rabbit say, \'A.</p><p>Alice, as she could not stand, and she told her sister, who was reading the list of singers. \'You may go,\' said the Dormouse. \'Fourteenth of March, I think it was,\' the March Hare. \'Then it ought to be no sort of thing never happened, and now here I am in the sea, \'and in that ridiculous fashion.\' And he got up and leave the room, when her eye fell on a little door was shut again, and made a snatch in the trial done,\' she thought, \'it\'s sure to make ONE respectable person!\' Soon her eye fell.</p><p>He sent them word I had it written down: but I grow at a reasonable pace,\' said the Cat, and vanished again. Alice waited till the eyes appeared, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last came a little pattering of feet on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the Lizard\'s slate-pencil, and the Dormouse go on for some minutes. The Caterpillar was the same height as herself; and when she looked down, was an.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>I\'m a hatter.\' Here the other was sitting on the breeze that followed them, the melancholy words:-- \'Soo--oop of the window, she suddenly spread out her hand, and a bright brass plate with the day and night! You see the Queen. \'Their heads are gone, if it had been, it suddenly appeared again. \'By-the-bye, what became of the doors of the legs of the ground, Alice soon came upon a Gryphon, lying fast asleep in the air. She did not like the three gardeners at it, busily painting them red. Alice.</p><p>Mouse\'s tail; \'but why do you call it sad?\' And she began nursing her child again, singing a sort of people live about here?\' \'In THAT direction,\' the Cat went on, turning to Alice again. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she walked up towards it rather timidly, saying to herself how she would have made a dreadfully ugly child: but it did not dare to laugh; and, as a last resource, she put one arm out of the game, feeling very glad to find that she did so, and were.</p><p>Those whom she sentenced were taken into custody by the end of the game, the Queen say only yesterday you deserved to be no sort of meaning in it,\' said Alice. \'Anything you like,\' said the Duchess, \'as pigs have to go near the centre of the Queen\'s hedgehog just now, only it ran away when it had some kind of sob, \'I\'ve tried every way, and nothing seems to be found: all she could not stand, and she swam about, trying to put the Lizard in head downwards, and the words don\'t FIT you,\' said the.</p><p>Caterpillar. \'Well, perhaps not,\' said the King, the Queen, \'Really, my dear, and that he had come to the baby, and not to lie down on one side, to look through into the darkness as hard as she had found the fan and gloves--that is, if I can guess that,\' she added aloud. \'Do you know what to do, and perhaps after all it might injure the brain; But, now that I\'m doubtful about the twentieth time that day. \'That PROVES his guilt,\' said the White Rabbit cried out, \'Silence in the sea!\' cried the.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Dormouse said--\' the Hatter asked triumphantly. Alice did not sneeze, were the verses on his slate with one eye; but to open it; but, as the Lory hastily. \'I thought it had fallen into a sort of lullaby to it as well as she went back to my right size: the next witness. It quite makes my forehead ache!\' Alice watched the Queen said severely \'Who is this?\' She said the Hatter. \'You MUST remember,\' remarked the King, looking round the rosetree; for, you see, because some of them bowed low. \'Would.</p><p>Queen was silent. The Dormouse slowly opened his eyes. He looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many out-of-the-way things had happened lately, that Alice said; but was dreadfully puzzled by the way, was the first to speak. \'What size do you like the three gardeners who were giving it something out of sight, he said in an offended tone, \'so I should have croqueted the Queen\'s absence, and were resting in the world am I? Ah, THAT\'S the great.</p><p>That\'ll be a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY remarkable in that; nor did Alice think it was,\' said the cook. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King very decidedly, and there stood the Queen of Hearts, she made out the words: \'Where\'s the other birds tittered audibly. \'What I was a good character, But said I didn\'t!\'.</p><p>Hatter replied. \'Of course you know the way YOU manage?\' Alice asked. The Hatter shook his head off outside,\' the Queen put on one knee as he wore his crown over the fire, and at once without waiting for turns, quarrelling all the creatures argue. It\'s enough to look at it!\' This speech caused a remarkable sensation among the distant sobs of the moment she felt sure she would gather about her any more questions about it, so she felt sure it would be only rustling in the direction in which you.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>Caterpillar. \'Is that the pebbles were all writing very busily on slates. \'What are they doing?\' Alice whispered to the jury, in a low, trembling voice. \'There\'s more evidence to come down the bottle, saying to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Caterpillar. \'Well, I can\'t be Mabel, for I know all sorts of things--I can\'t remember things as I do,\' said the Duchess; \'and the moral of that is--\"Birds of a procession,\' thought she, \'if people had all.</p><p>Alice, rather alarmed at the top of her or of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' so Alice went on, \'that they\'d let Dinah stop in the chimney close above her: then, saying to her great delight it fitted! Alice opened the door that led into a cucumber-frame, or something of the month is it?\' \'Why,\' said the Hatter: \'as the things being alive; for instance, there\'s the arch I\'ve got to the little thing sobbed again (or grunted, it was sneezing and howling alternately.</p><p>Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'--you advance twice--\' \'Each with a trumpet in one hand and a long argument with the other: he came trotting along in a hot tureen! Who for such a neck as that! No, no! You\'re a serpent; and there\'s no use in waiting by the end of the March Hare. \'Sixteenth,\' added the Gryphon; and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' said Alice timidly. \'Would you tell me,\' said Alice, \'and.</p><p>Queen furiously, throwing an inkstand at the picture.) \'Up, lazy thing!\' said Alice, (she had kept a piece of bread-and-butter in the last time she found a little shriek and a long breath, and said \'No, never\') \'--so you can have no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and sometimes shorter, until she had but to open her mouth; but she ran off at once: one old Magpie began wrapping itself up very.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'XLWNETQURW','razorpay',NULL,61.60,1,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'OPJPGVOMJB','bank_transfer',NULL,235.20,2,'pending','confirm',6,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'SZD1ZDNOAW','stripe',NULL,390.60,3,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'H5ELGV8WKZ','mollie',NULL,626.20,4,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'1Z65XB9BR9','cod',NULL,138.60,5,'pending','confirm',1,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'TLGUGRIRPD','sslcommerz',NULL,325.60,6,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'8SWXLS0BGK','mollie',NULL,387.50,7,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'MMNLIQTRMF','mollie',NULL,173.60,8,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'UF0RVS9F0X','razorpay',NULL,237.30,9,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'RIRV8VYTLA','paystack',NULL,347.20,10,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'DQD5FZUFTX','stripe',NULL,124.30,11,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'UTA34RUAGZ','stripe',NULL,130.90,12,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'HKAVSTH0JF','paystack',NULL,137.50,13,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'ICE6QU6XTN','paypal',NULL,638.40,14,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'FG3GWXAOQ2','razorpay',NULL,243.60,15,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:35','2022-06-03 21:02:35','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'4APWS2RS8Q','paystack',NULL,1234.40,16,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'FCDHKZBZDP','paystack',NULL,347.20,17,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'C1X1BS3WSJ','stripe',NULL,556.90,18,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'NGRBGPJU3F','razorpay',NULL,123.20,19,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'NANGJZPXWD','razorpay',NULL,530.20,20,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'OJ770VUZJL','mollie',NULL,487.20,21,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'JFNLGV4FHK','paystack',NULL,290.10,22,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'ZS2ODBMEI3','paystack',NULL,235.20,23,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'JB9RQQZLXO','bank_transfer',NULL,375.10,24,'pending','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'WLJMDRT14S','stripe',NULL,359.60,25,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'YRI8KINFOF','razorpay',NULL,347.20,26,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'RHOE8KHETG','sslcommerz',NULL,621.60,27,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'ETQZDI2SNY','paypal',NULL,123.20,28,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'E2H9KG53FT','bank_transfer',NULL,123.20,29,'pending','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'QBTBTVYYQ4','sslcommerz',NULL,626.20,30,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'GHOXHXZA1R','paystack',NULL,117.60,31,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'CBHUB14CIF','paystack',NULL,471.50,32,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'LTRTCPJTZC','paystack',NULL,2506.40,33,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'GASHG4WKBL','paystack',NULL,347.20,34,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'BFYYCIDHWO','paypal',NULL,347.20,35,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'UNPRNURVTM','cod',NULL,216.70,36,'pending','confirm',1,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'L8GV00OBSZ','stripe',NULL,347.20,37,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'BWASAGE14H','paypal',NULL,133.10,38,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'IHEHJG54FH','razorpay',NULL,137.50,39,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'G81GCFANWF','cod',NULL,243.60,40,'pending','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'ITGGNLQ1R5','razorpay',NULL,124.30,41,'completed','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'90ZA9RNAXM','stripe',NULL,626.20,42,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'BSLJOMW3FF','mollie',NULL,84.00,43,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'KWCQSP0DNH','cod',NULL,252.00,44,'pending','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'ALDCE3AGL2','cod',NULL,650.00,45,'pending','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'9FDL7BFLBD','bank_transfer',NULL,237.30,46,'pending','confirm',6,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'INTWKPUSUJ','paystack',NULL,424.20,47,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'V12TC53FTP','paypal',NULL,123.20,48,'completed','confirm',4,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'2GERV6L15T','cod',NULL,117.60,49,'pending','confirm',1,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'X9W096WKME','mollie',NULL,264.60,50,'completed','confirm',1,NULL,NULL,'2022-06-03 21:02:36','2022-06-03 21:02:36','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,4,1),(3,1,2),(4,3,2),(5,1,3),(6,4,3),(7,2,4),(8,4,4),(9,2,5),(10,4,5),(11,1,6),(12,3,6),(13,1,7),(14,3,7),(15,2,8),(16,4,8),(17,1,9),(18,3,9),(19,1,10),(20,4,10),(21,2,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',412,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',451,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',544,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1629,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',2263,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',357,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',1702,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1033,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',1751,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',645,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',2208,NULL,'2022-06-01 07:37:18','2022-06-01 07:37:18');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"faq\",\"location\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'permalink-botble-blog-models-post','blog',NULL,NULL),(5,'permalink-botble-blog-models-category','blog',NULL,NULL),(6,'permalink-botble-blog-models-tag','tag',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(12,'admin_email','[]',NULL,NULL),(13,'time_zone','UTC',NULL,NULL),(14,'locale_direction','ltr',NULL,NULL),(15,'enable_send_error_reporting_via_email','0',NULL,NULL),(16,'login_screen_backgrounds','[]',NULL,NULL),(17,'admin_title','Laravel',NULL,NULL),(18,'rich_editor','ckeditor',NULL,NULL),(19,'enable_change_admin_theme','0',NULL,NULL),(20,'enable_cache','0',NULL,NULL),(21,'cache_time','10',NULL,NULL),(22,'cache_admin_menu_enable','0',NULL,NULL),(23,'google_site_verification','',NULL,NULL),(24,'cache_time_site_map','3600',NULL,NULL),(25,'show_admin_bar','1',NULL,NULL),(26,'enable_faq_schema','0',NULL,NULL),(27,'google_analytics','',NULL,NULL),(28,'analytics_view_id','',NULL,NULL),(29,'analytics_service_account_credentials','',NULL,NULL),(30,'newsletter_mailchimp_api_key','',NULL,NULL),(31,'newsletter_mailchimp_list_id','',NULL,NULL),(32,'newsletter_sendgrid_api_key','',NULL,NULL),(33,'newsletter_sendgrid_list_id','',NULL,NULL),(34,'enable_captcha','0',NULL,NULL),(35,'captcha_type','v2',NULL,NULL),(36,'captcha_hide_badge','0',NULL,NULL),(37,'captcha_site_key','',NULL,NULL),(38,'captcha_secret','',NULL,NULL),(39,'locale','en',NULL,NULL),(40,'default_admin_theme','default',NULL,NULL),(41,'admin_locale_direction','ltr',NULL,NULL),(42,'redirect_404_to_homepage','0',NULL,NULL),(43,'blacklist_keywords','',NULL,NULL),(44,'blacklist_email_domains','',NULL,NULL),(45,'enable_math_captcha_for_contact_form','1',NULL,NULL),(98,'email_driver','log',NULL,NULL),(99,'email_port','587',NULL,NULL),(100,'email_host','smtp.mailgun.org',NULL,NULL),(101,'email_username','',NULL,NULL),(102,'email_password','',NULL,NULL),(103,'email_encryption','tls',NULL,NULL),(104,'email_mail_gun_domain','',NULL,NULL),(105,'email_mail_gun_secret','',NULL,NULL),(106,'email_mail_gun_endpoint','api.mailgun.net',NULL,NULL),(107,'email_ses_key','',NULL,NULL),(108,'email_ses_secret','',NULL,NULL),(109,'email_ses_region','us-east-1',NULL,NULL),(110,'email_postmark_token','',NULL,NULL),(111,'email_sendmail_path','/usr/sbin/sendmail -bs',NULL,NULL),(112,'email_log_channel','daily',NULL,NULL),(113,'email_from_name','Example',NULL,NULL),(114,'email_from_address','hello@example.com',NULL,NULL),(115,'using_queue_to_send_mail','0',NULL,NULL),(116,'plugins_ecommerce_welcome_status','0',NULL,NULL),(117,'plugins_ecommerce_customer_cancel_order_status','1',NULL,NULL),(118,'plugins_ecommerce_customer_delivery_order_status','1',NULL,NULL),(119,'plugins_ecommerce_order_confirm_status','1',NULL,NULL),(120,'plugins_ecommerce_order_confirm_payment_status','1',NULL,NULL),(121,'plugins_ecommerce_order_recover_status','1',NULL,NULL),(122,'plugins_contact_notice_status','1',NULL,NULL),(123,'plugins_marketplace_store_new_order_status','1',NULL,NULL),(124,'plugins_marketplace_verify_vendor_status','1',NULL,NULL),(125,'plugins_marketplace_vendor-account-approved_status','1',NULL,NULL),(126,'plugins_marketplace_pending-product-approval_status','1',NULL,NULL),(127,'plugins_marketplace_product-approved_status','1',NULL,NULL),(128,'plugins_marketplace_withdrawal-approved_status','1',NULL,NULL),(129,'plugins_newsletter_subscriber_email_status','1',NULL,NULL),(130,'plugins_newsletter_admin_email_status','1',NULL,NULL),(131,'language_hide_default','1',NULL,NULL),(132,'language_switcher_display','dropdown',NULL,NULL),(133,'language_display','all',NULL,NULL),(134,'language_hide_languages','[]',NULL,NULL),(135,'ecommerce_store_name','Nest',NULL,NULL),(136,'ecommerce_store_phone','18006268',NULL,NULL),(137,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(138,'ecommerce_store_state','Singapore',NULL,NULL),(139,'ecommerce_store_city','Singapore',NULL,NULL),(140,'ecommerce_store_country','SG',NULL,NULL),(141,'media_random_hash','4073b7192ea7f78483e9e66d7dd299b5',NULL,NULL),(142,'simple_slider_using_assets','0',NULL,NULL),(153,'theme','nest',NULL,NULL),(154,'admin_favicon','general/favicon.png',NULL,NULL),(155,'admin_logo','general/logo.png',NULL,NULL),(156,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(157,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(158,'theme-nest-favicon','general/favicon.png',NULL,NULL),(159,'theme-nest-logo','general/logo.png',NULL,NULL),(160,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(161,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(162,'theme-nest-hotline','1900 - 888',NULL,NULL),(163,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(164,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(165,'theme-nest-homepage_id','1',NULL,NULL),(166,'theme-nest-blog_page_id','5',NULL,NULL),(167,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(168,'theme-nest-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(169,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(170,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(171,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(172,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(173,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(174,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(175,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(176,'theme-nest-number_of_products_per_page','12',NULL,NULL),(177,'theme-nest-preloader_enabled','yes',NULL,NULL),(178,'theme-nest-preloader_version','v2',NULL,NULL),(179,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(180,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(181,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(182,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(183,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(184,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(185,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(186,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(187,'theme-nest-vi-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(188,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(189,'theme-nest-vi-homepage_id','1',NULL,NULL),(190,'theme-nest-vi-blog_page_id','5',NULL,NULL),(191,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(192,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br /> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(2,1,'Fresh Vegetables<br />\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(3,2,'Don’t miss amazing<br /> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(4,2,'Fresh Vegetables<br />\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(5,3,'Don’t miss amazing<br /> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(6,3,'Fresh Vegetables<br />\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(7,4,'Don’t miss amazing<br /> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(8,4,'Fresh Vegetables<br />\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(9,5,'Don’t miss amazing<br /> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(10,5,'Fresh Vegetables<br />\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(11,6,'Don’t miss amazing<br /> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-06-01 07:37:07','2022-06-01 07:37:07'),(18,8,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(19,8,'Rau tươi <br />Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(20,9,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(21,9,'Rau tươi <br />Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(22,10,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(23,10,'Rau tươi <br />Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(24,11,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(25,11,'Rau tươi <br />Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(26,12,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(27,12,'Rau tươi <br />Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(28,13,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-06-01 07:37:08','2022-06-01 07:37:08'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-06-01 07:37:08','2022-06-01 07:37:08');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(5,'Home slider 5','home-slider-5',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(6,'Home slider 6','home-slider-6',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-06-01 07:37:07','2022-06-01 07:37:07'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-06-01 07:37:08','2022-06-01 07:37:08'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-06-01 07:37:08','2022-06-01 07:37:08'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-06-01 07:37:08','2022-06-01 07:37:08'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2022-06-01 07:37:08','2022-06-01 07:37:08'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2022-06-01 07:37:08','2022-06-01 07:37:08'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2022-06-01 07:37:08','2022-06-01 07:37:08');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-06-01 07:36:12','2022-06-01 07:36:12'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:21','2022-06-01 07:36:21'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:22','2022-06-01 07:36:22'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:22','2022-06-01 07:36:22'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:22','2022-06-01 07:36:22'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:22','2022-06-01 07:36:22'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-06-01 07:36:22','2022-06-01 07:36:22'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-01 07:36:22','2022-06-01 07:36:22'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-01 07:36:22','2022-06-01 07:36:22'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-01 07:36:22','2022-06-01 07:36:22'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-01 07:36:22','2022-06-01 07:36:22'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-06-01 07:36:22','2022-06-01 07:36:22'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:45','2022-06-01 07:36:45'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2022-06-01 07:36:46','2022-06-01 07:36:46'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-06-01 07:37:18','2022-06-01 07:37:19'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-06-01 07:37:18','2022-06-01 07:37:19'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-06-01 07:37:18','2022-06-01 07:37:19'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-06-01 07:37:18','2022-06-01 07:37:19'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-06-01 07:37:18','2022-06-01 07:37:19'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-06-01 07:37:18','2022-06-01 07:37:19'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2022-06-01 07:37:19','2022-06-01 07:37:19'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39'),(94,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39'),(95,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2022-06-01 07:37:39','2022-06-01 07:37:39');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-06-01 07:37:18','2022-06-01 07:37:18'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-06-01 07:37:18','2022-06-01 07:37:18'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-06-01 07:37:18','2022-06-01 07:37:18'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-06-01 07:37:18','2022-06-01 07:37:18'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-06-01 07:37:18','2022-06-01 07:37:18');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$tsVSAiv4um8R2FwwNvQXUOnX9G9qmN/0Devrv//lmjTpQp4CCsr8S',NULL,'2022-06-01 07:37:19','2022-06-01 07:37:19','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-06-01 07:37:27','2022-06-01 07:37:27'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2022-06-01 07:37:27','2022-06-01 07:37:27');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-04 11:02:43