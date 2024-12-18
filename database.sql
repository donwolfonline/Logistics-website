-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: transp
-- ------------------------------------------------------
-- Server version	8.3.0

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
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `activations` VALUES (1,1,'CG9vTebxN5MwzInSwmbdTdHLwkA64rYL',1,'2024-09-24 04:51:41','2024-09-24 04:51:41','2024-09-24 04:51:41');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Unlock Your Business Potential: Exclusive Logistics Exam Reveals Cost-Saving Strategies and Growth Opportunities!',0,NULL,NULL,0,1,'2024-09-24 11:51:55',NULL,1,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,'Announcement 2','Attention Entrepreneurs: Elevate Your Logistics Game with Insider Tips from our Exclusive Exam - Limited Slots Available!',0,NULL,NULL,0,1,'2024-09-24 11:51:55',NULL,1,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,'Announcement 3','Small Business Alert: Maximize Efficiency and Minimize Costs with Our Logistics Exam - Act Now for Special Discounts!',0,NULL,NULL,0,1,'2024-09-24 11:51:55',NULL,1,'2024-09-24 04:51:55','2024-09-24 04:51:55');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Service',0,'Et error facilis qui laborum at nemo. Consequatur earum et modi est. Ipsum eveniet voluptate consequatur pariatur a.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(2,'Shipping',0,'Illo mollitia ipsa et voluptate consectetur sit dolorem voluptatem. Sit est dolores aperiam totam esse reprehenderit. Et minus error omnis quasi pariatur pariatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(3,'Courier',2,'Et vero qui ut ea quia. Et non itaque et dolorum ut a. Quibusdam culpa consequatur eum et cumque reprehenderit est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(4,'Transportation',0,'Provident dolore ut qui repudiandae voluptas qui quos quam. Sint rerum consequatur sequi reprehenderit velit dolore officiis nihil. Quod inventore qui voluptas.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(5,'Supply Chain',4,'Corrupti nemo quam totam qui repellat quod molestias. Dolores iure rerum consequatur harum quam. Repellendus animi rerum ut distinctio sit neque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(6,'Delivery',0,'Eos veniam nostrum omnis reprehenderit rerum. Natus voluptas unde omnis praesentium earum. Quidem vel est eaque aliquid eum molestiae quibusdam. Dolorem voluptas eaque minus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(7,'Freight Forwarding',6,'Ut laborum voluptate dolores et ducimus modi vitae. Dolores ducimus qui non delectus. Molestiae culpa ea labore blanditiis et sapiente. Facilis et maxime incidunt libero.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-09-24 04:51:50','2024-09-24 04:51:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
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
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
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
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
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
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL),(2,'PAYMENT',1,'published','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
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
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
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
INSERT INTO `faqs` VALUES (1,'Which Shipping Methods Are Available?','At TransP, We offer a diverse range of efficient and reliable shipping methods tailored to meet the unique needs of our valued customers. Our comprehensive selection includes both domestic and international options, designed to ensure that your goods reach their intended destinations promptly and securely',1,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(2,'Do You Ship Internationally?','Absolutely, we’re pleased to inform you that we do offer international shipping services at TransP. Our global reach allows us to connect your shipments to virtually any corner of the world with precision and care. Whether you’re sending packages to neighboring countries or across continents, our experienced team is well-versed in navigating international regulations, customs procedures, and logistics intricacies.',1,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(3,'How Long Will It Take To Get My Package?','At TransP, we understand the significance of timely deliveries, and we strive to provide accurate and dependable delivery estimates for your packages. The time it takes for your package to reach its destination can vary based on several factors, including the chosen shipping method, the origin and destination locations, as well as any customs procedures for international shipments.',1,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(4,'What Payment Methods Are Accepted?','We’ve designed our payment process at TransP to be flexible and convenient, accommodating a variety of payment methods to suit your preferences. We accept major credit and debit cards, including Visa, MasterCard, American Express, and Discover, allowing you to securely complete transactions online or over the phone. ',2,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(5,'Is Buying On-Line Safe?','Absolutely, safety and security are paramount when it comes to online purchases, and we understand your concerns. At TransP, we prioritize the protection of your personal and financial information. Our online platform is equipped with robust encryption technology that safeguards your data, ensuring that your sensitive details remain confidential during the purchasing process.',2,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(6,'How do I place an Order?','Placing an order with TransP is a straightforward and user-friendly process. Here’s a step-by-step guide to help you through the process: Visit Our Website, Choose Shipping Details, Select Shipping Method, Review and Confirm',3,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(7,'How Can I Cancel Or Change My Order?','We understand that plans can change, and we’re here to assist you with order modifications or cancellations at TransP. If you need to make changes to your order or cancel it, please follow these steps: Contact Customer Support, Provide Order Details, Request Changes.',3,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(8,'Do I need an account to place an order?','At TransP, we aim to provide a convenient and flexible ordering process. While having an account is not mandatory, creating one can offer you several benefits that enhance your overall experience. Here’s a breakdown of both options: Ordering Without an Account vs Creating an Account.',3,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(9,'How Do I Track My Order?','Tracking your order at TransP is a straightforward process that keeps you informed about the progress of your shipment. Here’s how you can track your order: Order Confirmation Email, Visit Our Website, Enter Tracking Number, View Shipment Status',3,'published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(10,'How Can I Return a Product?','We understand that occasionally, you may need to return a product, and we’re here to guide you through the process to ensure a smooth experience. Here’s how you can initiate a product return at Transp: Check Return Policy, Contact Customer Support, Provide Order Details.',3,'published','2024-09-24 04:51:52','2024-09-24 04:51:52');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Shipping','Beyond borders, we connect businesses with the world through expert logistics, managing complexities with finesse.',1,0,'galleries/9.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(2,'Transport','Our expert solutions streamline operations, ensuring efficient transport, warehousing, and global shipping. Your success, our mission.',1,0,'galleries/7.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(3,'Express','Our commitment extends beyond transport. It’s a promise of satisfaction, reliability, and logistical brilliance.',1,0,'galleries/1.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(4,'Customs','Tailored to your needs, our diverse services ensure secure, swift deliveries, empowering your business growth.',1,0,'galleries/4.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(5,'SupplyChain','Our expert solutions streamline operations, ensuring efficient transport, warehousing, and global shipping. Your success, our mission.',1,0,'galleries/9.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(6,'Logistics','We orchestrate intricate supply chains, optimizing processes for cost-effective, timely, and eco-conscious logistics.',1,0,'galleries/4.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(7,'FAQs','Everything you need to know about the product and billing. Can not find the answer you are looking for? Please Contact our support team.',0,0,'homepage/img-faq1.png',1,'published','2024-09-24 04:51:49','2024-09-24 04:51:49');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.png\",\"description\":\"King added in a game of croquet she was talking. Alice could bear: she got up in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not venture to go nearer till she shook the house, and.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Mock Turtle would be QUITE as much right,\' said the young lady tells us a story!\' said the Queen. \'Never!\' said the King. \'It began with the Lory, who at last it sat for a minute or two, she made it.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"The long grass rustled at her as hard as she passed; it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a number of executions the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing on the trumpet, and.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Caterpillar. \'Well, perhaps not,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"When the procession moved on, three of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it matter to me whether.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"The Queen had only one who got any advantage from the change: and Alice looked very uncomfortable. The first thing she heard a voice she had put on your head-- Do you think you\'re changed, do you?\'.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"And the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had begun to think to herself, \'the way all the rest of the hall: in fact she was ready to ask help of.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49'),(2,'[{\"img\":\"galleries\\/1.png\",\"description\":\"King added in a game of croquet she was talking. Alice could bear: she got up in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not venture to go nearer till she shook the house, and.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Mock Turtle would be QUITE as much right,\' said the young lady tells us a story!\' said the Queen. \'Never!\' said the King. \'It began with the Lory, who at last it sat for a minute or two, she made it.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"The long grass rustled at her as hard as she passed; it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a number of executions the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing on the trumpet, and.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Caterpillar. \'Well, perhaps not,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"When the procession moved on, three of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it matter to me whether.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"The Queen had only one who got any advantage from the change: and Alice looked very uncomfortable. The first thing she heard a voice she had put on your head-- Do you think you\'re changed, do you?\'.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"And the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had begun to think to herself, \'the way all the rest of the hall: in fact she was ready to ask help of.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49'),(3,'[{\"img\":\"galleries\\/1.png\",\"description\":\"King added in a game of croquet she was talking. Alice could bear: she got up in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not venture to go nearer till she shook the house, and.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Mock Turtle would be QUITE as much right,\' said the young lady tells us a story!\' said the Queen. \'Never!\' said the King. \'It began with the Lory, who at last it sat for a minute or two, she made it.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"The long grass rustled at her as hard as she passed; it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a number of executions the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing on the trumpet, and.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Caterpillar. \'Well, perhaps not,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"When the procession moved on, three of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it matter to me whether.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"The Queen had only one who got any advantage from the change: and Alice looked very uncomfortable. The first thing she heard a voice she had put on your head-- Do you think you\'re changed, do you?\'.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"And the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had begun to think to herself, \'the way all the rest of the hall: in fact she was ready to ask help of.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49'),(4,'[{\"img\":\"galleries\\/1.png\",\"description\":\"King added in a game of croquet she was talking. Alice could bear: she got up in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not venture to go nearer till she shook the house, and.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Mock Turtle would be QUITE as much right,\' said the young lady tells us a story!\' said the Queen. \'Never!\' said the King. \'It began with the Lory, who at last it sat for a minute or two, she made it.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"The long grass rustled at her as hard as she passed; it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a number of executions the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing on the trumpet, and.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Caterpillar. \'Well, perhaps not,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"When the procession moved on, three of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it matter to me whether.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"The Queen had only one who got any advantage from the change: and Alice looked very uncomfortable. The first thing she heard a voice she had put on your head-- Do you think you\'re changed, do you?\'.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"And the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had begun to think to herself, \'the way all the rest of the hall: in fact she was ready to ask help of.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49'),(5,'[{\"img\":\"galleries\\/1.png\",\"description\":\"King added in a game of croquet she was talking. Alice could bear: she got up in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not venture to go nearer till she shook the house, and.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Mock Turtle would be QUITE as much right,\' said the young lady tells us a story!\' said the Queen. \'Never!\' said the King. \'It began with the Lory, who at last it sat for a minute or two, she made it.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"The long grass rustled at her as hard as she passed; it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a number of executions the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing on the trumpet, and.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Caterpillar. \'Well, perhaps not,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"When the procession moved on, three of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it matter to me whether.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"The Queen had only one who got any advantage from the change: and Alice looked very uncomfortable. The first thing she heard a voice she had put on your head-- Do you think you\'re changed, do you?\'.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"And the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had begun to think to herself, \'the way all the rest of the hall: in fact she was ready to ask help of.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49'),(6,'[{\"img\":\"galleries\\/1.png\",\"description\":\"King added in a game of croquet she was talking. Alice could bear: she got up in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not venture to go nearer till she shook the house, and.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Mock Turtle would be QUITE as much right,\' said the young lady tells us a story!\' said the Queen. \'Never!\' said the King. \'It began with the Lory, who at last it sat for a minute or two, she made it.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"The long grass rustled at her as hard as she passed; it was good practice to say \'I once tasted--\' but checked herself hastily, and said \'That\'s very curious.\' \'It\'s all her coaxing. Hardly knowing.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a number of executions the Queen ordering off her unfortunate guests to execution--once more the pig-baby was sneezing on the trumpet, and.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Dormouse crossed the court, \'Bring me the list of singers. \'You may go,\' said the Caterpillar. \'Well, perhaps not,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Mock Turtle; \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can reach the key; and if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"When the procession moved on, three of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it matter to me whether.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"The Queen had only one who got any advantage from the change: and Alice looked very uncomfortable. The first thing she heard a voice she had put on your head-- Do you think you\'re changed, do you?\'.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"And the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had begun to think to herself, \'the way all the rest of the hall: in fact she was ready to ask help of.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49'),(7,'[{\"img\":\"homepage\\/img-faq1.png\",\"description\":\"Alice after it, and talking over its head. \'Very uncomfortable for the Duchess and the soldiers had to kneel down on her hand, and made another snatch in the pool as it happens; and if I would talk.\"},{\"img\":\"homepage\\/img-faq2.png\",\"description\":\"I don\'t like them raw.\' \'Well, be off, and she soon found out a box of comfits, (luckily the salt water had not long to doubt, for the hedgehogs; and in another moment, splash! she was now the right.\"},{\"img\":\"homepage\\/img-faq3.png\",\"description\":\"At last the Mouse, frowning, but very glad to find that the Mouse heard this, it turned a back-somersault in at the door-- Pray, what is the capital of Paris, and Paris is the same thing,\' said the.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:51:49','2024-09-24 04:51:49');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','77b123c25f823d6e9020595198cd1abe',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','fb55bcd80143d3f8308ab377a64c924f',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','6410cdebb27ece10e5d813a49c1acd5b',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','76bbfc171c39d513db8d168e1bebfe8e',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','f3136ed588b7cd3c72abd649d35e3ff6',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','5a3dbc725ab06d98a04d35f779b31068',4,'Botble\\Menu\\Models\\Menu'),(7,'en_US','120a01626b7e4290600048ee3023c16b',2,'Botble\\Menu\\Models\\MenuLocation'),(8,'en_US','345cd60d5df463653b438856fb5622e5',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_custom_field_options`
--

DROP TABLE IF EXISTS `lg_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lg_custom_field_options_custom_field_id_index` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_custom_field_options`
--

LOCK TABLES `lg_custom_field_options` WRITE;
/*!40000 ALTER TABLE `lg_custom_field_options` DISABLE KEYS */;
INSERT INTO `lg_custom_field_options` VALUES (1,1,'Service 1','Service 1',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,1,'Service 2','Service 2',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,1,'Service 3','Service 3',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(4,1,'Service 4','Service 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(5,1,'Service 4','Service 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(6,2,'Commodities 1','Commodities 1',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(7,2,'Commodities 2','Commodities 2',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(8,2,'Commodities 3','Commodities 3',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(9,2,'Commodities 4','Commodities 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(10,2,'Commodities 4','Commodities 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(11,3,'Delivery to 1','Delivery to 1',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(12,3,'Delivery to 2','Delivery to 2',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(13,3,'Delivery to 3','Delivery to 3',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(14,3,'Delivery to 4','Delivery to 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(15,3,'Delivery to 4','Delivery to 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(16,5,'Quantity of goods 1','Quantity of goods 1',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(17,5,'Quantity of goods 2','Quantity of goods 2',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(18,5,'Quantity of goods 3','Quantity of goods 3',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(19,5,'Quantity of goods 4','Quantity of goods 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(20,5,'Quantity of goods 4','Quantity of goods 4',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(21,6,'Express Delivery (+$40)','Express Delivery (+$40)',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(22,6,'Add Insurance (+$20)','Add Insurance (+$20)',999,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(23,6,'Packaging (+$15)','Packaging (+$15)',999,'2024-09-24 04:51:55','2024-09-24 04:51:55');
/*!40000 ALTER TABLE `lg_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_custom_field_options_translations`
--

DROP TABLE IF EXISTS `lg_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_custom_field_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lg_custom_field_options_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`lang_code`,`lg_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_custom_field_options_translations`
--

LOCK TABLES `lg_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `lg_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_custom_fields`
--

DROP TABLE IF EXISTS `lg_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lg_custom_fields_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_custom_fields`
--

LOCK TABLES `lg_custom_fields` WRITE;
/*!40000 ALTER TABLE `lg_custom_fields` DISABLE KEYS */;
INSERT INTO `lg_custom_fields` VALUES (1,'Botble\\ACL\\Models\\User',1,'Service',NULL,0,'dropdown',999,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,'Botble\\ACL\\Models\\User',1,'Commodities',NULL,0,'dropdown',999,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,'Botble\\ACL\\Models\\User',1,'Delivery to',NULL,0,'dropdown',999,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(4,'Botble\\ACL\\Models\\User',1,'Weight',NULL,1,'text',999,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(5,'Botble\\ACL\\Models\\User',1,'Quantity of goods',NULL,1,'dropdown',999,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(6,'Botble\\ACL\\Models\\User',1,'Extra Services',NULL,1,'checkbox',999,'published','2024-09-24 04:51:55','2024-09-24 04:51:55');
/*!40000 ALTER TABLE `lg_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_custom_fields_translations`
--

DROP TABLE IF EXISTS `lg_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_custom_fields_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lg_custom_fields_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`lang_code`,`lg_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_custom_fields_translations`
--

LOCK TABLES `lg_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `lg_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_packages`
--

DROP TABLE IF EXISTS `lg_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_packages`
--

LOCK TABLES `lg_packages` WRITE;
/*!40000 ALTER TABLE `lg_packages` DISABLE KEYS */;
INSERT INTO `lg_packages` VALUES (1,'Premium','Advanced features for pros who need more customization.','$125','$1,500','monthly','+ 15-Days Shipping Worldwide\n+ 1 Kg Weight Max /Package\n+ Free Bubble Warp\n+ 24/7 Support','published',0,'2024-09-24 04:51:55','2024-09-24 04:51:55','<h3>Package Overview</h3>\n<p>Our Transportation Logistics Package includes a comprehensive set of services designed to optimize your supply chain and streamline your transportation operations. We understand that managing logistics can be complex and time-consuming, which is why our team of experts is here to assist you at every step.</p>\n<p>Whether you are a small business looking to expand your market reach or a large enterprise seeking to improve your transportation efficiency, our package is tailor-made to meet your specific needs. By entrusting us with your logistics requirements, you can focus on growing your business while we handle the intricacies of transportation.</p>\n\n<h3>Key Features</h3>\n<h4>1. Freight Management</h4>\n<p>Our team of experienced professionals will handle all aspects of freight management, ensuring a seamless flow of goods from origin to destination. We take care of the entire process, including freight booking, carrier selection, and freight consolidation, to optimize shipping costs and transit times.</p>\n<p>With our extensive network of trusted carriers and global partners, we can accommodate shipments of any size or complexity, ranging from small parcels to oversized cargo. No matter the destination, we will find the most efficient and reliable transportation solutions for your goods.</p>\n\n<h4>2. Warehousing and Distribution</h4>\n<p>Efficient warehousing and distribution are crucial components of a successful logistics strategy. Our state-of-the-art warehouses are strategically located to support your supply chain needs, providing flexible storage options and value-added services.</p>\n<p>Our team manages inventory, order fulfillment, and distribution, ensuring that your products are delivered to customers promptly. By utilizing our warehousing services, you can reduce operational costs, minimize inventory risks, and improve order accuracy and on-time delivery rates.</p>\n\n<h4>3. Route Optimization</h4>\n<p>Transportation costs can significantly impact your bottom line. Our route optimization services leverage advanced technology to analyze various factors, such as distance, traffic patterns, and fuel consumption, to identify the most efficient and cost-effective transportation routes.</p>\n<p>By optimizing routes, we can help you save on transportation expenses, reduce carbon emissions, and ensure timely deliveries. Whether your shipments are regional, national, or international, our route optimization solutions will maximize the efficiency of your transportation operations.</p>\n\n<h4>4. Tracking and Visibility</h4>\n<p>Real-time tracking and visibility are essential for effective supply chain management. Our advanced tracking systems allow you to monitor your shipments at every stage of the transportation process.</p>\n<p>With access to detailed shipment information, you can proactively address potential issues, respond to customer inquiries accurately, and make data-driven decisions to improve overall logistics performance.</p>\n\n<h4>5. Freight Insurance</h4>\n<p>We understand that protecting your cargo during transit is crucial. Our comprehensive freight insurance coverage offers peace of mind, safeguarding your goods against loss, damage, or theft while in transit.</p>\n<p>Our team will assist you in selecting the appropriate insurance coverage based on the nature of your shipments and the associated risks. This added layer of protection ensures that your goods are safe and secure throughout the transportation process.</p>\n\n<h4>6. Customized Solutions</h4>\n<p>We recognize that each business has unique logistics requirements. Our logistics experts will work closely with you to understand your specific needs and challenges, developing a customized transportation plan that aligns with your goals and budget.</p>\n<p>Whether you require specialized handling, time-sensitive deliveries, or value-added services, we have the expertise and resources to deliver tailor-made solutions that drive your business forward.</p>\n'),(2,'Essentials','All the basics for businesses that are just getting started.','$89','$1,068','monthly','+ 7-Days Shipping Worldwide\n+ 3 Kg Weight Max /Package\n+ Free Wood Crate\n+ Get in touch to discuss\n+ Use Personal And Commercial\n+ 24/7 Support','published',1,'2024-09-24 04:51:55','2024-09-24 04:51:55','<h3>Package Overview</h3>\n<p>Our Transportation Logistics Package includes a comprehensive set of services designed to optimize your supply chain and streamline your transportation operations. We understand that managing logistics can be complex and time-consuming, which is why our team of experts is here to assist you at every step.</p>\n<p>Whether you are a small business looking to expand your market reach or a large enterprise seeking to improve your transportation efficiency, our package is tailor-made to meet your specific needs. By entrusting us with your logistics requirements, you can focus on growing your business while we handle the intricacies of transportation.</p>\n\n<h3>Key Features</h3>\n<h4>1. Freight Management</h4>\n<p>Our team of experienced professionals will handle all aspects of freight management, ensuring a seamless flow of goods from origin to destination. We take care of the entire process, including freight booking, carrier selection, and freight consolidation, to optimize shipping costs and transit times.</p>\n<p>With our extensive network of trusted carriers and global partners, we can accommodate shipments of any size or complexity, ranging from small parcels to oversized cargo. No matter the destination, we will find the most efficient and reliable transportation solutions for your goods.</p>\n\n<h4>2. Warehousing and Distribution</h4>\n<p>Efficient warehousing and distribution are crucial components of a successful logistics strategy. Our state-of-the-art warehouses are strategically located to support your supply chain needs, providing flexible storage options and value-added services.</p>\n<p>Our team manages inventory, order fulfillment, and distribution, ensuring that your products are delivered to customers promptly. By utilizing our warehousing services, you can reduce operational costs, minimize inventory risks, and improve order accuracy and on-time delivery rates.</p>\n\n<h4>3. Route Optimization</h4>\n<p>Transportation costs can significantly impact your bottom line. Our route optimization services leverage advanced technology to analyze various factors, such as distance, traffic patterns, and fuel consumption, to identify the most efficient and cost-effective transportation routes.</p>\n<p>By optimizing routes, we can help you save on transportation expenses, reduce carbon emissions, and ensure timely deliveries. Whether your shipments are regional, national, or international, our route optimization solutions will maximize the efficiency of your transportation operations.</p>\n\n<h4>4. Tracking and Visibility</h4>\n<p>Real-time tracking and visibility are essential for effective supply chain management. Our advanced tracking systems allow you to monitor your shipments at every stage of the transportation process.</p>\n<p>With access to detailed shipment information, you can proactively address potential issues, respond to customer inquiries accurately, and make data-driven decisions to improve overall logistics performance.</p>\n\n<h4>5. Freight Insurance</h4>\n<p>We understand that protecting your cargo during transit is crucial. Our comprehensive freight insurance coverage offers peace of mind, safeguarding your goods against loss, damage, or theft while in transit.</p>\n<p>Our team will assist you in selecting the appropriate insurance coverage based on the nature of your shipments and the associated risks. This added layer of protection ensures that your goods are safe and secure throughout the transportation process.</p>\n\n<h4>6. Customized Solutions</h4>\n<p>We recognize that each business has unique logistics requirements. Our logistics experts will work closely with you to understand your specific needs and challenges, developing a customized transportation plan that aligns with your goals and budget.</p>\n<p>Whether you require specialized handling, time-sensitive deliveries, or value-added services, we have the expertise and resources to deliver tailor-made solutions that drive your business forward.</p>\n'),(3,'Enterprise','Advanced features for pros who need more customization.','$199','$2,388','monthly','+ 4-Days Shipping Worldwide\n+ 1 Kg Weight Max /Package\n+ Free Bubble Warp\n+ 24/7 Support','published',0,'2024-09-24 04:51:55','2024-09-24 04:51:55','<h3>Package Overview</h3>\n<p>Our Transportation Logistics Package includes a comprehensive set of services designed to optimize your supply chain and streamline your transportation operations. We understand that managing logistics can be complex and time-consuming, which is why our team of experts is here to assist you at every step.</p>\n<p>Whether you are a small business looking to expand your market reach or a large enterprise seeking to improve your transportation efficiency, our package is tailor-made to meet your specific needs. By entrusting us with your logistics requirements, you can focus on growing your business while we handle the intricacies of transportation.</p>\n\n<h3>Key Features</h3>\n<h4>1. Freight Management</h4>\n<p>Our team of experienced professionals will handle all aspects of freight management, ensuring a seamless flow of goods from origin to destination. We take care of the entire process, including freight booking, carrier selection, and freight consolidation, to optimize shipping costs and transit times.</p>\n<p>With our extensive network of trusted carriers and global partners, we can accommodate shipments of any size or complexity, ranging from small parcels to oversized cargo. No matter the destination, we will find the most efficient and reliable transportation solutions for your goods.</p>\n\n<h4>2. Warehousing and Distribution</h4>\n<p>Efficient warehousing and distribution are crucial components of a successful logistics strategy. Our state-of-the-art warehouses are strategically located to support your supply chain needs, providing flexible storage options and value-added services.</p>\n<p>Our team manages inventory, order fulfillment, and distribution, ensuring that your products are delivered to customers promptly. By utilizing our warehousing services, you can reduce operational costs, minimize inventory risks, and improve order accuracy and on-time delivery rates.</p>\n\n<h4>3. Route Optimization</h4>\n<p>Transportation costs can significantly impact your bottom line. Our route optimization services leverage advanced technology to analyze various factors, such as distance, traffic patterns, and fuel consumption, to identify the most efficient and cost-effective transportation routes.</p>\n<p>By optimizing routes, we can help you save on transportation expenses, reduce carbon emissions, and ensure timely deliveries. Whether your shipments are regional, national, or international, our route optimization solutions will maximize the efficiency of your transportation operations.</p>\n\n<h4>4. Tracking and Visibility</h4>\n<p>Real-time tracking and visibility are essential for effective supply chain management. Our advanced tracking systems allow you to monitor your shipments at every stage of the transportation process.</p>\n<p>With access to detailed shipment information, you can proactively address potential issues, respond to customer inquiries accurately, and make data-driven decisions to improve overall logistics performance.</p>\n\n<h4>5. Freight Insurance</h4>\n<p>We understand that protecting your cargo during transit is crucial. Our comprehensive freight insurance coverage offers peace of mind, safeguarding your goods against loss, damage, or theft while in transit.</p>\n<p>Our team will assist you in selecting the appropriate insurance coverage based on the nature of your shipments and the associated risks. This added layer of protection ensures that your goods are safe and secure throughout the transportation process.</p>\n\n<h4>6. Customized Solutions</h4>\n<p>We recognize that each business has unique logistics requirements. Our logistics experts will work closely with you to understand your specific needs and challenges, developing a customized transportation plan that aligns with your goals and budget.</p>\n<p>Whether you require specialized handling, time-sensitive deliveries, or value-added services, we have the expertise and resources to deliver tailor-made solutions that drive your business forward.</p>\n'),(4,'Unlimited','Advanced features for pros who need more customization.','$4,788','$1,500','monthly','+ 4-Days Shipping Worldwide\n+ 1 Kg Weight Max /Package\n+ Free Bubble Warp\n+ 24/7 Support','published',0,'2024-09-24 04:51:55','2024-09-24 04:51:55','<h3>Package Overview</h3>\n<p>Our Transportation Logistics Package includes a comprehensive set of services designed to optimize your supply chain and streamline your transportation operations. We understand that managing logistics can be complex and time-consuming, which is why our team of experts is here to assist you at every step.</p>\n<p>Whether you are a small business looking to expand your market reach or a large enterprise seeking to improve your transportation efficiency, our package is tailor-made to meet your specific needs. By entrusting us with your logistics requirements, you can focus on growing your business while we handle the intricacies of transportation.</p>\n\n<h3>Key Features</h3>\n<h4>1. Freight Management</h4>\n<p>Our team of experienced professionals will handle all aspects of freight management, ensuring a seamless flow of goods from origin to destination. We take care of the entire process, including freight booking, carrier selection, and freight consolidation, to optimize shipping costs and transit times.</p>\n<p>With our extensive network of trusted carriers and global partners, we can accommodate shipments of any size or complexity, ranging from small parcels to oversized cargo. No matter the destination, we will find the most efficient and reliable transportation solutions for your goods.</p>\n\n<h4>2. Warehousing and Distribution</h4>\n<p>Efficient warehousing and distribution are crucial components of a successful logistics strategy. Our state-of-the-art warehouses are strategically located to support your supply chain needs, providing flexible storage options and value-added services.</p>\n<p>Our team manages inventory, order fulfillment, and distribution, ensuring that your products are delivered to customers promptly. By utilizing our warehousing services, you can reduce operational costs, minimize inventory risks, and improve order accuracy and on-time delivery rates.</p>\n\n<h4>3. Route Optimization</h4>\n<p>Transportation costs can significantly impact your bottom line. Our route optimization services leverage advanced technology to analyze various factors, such as distance, traffic patterns, and fuel consumption, to identify the most efficient and cost-effective transportation routes.</p>\n<p>By optimizing routes, we can help you save on transportation expenses, reduce carbon emissions, and ensure timely deliveries. Whether your shipments are regional, national, or international, our route optimization solutions will maximize the efficiency of your transportation operations.</p>\n\n<h4>4. Tracking and Visibility</h4>\n<p>Real-time tracking and visibility are essential for effective supply chain management. Our advanced tracking systems allow you to monitor your shipments at every stage of the transportation process.</p>\n<p>With access to detailed shipment information, you can proactively address potential issues, respond to customer inquiries accurately, and make data-driven decisions to improve overall logistics performance.</p>\n\n<h4>5. Freight Insurance</h4>\n<p>We understand that protecting your cargo during transit is crucial. Our comprehensive freight insurance coverage offers peace of mind, safeguarding your goods against loss, damage, or theft while in transit.</p>\n<p>Our team will assist you in selecting the appropriate insurance coverage based on the nature of your shipments and the associated risks. This added layer of protection ensures that your goods are safe and secure throughout the transportation process.</p>\n\n<h4>6. Customized Solutions</h4>\n<p>We recognize that each business has unique logistics requirements. Our logistics experts will work closely with you to understand your specific needs and challenges, developing a customized transportation plan that aligns with your goals and budget.</p>\n<p>Whether you require specialized handling, time-sensitive deliveries, or value-added services, we have the expertise and resources to deliver tailor-made solutions that drive your business forward.</p>\n');
/*!40000 ALTER TABLE `lg_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_packages_translations`
--

DROP TABLE IF EXISTS `lg_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_packages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lg_packages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`lg_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_packages_translations`
--

LOCK TABLES `lg_packages_translations` WRITE;
/*!40000 ALTER TABLE `lg_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_quotes`
--

DROP TABLE IF EXISTS `lg_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_quotes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_quotes`
--

LOCK TABLES `lg_quotes` WRITE;
/*!40000 ALTER TABLE `lg_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_service_categories`
--

DROP TABLE IF EXISTS `lg_service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_service_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lg_service_categories_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_service_categories`
--

LOCK TABLES `lg_service_categories` WRITE;
/*!40000 ALTER TABLE `lg_service_categories` DISABLE KEYS */;
INSERT INTO `lg_service_categories` VALUES (1,NULL,'Sea Forwarding','Quis nemo est et quae qui et. Dolore ratione ratione aut numquam amet. Consequatur eligendi est aut. Quis consequuntur optio iste voluptas dicta incidunt laboriosam veniam. Dicta magni culpa voluptas eveniet amet. Sint molestiae tempora temporibus omnis et est ut earum. Architecto nisi dolor dolor ex voluptas dolorem ut.','services/menu1.png',1,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,NULL,'Air Freight Forwarding','Quo est ullam qui nihil. Qui iure dolor accusamus et veniam voluptatem temporibus. Blanditiis totam dignissimos sunt nobis officiis error et. Dolorem explicabo neque quaerat ea velit facilis dolorem. Ut impedit voluptates et voluptas magni accusantium. Sint nihil vel inventore ut non delectus in. Voluptatibus fuga delectus tenetur sunt enim.','services/menu2.png',2,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,NULL,'Land Transportation','Nemo ullam eius vel sit. Ab est beatae expedita voluptatem. Est quam temporibus voluptas. Ullam et qui deleniti qui. Quaerat enim ea fuga fuga. Commodi maiores reprehenderit voluptas sequi. Quia cum praesentium tempora aut. Voluptas officiis voluptas sit necessitatibus voluptate illo eos. Voluptatem ad et quis saepe tenetur. Esse aliquid aut assumenda vel.','services/menu3.png',3,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(4,NULL,'Railway Logistics','Modi velit illum voluptas eius qui. Quia occaecati dolorem qui facere corrupti ut est. Veniam voluptates iure consequatur. Sed consequuntur illo qui consequatur maxime doloremque. Deserunt quia omnis temporibus quis. Autem reiciendis tempore nisi ea cum repellendus. Fuga et et autem rerum est.','services/menu4.png',4,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(5,NULL,'Warehouse','Corporis aut veniam rerum. Fugit reiciendis assumenda harum sequi iure ipsa et itaque. Amet error rem qui sit magnam officiis. Est corporis sit aut illo. Aliquid est sint inventore et. Facilis quisquam veritatis minima. Consequatur eos id ut dolores omnis accusantium fuga. Tempora placeat saepe mollitia aut. Et qui et dolorem sed dolor ut. Dolorum hic expedita id enim pariatur et molestiae ut.','services/menu5.png',5,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(6,NULL,'Cross Border','Dolorem libero numquam in. Architecto occaecati excepturi officia autem ea. Repellendus ullam inventore veniam placeat. Excepturi fugit hic odio minima et molestiae. Ipsa labore aut id assumenda quo. Quia et debitis iusto possimus maxime corrupti et. Doloribus aut excepturi quo expedita voluptatem tempore. Voluptas at odit consectetur incidunt dolor et itaque.','services/menu6.png',6,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(7,NULL,'Customs Brokerages','Nostrum vel natus totam rerum. Facere accusamus eos voluptatem consectetur et in. Praesentium eos dolores mollitia tempora voluptatem asperiores. Ad quis nam nam rerum repudiandae quae dolorum. Quia cumque perspiciatis eius. Optio debitis rem et nihil. Animi est rerum et. Sed sunt nihil eius ipsum expedita.','services/menu7.png',7,'published','2024-09-24 04:51:55','2024-09-24 04:51:55');
/*!40000 ALTER TABLE `lg_service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_service_categories_translations`
--

DROP TABLE IF EXISTS `lg_service_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_service_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lg_service_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`lg_service_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_service_categories_translations`
--

LOCK TABLES `lg_service_categories_translations` WRITE;
/*!40000 ALTER TABLE `lg_service_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_service_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_services`
--

DROP TABLE IF EXISTS `lg_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lg_services_title_unique` (`title`),
  KEY `lg_services_author_type_author_id_index` (`author_type`,`author_id`),
  KEY `lg_services_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_services`
--

LOCK TABLES `lg_services` WRITE;
/*!40000 ALTER TABLE `lg_services` DISABLE KEYS */;
INSERT INTO `lg_services` VALUES (1,1,'Botble\\ACL\\Models\\User',1,'Sea Freight Forwarding','TransP’s roots are in Sea Freight Forwarding! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',0,'services/service1.png','[\"services\\/img2.png\",\"services\\/img1.png\"]',9719,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,2,'Botble\\ACL\\Models\\User',1,'Air Freight Forwarding','TransP’s roots are in Air Freight Forwarding! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',0,'services/service2.png','[\"services\\/img1.png\",\"services\\/img2.png\"]',6728,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,3,'Botble\\ACL\\Models\\User',1,'Land Transportation','TransP’s roots are in Land Transportation! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',1,'services/service3.png','[\"services\\/img2.png\",\"services\\/img1.png\"]',9288,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(4,4,'Botble\\ACL\\Models\\User',1,'Railway Logistics','TransP’s roots are in Railway Logistics! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',0,'services/service4.png','[\"services\\/img2.png\",\"services\\/img1.png\"]',9993,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(5,5,'Botble\\ACL\\Models\\User',1,'Warehouse & Distribution','TransP’s roots are in Warehouse & Distribution! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',1,'services/service5.png','[\"services\\/img1.png\",\"services\\/img2.png\"]',6472,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(6,6,'Botble\\ACL\\Models\\User',1,'Cross Border','TransP’s roots are in Cross Border! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',1,'services/service6.png','[\"services\\/img2.png\",\"services\\/img1.png\"]',6738,'published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(7,7,'Botble\\ACL\\Models\\User',1,'Customs Brokerages','TransP’s roots are in Customs Brokerages! Whether it’s full containers, consolidations, roll-on/roll-<br>off equipment or entire projects, moving shipments by sea is our “flagship” service.','<strong class=\"font-md-bold color-grey-900 mb-25 d-block\">Sea freight forwarding, also known as ocean freight\n    forwarding, is a critical aspect of the global supply chain. It refers to the transportation of goods via cargo\n    ships or vessels from one port to another. This mode of transportation is preferred by many businesses due to its\n    cost-effectiveness, reliability, and ability to transport large quantities of goods. In this article, we will\n    discuss the basics of sea freight forwarding, including its benefits, modes of transportation, and key\n    players.</strong>\n<h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n<p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL)\n    and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On\n    the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are\n    combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n<p>\n    <img src=\"http://transp.test/storage/services/img3.png\" alt=\"Modes of Sea Freight Transportation\">\n</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load\n    (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used\n    when the shipment does not require a full container. In this case, the goods are combined with other shipments to\n    fill a container. Both modes have their advantages and disadvantages.</p>\n<h3>Benefits of Sea Freight Forwarding</h3>\n\n<div class=\"row align-items-center\">\n    <div class=\"col-lg-7\">\n        <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of\n            the benefits include: </p>\n        <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation,\n            especially for businesses that require the transportation of large quantities of goods. This is because\n            cargo ships can transport large volumes of goods at a lower cost compared to other modes of\n            transportation.</p>\n        <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather\n            conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the\n            risk of damage or loss of goods.</p>\n    </div>\n    <div class=\"col-lg-5\">\n        <img src=\"http://transp.test/storage/services/img4.png\" alt=\"Modes of Sea Freight Transportation\">\n    </div>\n</div>\n<shortcode>[request-quote background_color=\"#FFFFFF\" style=\"style-1\" quantity=\"1\" form_title=\"Calculate Shipping\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" inner_background=\"shapes/bg-contact.png\" form_background=\"homepage/img-contact.png\" link_label=\"Contact Us\" link_url=\"/contact\"][/request-quote]</shortcode>\n<shortcode>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\"][/pricing]</shortcode>\n<div class=\"line-border\"></div>\n<shortcode>[our-services title=\"Other Services\" icon=\"general/favicon.png\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area <br> and delivery services vary by location. Whatever the mode or requirement, we will find and book <br> the ideal expedited shipping solution to ensure a timely delivery.\" style=\"style-2\" service_ids=\"1,2,3,4\"][/our-services]</shortcode>\n',1,'services/service7.png','[\"services\\/img1.png\",\"services\\/img2.png\"]',1164,'published','2024-09-24 04:51:55','2024-09-24 04:51:55');
/*!40000 ALTER TABLE `lg_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lg_services_translations`
--

DROP TABLE IF EXISTS `lg_services_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lg_services_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lg_services_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`lg_services_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lg_services_translations`
--

LOCK TABLES `lg_services_translations` WRITE;
/*!40000 ALTER TABLE `lg_services_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `lg_services_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'img-about-1-1','img-about-1-1',1,'image/png',485630,'about/img-about-1-1.png','[]','2024-09-24 04:51:41','2024-09-24 04:51:41',NULL,'public'),(2,0,'img-about-1-2','img-about-1-2',1,'image/png',489675,'about/img-about-1-2.png','[]','2024-09-24 04:51:41','2024-09-24 04:51:41',NULL,'public'),(3,0,'img-about-1-3','img-about-1-3',1,'image/png',1133094,'about/img-about-1-3.png','[]','2024-09-24 04:51:42','2024-09-24 04:51:42',NULL,'public'),(4,0,'img-about-2-1','img-about-2-1',1,'image/png',2654338,'about/img-about-2-1.png','[]','2024-09-24 04:51:42','2024-09-24 04:51:42',NULL,'public'),(5,0,'img-about-2-2','img-about-2-2',1,'image/png',3439560,'about/img-about-2-2.png','[]','2024-09-24 04:51:43','2024-09-24 04:51:43',NULL,'public'),(6,0,'img-about-2-3','img-about-2-3',1,'image/png',3475753,'about/img-about-2-3.png','[]','2024-09-24 04:51:43','2024-09-24 04:51:43',NULL,'public'),(7,0,'banner','banner',2,'image/png',846228,'backgrounds/banner.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(8,0,'bg-get-quote','bg-get-quote',2,'image/png',7536,'backgrounds/bg-get-quote.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(9,0,'bg-how-it-work','bg-how-it-work',2,'image/png',15918,'backgrounds/bg-how-it-work.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(10,0,'bg-offer','bg-offer',2,'image/png',931862,'backgrounds/bg-offer.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(11,0,'bg-plan-left','bg-plan-left',2,'image/png',17540,'backgrounds/bg-plan-left.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(12,0,'bg-plan-right','bg-plan-right',2,'image/png',21295,'backgrounds/bg-plan-right.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(13,0,'bg-ship-banner','bg-ship-banner',2,'image/png',103926,'backgrounds/bg-ship-banner.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(14,0,'bg-testimonial-3','bg-testimonial-3',2,'image/png',16495,'backgrounds/bg-testimonial-3.png','[]','2024-09-24 04:51:44','2024-09-24 04:51:44',NULL,'public'),(15,0,'bg-whychooseus','bg-whychooseus',2,'image/png',1422932,'backgrounds/bg-whychooseus.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(16,0,'requestaquote-banner','requestaquote-banner',2,'image/png',20965,'backgrounds/requestaquote-banner.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(17,0,'alea','alea',3,'image/png',600,'brands/alea.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(18,0,'creati','creati',3,'image/png',794,'brands/creati.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(19,0,'land','land',3,'image/png',672,'brands/land.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(20,0,'logis','logis',3,'image/png',667,'brands/logis.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(21,0,'saltos','saltos',3,'image/png',743,'brands/saltos.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(22,0,'truck','truck',3,'image/png',674,'brands/truck.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(23,0,'author1','author1',4,'image/png',3740,'homepage/author1.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(24,0,'author2','author2',4,'image/png',3740,'homepage/author2.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(25,0,'author3','author3',4,'image/png',3740,'homepage/author3.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(26,0,'author4','author4',4,'image/png',3057,'homepage/author4.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(27,0,'banner-2','banner-2',4,'image/png',15604,'homepage/banner-2.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(28,0,'banner-3','banner-3',4,'image/png',19255,'homepage/banner-3.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(29,0,'banner-4','banner-4',4,'image/png',24373,'homepage/banner-4.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(30,0,'banner-5','banner-5',4,'image/png',12656,'homepage/banner-5.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(31,0,'banner-ads','banner-ads',4,'image/png',8945,'homepage/banner-ads.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(32,0,'container','container',4,'image/png',26574,'homepage/container.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(33,0,'how-it-work','how-it-work',4,'image/png',13458,'homepage/how-it-work.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(34,0,'img-contact','img-contact',4,'image/png',8078,'homepage/img-contact.png','[]','2024-09-24 04:51:45','2024-09-24 04:51:45',NULL,'public'),(35,0,'img-faq1','img-faq1',4,'image/png',28357,'homepage/img-faq1.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(36,0,'img-faq2','img-faq2',4,'image/png',20908,'homepage/img-faq2.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(37,0,'img-faq3','img-faq3',4,'image/png',23328,'homepage/img-faq3.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(38,0,'img-info-2','img-info-2',4,'image/png',14446,'homepage/img-info-2.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(39,0,'img-info-3','img-info-3',4,'image/png',48611,'homepage/img-info-3.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(40,0,'img-info-4','img-info-4',4,'image/png',38132,'homepage/img-info-4.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(41,0,'img-info-5-2','img-info-5-2',4,'image/png',31699,'homepage/img-info-5-2.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(42,0,'img-info-5','img-info-5',4,'image/png',26638,'homepage/img-info-5.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(43,0,'img-info-6','img-info-6',4,'image/png',14601,'homepage/img-info-6.png','[]','2024-09-24 04:51:46','2024-09-24 04:51:46',NULL,'public'),(44,0,'img-info-7','img-info-7',4,'image/png',57914,'homepage/img-info-7.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(45,0,'img-testimonial-4','img-testimonial-4',4,'image/png',12475,'homepage/img-testimonial-4.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(46,0,'img-why','img-why',4,'image/png',53520,'homepage/img-why.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(47,0,'img','img',4,'image/png',20833,'homepage/img.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(48,0,'img1','img1',4,'image/png',56458,'homepage/img1.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(49,0,'img2','img2',4,'image/png',20833,'homepage/img2.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(50,0,'img3','img3',4,'image/png',20833,'homepage/img3.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(51,0,'img4','img4',4,'image/png',20833,'homepage/img4.png','[]','2024-09-24 04:51:47','2024-09-24 04:51:47',NULL,'public'),(52,0,'port','port',4,'image/png',15754,'homepage/port.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(53,0,'ship','ship',4,'image/png',28431,'homepage/ship.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(54,0,'img1','img1',5,'image/png',31758,'work-process/img1.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(55,0,'img2','img2',5,'image/png',31758,'work-process/img2.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(56,0,'img3','img3',5,'image/png',31758,'work-process/img3.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(57,0,'img4','img4',5,'image/png',31758,'work-process/img4.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(58,0,'branch1','branch1',6,'image/png',26654,'contact/branch1.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(59,0,'branch2','branch2',6,'image/png',26654,'contact/branch2.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(60,0,'branch3','branch3',6,'image/png',26654,'contact/branch3.png','[]','2024-09-24 04:51:48','2024-09-24 04:51:48',NULL,'public'),(61,0,'branch4','branch4',6,'image/png',26654,'contact/branch4.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(62,0,'1','1',7,'image/png',3300,'galleries/1.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(63,0,'2','2',7,'image/png',3240,'galleries/2.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(64,0,'3','3',7,'image/png',3300,'galleries/3.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(65,0,'4','4',7,'image/png',3261,'galleries/4.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(66,0,'5','5',7,'image/png',2876,'galleries/5.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(67,0,'6','6',7,'image/png',3261,'galleries/6.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(68,0,'7','7',7,'image/png',3300,'galleries/7.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(69,0,'8','8',7,'image/png',3240,'galleries/8.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(70,0,'9','9',7,'image/png',3300,'galleries/9.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(71,0,'news1','news1',8,'image/png',26224,'news/news1.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(72,0,'news2','news2',8,'image/png',26224,'news/news2.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(73,0,'news3','news3',8,'image/png',26224,'news/news3.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(74,0,'news4','news4',8,'image/png',25056,'news/news4.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(75,0,'news5','news5',8,'image/png',26224,'news/news5.png','[]','2024-09-24 04:51:49','2024-09-24 04:51:49',NULL,'public'),(76,0,'news6','news6',8,'image/png',26224,'news/news6.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(77,0,'404','404',9,'image/png',92835,'general/404.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(78,0,'appstore-btn','appstore-btn',9,'image/png',1066,'general/appstore-btn.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(79,0,'coming-soon','coming-soon',9,'image/png',69875,'general/coming-soon.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(80,0,'favicon','favicon',9,'image/png',850,'general/favicon.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(81,0,'google-play-btn','google-play-btn',9,'image/png',1066,'general/google-play-btn.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(82,0,'logo-footer','logo-footer',9,'image/png',2061,'general/logo-footer.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(83,0,'logo','logo',9,'image/png',2840,'general/logo.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(84,0,'newsletter-popup','newsletter-popup',9,'image/jpeg',59845,'general/newsletter-popup.jpg','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(85,0,'world-map','world-map',9,'image/png',14146,'general/world-map.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(86,0,'24-hours','24-hours',10,'image/png',4564,'icons/24-hours.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(87,0,'address','address',10,'image/png',867,'icons/address.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(88,0,'cardboard','cardboard',10,'image/png',2150,'icons/cardboard.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(89,0,'cargo-ship','cargo-ship',10,'image/png',2648,'icons/cargo-ship.png','[]','2024-09-24 04:51:50','2024-09-24 04:51:50',NULL,'public'),(90,0,'certified','certified',10,'image/png',9491,'icons/certified.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(91,0,'chart','chart',10,'image/png',390,'icons/chart.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(92,0,'cities','cities',10,'image/png',1197,'icons/cities.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(93,0,'client','client',10,'image/png',872,'icons/client.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(94,0,'company','company',10,'image/png',1107,'icons/company.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(95,0,'container','container',10,'image/png',2898,'icons/container.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(96,0,'delivery-2','delivery-2',10,'image/png',1575,'icons/delivery-2.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(97,0,'delivery','delivery',10,'image/png',2907,'icons/delivery.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(98,0,'fb','fb',10,'image/png',287,'icons/fb.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(99,0,'feature','feature',10,'image/png',705,'icons/feature.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(100,0,'feature2','feature2',10,'image/png',638,'icons/feature2.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(101,0,'feature3','feature3',10,'image/png',484,'icons/feature3.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(102,0,'forklift','forklift',10,'image/png',4108,'icons/forklift.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(103,0,'handover','handover',10,'image/png',898,'icons/handover.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(104,0,'icon1','icon1',10,'image/png',1458,'icons/icon1.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(105,0,'icon2','icon2',10,'image/png',956,'icons/icon2.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(106,0,'in','in',10,'image/png',579,'icons/in.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(107,0,'inst','inst',10,'image/png',525,'icons/inst.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(108,0,'order','order',10,'image/png',1754,'icons/order.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(109,0,'pallet-2','pallet-2',10,'image/png',1858,'icons/pallet-2.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(110,0,'pallet','pallet',10,'image/png',2292,'icons/pallet.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(111,0,'parachute','parachute',10,'image/png',2674,'icons/parachute.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(112,0,'payment','payment',10,'image/png',2468,'icons/payment.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(113,0,'phone','phone',10,'image/png',1205,'icons/phone.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(114,0,'picked','picked',10,'image/png',2739,'icons/picked.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(115,0,'plane-2','plane-2',10,'image/png',3411,'icons/plane-2.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(116,0,'plane','plane',10,'image/png',5115,'icons/plane.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(117,0,'play-icon','play-icon',10,'image/png',2190,'icons/play-icon.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(118,0,'play','play',10,'image/png',2209,'icons/play.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(119,0,'quotation','quotation',10,'image/png',602,'icons/quotation.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(120,0,'quote-2','quote-2',10,'image/png',1125,'icons/quote-2.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(121,0,'quote','quote',10,'image/png',1133,'icons/quote.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(122,0,'shape-icon','shape-icon',10,'image/png',1458,'icons/shape-icon.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(123,0,'skype','skype',10,'image/png',551,'icons/skype.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(124,0,'stopwatch','stopwatch',10,'image/png',4626,'icons/stopwatch.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(125,0,'support','support',10,'image/png',648,'icons/support.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(126,0,'train','train',10,'image/png',3452,'icons/train.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(127,0,'tw','tw',10,'image/png',409,'icons/tw.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(128,0,'vespa','vespa',10,'image/png',1974,'icons/vespa.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(129,0,'warehouse','warehouse',10,'image/png',2681,'icons/warehouse.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(130,0,'worldwide','worldwide',10,'image/png',5096,'icons/worldwide.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(131,0,'youtube','youtube',10,'image/png',386,'icons/youtube.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(132,0,'bg-banner','bg-banner',11,'image/png',998,'shapes/bg-banner.png','[]','2024-09-24 04:51:51','2024-09-24 04:51:51',NULL,'public'),(133,0,'bg-contact','bg-contact',11,'image/png',7719,'shapes/bg-contact.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(134,0,'bg-info-7','bg-info-7',11,'image/png',3770,'shapes/bg-info-7.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(135,0,'bg-newsletter-1','bg-newsletter-1',11,'image/png',1800,'shapes/bg-newsletter-1.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(136,0,'bg-newsletter-2','bg-newsletter-2',11,'image/png',252,'shapes/bg-newsletter-2.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(137,0,'bg-quote','bg-quote',11,'image/png',5439,'shapes/bg-quote.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(138,0,'bg-requestquote-3','bg-requestquote-3',11,'image/png',4624,'shapes/bg-requestquote-3.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(139,0,'bg-testimonial-4','bg-testimonial-4',11,'image/png',4023,'shapes/bg-testimonial-4.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(140,0,'bg-testimonial','bg-testimonial',11,'image/png',6288,'shapes/bg-testimonial.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(141,0,'bg-touch','bg-touch',11,'image/png',5939,'shapes/bg-touch.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(142,0,'bg-union','bg-union',11,'image/png',468,'shapes/bg-union.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(143,0,'bg-what-done','bg-what-done',11,'image/png',4267,'shapes/bg-what-done.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(144,0,'bg-why','bg-why',11,'image/png',4189,'shapes/bg-why.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(145,0,'subtract','subtract',11,'image/png',7069,'shapes/subtract.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(146,0,'slider-1','slider-1',12,'image/png',19806,'banners/slider-1.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(147,0,'slider-2','slider-2',12,'image/png',19806,'banners/slider-2.png','[]','2024-09-24 04:51:52','2024-09-24 04:51:52',NULL,'public'),(148,0,'1','1',13,'image/png',24958,'teams/1.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(149,0,'2','2',13,'image/png',24958,'teams/2.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(150,0,'3','3',13,'image/png',24958,'teams/3.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(151,0,'4','4',13,'image/png',24958,'teams/4.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(152,0,'5','5',13,'image/png',24958,'teams/5.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(153,0,'6','6',13,'image/png',24958,'teams/6.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(154,0,'7','7',13,'image/png',24958,'teams/7.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(155,0,'8','8',13,'image/png',24958,'teams/8.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(156,0,'img1','img1',14,'image/png',37787,'services/img1.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(157,0,'img2','img2',14,'image/png',37735,'services/img2.png','[]','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,'public'),(158,0,'img3','img3',14,'image/png',26946,'services/img3.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(159,0,'img4','img4',14,'image/png',18511,'services/img4.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(160,0,'menu1','menu1',14,'image/png',10131,'services/menu1.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(161,0,'menu2','menu2',14,'image/png',10131,'services/menu2.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(162,0,'menu3','menu3',14,'image/png',10131,'services/menu3.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(163,0,'menu4','menu4',14,'image/png',10131,'services/menu4.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(164,0,'menu5','menu5',14,'image/png',10131,'services/menu5.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(165,0,'menu6','menu6',14,'image/png',10131,'services/menu6.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(166,0,'menu7','menu7',14,'image/png',10131,'services/menu7.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(167,0,'service1','service1',14,'image/png',26654,'services/service1.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(168,0,'service2','service2',14,'image/png',26654,'services/service2.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(169,0,'service3','service3',14,'image/png',26654,'services/service3.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(170,0,'service4','service4',14,'image/png',26864,'services/service4.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(171,0,'service5','service5',14,'image/png',31361,'services/service5.png','[]','2024-09-24 04:51:54','2024-09-24 04:51:54',NULL,'public'),(172,0,'service6','service6',14,'image/png',31361,'services/service6.png','[]','2024-09-24 04:51:55','2024-09-24 04:51:55',NULL,'public'),(173,0,'service7','service7',14,'image/png',31361,'services/service7.png','[]','2024-09-24 04:51:55','2024-09-24 04:51:55',NULL,'public');
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
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'about',NULL,'about',0,'2024-09-24 04:51:41','2024-09-24 04:51:41',NULL),(2,0,'backgrounds',NULL,'backgrounds',0,'2024-09-24 04:51:43','2024-09-24 04:51:43',NULL),(3,0,'brands',NULL,'brands',0,'2024-09-24 04:51:45','2024-09-24 04:51:45',NULL),(4,0,'homepage',NULL,'homepage',0,'2024-09-24 04:51:45','2024-09-24 04:51:45',NULL),(5,0,'work-process',NULL,'work-process',0,'2024-09-24 04:51:48','2024-09-24 04:51:48',NULL),(6,0,'contact',NULL,'contact',0,'2024-09-24 04:51:48','2024-09-24 04:51:48',NULL),(7,0,'galleries',NULL,'galleries',0,'2024-09-24 04:51:49','2024-09-24 04:51:49',NULL),(8,0,'news',NULL,'news',0,'2024-09-24 04:51:49','2024-09-24 04:51:49',NULL),(9,0,'general',NULL,'general',0,'2024-09-24 04:51:50','2024-09-24 04:51:50',NULL),(10,0,'icons',NULL,'icons',0,'2024-09-24 04:51:50','2024-09-24 04:51:50',NULL),(11,0,'shapes',NULL,'shapes',0,'2024-09-24 04:51:51','2024-09-24 04:51:51',NULL),(12,0,'banners',NULL,'banners',0,'2024-09-24 04:51:52','2024-09-24 04:51:52',NULL),(13,0,'teams',NULL,'teams',0,'2024-09-24 04:51:52','2024-09-24 04:51:52',NULL),(14,0,'services',NULL,'services',0,'2024-09-24 04:51:53','2024-09-24 04:51:53',NULL);
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
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
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
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,5,'footer-menu','2024-09-24 04:51:55','2024-09-24 04:51:55');
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
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,NULL,NULL,0,'Home',NULL,'_self',1,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Homepage 1',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,1,'Homepage 2',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,2,'Homepage 3',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,3,'Homepage 4',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(6,1,0,5,'Botble\\Page\\Models\\Page','/about-us',NULL,1,'About Us',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(7,1,0,NULL,NULL,NULL,NULL,2,'Services',NULL,'_self',1,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(8,1,7,6,'Botble\\Page\\Models\\Page','/services',NULL,0,'Services',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(9,1,7,NULL,NULL,'',NULL,1,'Service Details',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(10,1,0,NULL,NULL,NULL,NULL,3,'Pages',NULL,'_self',1,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(11,1,10,7,'Botble\\Page\\Models\\Page','/track-your-parcel',NULL,0,'Track Your Parcel',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(12,1,10,8,'Botble\\Page\\Models\\Page','/work-process',NULL,1,'Work Process',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(13,1,10,9,'Botble\\Page\\Models\\Page','/request-a-quote',NULL,2,'Request a quote',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(14,1,10,10,'Botble\\Page\\Models\\Page','/our-team',NULL,3,'Our team',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(15,1,10,11,'Botble\\Page\\Models\\Page','/faqs',NULL,4,'FAQ\'s',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(16,1,10,15,'Botble\\Page\\Models\\Page','/coming-soon',NULL,5,'Coming soon',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(17,1,10,12,'Botble\\Page\\Models\\Page','/newsletter',NULL,6,'Newsletter',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(18,1,10,NULL,NULL,'/404',NULL,7,'Error 404',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(19,1,0,NULL,NULL,NULL,NULL,4,'Blog',NULL,'_self',1,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(20,1,19,13,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(21,1,19,NULL,NULL,'',NULL,1,'Blog Details',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(22,1,0,14,'Botble\\Page\\Models\\Page','/contact-us',NULL,5,'Contact',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(23,2,0,NULL,NULL,'/contact-us',NULL,0,'Mission & Vision',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(24,2,0,NULL,NULL,'/our-team',NULL,1,'Our Team',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(25,2,0,NULL,NULL,'/contact-us',NULL,2,'Careers',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(26,2,0,NULL,NULL,'/services',NULL,3,'Press & Media',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(27,2,0,NULL,NULL,'/contact-us',NULL,4,'Advertising',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(28,2,0,NULL,NULL,'/contact-us',NULL,5,'Testimonials',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(29,3,0,NULL,NULL,'/contact-us',NULL,0,'Global coverage',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(30,3,0,NULL,NULL,'/contact-us',NULL,1,'Distribution',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(31,3,0,NULL,NULL,'/contact-us',NULL,2,'Accounting Tools',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(32,3,0,NULL,NULL,'/contact-us',NULL,3,'Freight Recovery',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(33,3,0,NULL,NULL,'/contact-us',NULL,4,'Supply Chain',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(34,3,0,NULL,NULL,'/contact-us',NULL,5,'Warehousing',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(35,4,0,2,'Botble\\Logistics\\Models\\ServiceCategory',NULL,NULL,0,'Air Freight',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(36,4,0,1,'Botble\\Logistics\\Models\\ServiceCategory',NULL,NULL,1,'Ocean Freight',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(37,4,0,4,'Botble\\Logistics\\Models\\ServiceCategory',NULL,NULL,2,'Railway Freight',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(38,4,0,5,'Botble\\Logistics\\Models\\ServiceCategory',NULL,NULL,3,'Warehousing',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(39,4,0,3,'Botble\\Logistics\\Models\\ServiceCategory',NULL,NULL,4,'Distribution',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(40,4,0,7,'Botble\\Logistics\\Models\\ServiceCategory',NULL,NULL,5,'Value added',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(41,5,0,16,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Privacy policy',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(42,5,0,17,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Cookies',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55'),(43,5,0,18,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Terms of service',NULL,'_self',0,'2024-09-24 04:51:55','2024-09-24 04:51:55');
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
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(2,'Company','company','published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(3,'Industries','industries','published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(4,'Services','services','published','2024-09-24 04:51:55','2024-09-24 04:51:55'),(5,'Footer menu','footer-menu','published','2024-09-24 04:51:55','2024-09-24 04:51:55');
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
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'hide_pre_footer_sidebar','[true]',1,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(2,'header_style','[\"style-2\"]',3,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(3,'breadcrumb','[\"style-2\"]',5,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(4,'breadcrumb_color','[\"#034460\"]',5,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(5,'breadcrumb_background','[\"backgrounds\\/bg-ship-banner.png\"]',5,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(6,'breadcrumb','[\"style-1\"]',8,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(7,'breadcrumb_color','[\"#e0f0f6\"]',8,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(8,'breadcrumb_background','[\"general\\/world-map.png\"]',8,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(9,'breadcrumb_image','[\"general\\/favicon.png\"]',8,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(10,'breadcrumb','[\"style-1\"]',11,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(11,'breadcrumb_color','[\"#e0f0f6\"]',11,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(12,'breadcrumb_background','[\"general\\/world-map.png\"]',11,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(13,'hide_pre_footer_sidebar','[true]',12,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(14,'breadcrumb','[\"style-1\"]',16,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(15,'breadcrumb_color','[\"#e0f0f6\"]',16,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(16,'breadcrumb_background','[\"general\\/world-map.png\"]',16,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(17,'breadcrumb_image','[\"general\\/favicon.png\"]',16,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(18,'breadcrumb','[\"style-1\"]',17,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(19,'breadcrumb_color','[\"#e0f0f6\"]',17,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(20,'breadcrumb_background','[\"general\\/world-map.png\"]',17,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(21,'breadcrumb_image','[\"general\\/favicon.png\"]',17,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(22,'breadcrumb','[\"style-1\"]',18,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(23,'breadcrumb_color','[\"#e0f0f6\"]',18,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(24,'breadcrumb_background','[\"general\\/world-map.png\"]',18,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(25,'breadcrumb_image','[\"general\\/favicon.png\"]',18,'Botble\\Page\\Models\\Page','2024-09-24 04:51:49','2024-09-24 04:51:49'),(26,'subtitle','[\"Logistics & Transportation\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(27,'button_label','[\"Contact Us\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(28,'link_label','[\"How It Works\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(29,'link_url','[\"https:\\/\\/www.youtube.com\\/watch?v=v2qeqkKgw7U\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(30,'link_icon','[\"icons\\/play.png\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(31,'subtitle','[\"Logistics & Transportation\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(32,'button_label','[\"Contact Us\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(33,'link_label','[\"How It Works\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(34,'link_url','[\"https:\\/\\/www.youtube.com\\/watch?v=v2qeqkKgw7U\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(35,'link_icon','[\"icons\\/play.png\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-09-24 04:51:52','2024-09-24 04:51:52'),(36,'title','[\"Satisfied client testimonial\"]',1,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(37,'star','[5]',1,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(38,'title','[\"98% of residents recommend us\"]',2,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(39,'star','[5]',2,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(40,'title','[\"Our success stories\"]',3,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(41,'star','[5]',3,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(42,'title','[\"This is simply unbelievable\"]',4,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(43,'star','[5]',4,'Botble\\Testimonial\\Models\\Testimonial','2024-09-24 04:51:52','2024-09-24 04:51:52'),(44,'description','[\"Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally\"]',1,'Botble\\Team\\Models\\Team','2024-09-24 04:51:53','2024-09-24 04:51:53'),(45,'description','[\"Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally\"]',2,'Botble\\Team\\Models\\Team','2024-09-24 04:51:53','2024-09-24 04:51:53'),(46,'description','[\"Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally\"]',3,'Botble\\Team\\Models\\Team','2024-09-24 04:51:53','2024-09-24 04:51:53'),(47,'description','[\"Sharing content online allows you to craft an online persona that reflects your personal values and professional skills. Even if you only use social media occasionally\"]',4,'Botble\\Team\\Models\\Team','2024-09-24 04:51:53','2024-09-24 04:51:53'),(48,'icon','[\"\\/icons\\/cargo-ship.png\"]',1,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(49,'icon','[\"\\/icons\\/plane.png\"]',2,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(50,'icon','[\"\\/icons\\/delivery.png\"]',3,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(51,'icon','[\"\\/icons\\/train.png\"]',4,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(52,'icon','[\"\\/icons\\/pallet.png\"]',5,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(53,'icon','[\"\\/icons\\/worldwide.png\"]',6,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(54,'icon','[\"\\/icons\\/order.png\"]',7,'Botble\\Logistics\\Models\\ServiceCategory','2024-09-24 04:51:55','2024-09-24 04:51:55'),(55,'price_monthly','[125]',1,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(56,'price_yearly','[1500]',1,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(57,'price_monthly','[89]',2,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(58,'price_yearly','[1068]',2,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(59,'price_monthly','[19]',3,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(60,'price_yearly','[2388]',3,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(61,'price_monthly','[399]',4,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55'),(62,'price_yearly','[4788]',4,'Botble\\Logistics\\Models\\Package','2024-09-24 04:51:55','2024-09-24 04:51:55');
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(33,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(34,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(35,'2024_07_12_100000_change_random_hash_for_media',1),(36,'2024_04_27_100730_improve_analytics_setting',2),(37,'2023_08_11_060908_create_announcements_table',3),(38,'2015_06_29_025744_create_audit_history',4),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(40,'2015_06_18_033822_create_blog_table',5),(41,'2021_02_16_092633_remove_default_value_for_author_type',5),(42,'2021_12_03_030600_create_blog_translations',5),(43,'2022_04_19_113923_add_index_to_table_posts',5),(44,'2023_08_29_074620_make_column_author_id_nullable',5),(45,'2024_07_30_091615_fix_order_column_in_categories_table',5),(46,'2016_06_17_091537_create_contacts_table',6),(47,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(48,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(49,'2024_03_25_000001_update_captcha_settings_for_contact',6),(50,'2024_04_19_063914_create_custom_fields_table',6),(51,'2018_07_09_221238_create_faq_table',7),(52,'2021_12_03_082134_create_faq_translations',7),(53,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(54,'2016_10_13_150201_create_galleries_table',8),(55,'2021_12_03_082953_create_gallery_translations',8),(56,'2022_04_30_034048_create_gallery_meta_translations_table',8),(57,'2023_08_29_075308_make_column_user_id_nullable',8),(58,'2016_10_03_032336_create_languages_table',9),(59,'2023_09_14_022423_add_index_for_language_table',9),(60,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(61,'2021_12_03_075608_create_page_translations',10),(62,'2023_07_06_011444_create_slug_translations_table',10),(63,'2023_01_31_023233_create_lg_custom_fields_table',11),(64,'2023_07_25_072632_create_service_categories_table',11),(65,'2023_07_25_072639_create_services_table',11),(66,'2023_07_25_072654_create_packages_table',11),(67,'2023_07_25_073403_create_quotes_table',11),(68,'2023_08_08_022314_change_price_column_type_lg_packages_table',11),(69,'2023_08_08_023317_add_annual_price_to_packages_table',11),(70,'2023_09_22_050013_fix_missing_translation_tables',11),(71,'2023_09_22_061723_create_custom_fields_translations_table',11),(72,'2023_12_24_071314_fix_translation_for_services',11),(73,'2017_10_24_154832_create_newsletter_table',12),(74,'2024_03_25_000001_update_captcha_settings_for_newsletter',12),(75,'2017_07_11_140018_create_simple_slider_table',13),(76,'2022_11_02_092723_team_create_team_table',14),(77,'2023_08_11_094574_update_team_table',14),(78,'2023_11_30_085354_add_missing_description_to_team',14),(79,'2018_07_09_214610_create_testimonial_table',15),(80,'2021_12_03_083642_create_testimonials_translations',15),(81,'2016_10_07_193005_create_translations_table',16),(82,'2023_12_12_105220_drop_translations_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
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
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage 1','[simple-slider key=\"home-slider\"][/simple-slider][brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" background_color=\"#E0F0F6\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"/contact-us\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"/contact-us\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"/contact-us\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"/contact-us\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"/contact-us\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"/contact-us\"][/brands][services title=\"What We Offer\" description=\"Welcome to our transportation services agency. We are the best at our transportation service ever.\" button_label=\"Get a quote\" button_link=\"/contact-us\" background=\"backgrounds/bg-offer.png\" left_shape_image=\"icons/quote.png\" style=\"style-1\" quantity=\"6\" name_1=\"Sea Forwarding\" image_1=\"icons/cargo-ship.png\" description_1=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_1=\"/contact-us\" name_2=\"Air Freight Forwarding\" image_2=\"icons/plane.png\" description_2=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_2=\"/contact-us\" name_3=\"Land Transportation\" image_3=\"icons/delivery.png\" description_3=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_3=\"/contact-us\" name_4=\"Warehouse & Distribution\" image_4=\"icons/forklift.png\" description_4=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_4=\"/contact-us\" name_5=\"Railway Logistics\" image_5=\"icons/train.png\" description_5=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_5=\"/contact-us\" name_6=\"Cross Border\" image_6=\"icons/worldwide.png\" description_6=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_6=\"/contact-us\"][/services][information-1 title=&quot;We are proud of our workforce &lt;br&gt; and have worked hard.&quot; subtitle=&quot;Delivering Results for Industry Leaders&quot; icon=&quot;general/favicon.png&quot; left_background=&quot;homepage/img1.png&quot; shape_image_horizontal=&quot;icons/icon1.png&quot; shape_image_vertical=&quot;shapes/subtract.png&quot; right_title=&quot;Fast shipping with the most modern technology&quot; right_description=&quot;Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We&rsquo;ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.&quot; feature_1=&quot;Task tracking&quot; feature_2=&quot;Create task dependencies&quot; feature_3=&quot;Task visualization&quot; feature_4=&quot;Hare files, discuss&quot; feature_5=&quot;Meet deadlines faster&quot; feature_6=&quot; Track time spent on project&quot; button_label_1=&quot;Apple Store&quot; button_url_1=&quot;https://apps.apple.com/us/app/&quot; button_image_1=&quot;general/appstore-btn.png&quot; button_label_2=&quot;Google Play&quot; button_url_2=&quot;https://play.google.com/store/apps&quot; button_image_2=&quot;general/google-play-btn.png&quot; style=&quot;style-1&quot; quantity=&quot;6&quot;][/information-1][information-2 left_background=&quot;shapes/bg-touch.png&quot; right_background=&quot;homepage/port.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-1&quot; quantity=&quot;2&quot; title_1=&quot;Boost your sale&quot; image_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Introducing New Features&quot; image_2=&quot;icons/feature3.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-2][how-it-works title=\"How It Works\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area and delivery services vary by location. Whatever the mode or requirement, we will find and book the ideal expedited shipping solution to ensure a timely delivery.\" background_color=\"#034460\" title_direction=\"center\" youtube_video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" icon=\"general/favicon.png\" inner_background=\"general/world-map.png\" left_background=\"homepage/how-it-work.png\" left_title=\"We have 25 years experience in this passion\" left_description=\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\" left_icon=\"icons/play.png\" style=\"style-1\" quantity=\"5\" title_1=\" Customer places order\" description_1=\"Inspection and quality check of goods\" image_1=\"icons/order.png\" title_2=\"Payment successful\" description_2=\"Payoneer, Paypal, or Visa master card\" image_2=\"icons/payment.png\" title_3=\"Warehouse receives order\" description_3=\"Check the accuracy of the goods.\" image_3=\"icons/warehouse.png\" title_4=\"Item picked, packed & shipped\" description_4=\"Ship the goods to a local carrier\" image_4=\"icons/picked.png\" title_5=\"Delivered & Measure success\" description_5=\"Update order status on the system\" image_5=\"icons/delivery.png\"][/how-it-works][testimonials title=&quot;What our customers are saying&quot; description=&quot;Hear from our users who have saved thousands on their &lt;br&gt; Startup and SaaS solution spend.&quot; limit=&quot;4&quot; background=&quot;homepage/ship.png&quot; right_background=&quot;shapes/bg-testimonial.png&quot; shape_image=&quot;icons/quotation.png&quot;][/testimonials][projects title=\"What We Have Done\" description=\"Check out some of the projects we’ve completed with our amazing partners.\" button_label=\"View All Projects\" button_url=\"/contact-us\" background=\"shapes/bg-what-done.png\" style=\"style-1\" quantity=\"4\" name_1=\"Air Freight\" description_1=\"Our Air Freight project soared above expectations, showcasing our expertise in urgent deliveries. We provided rapid, global air transportation solutions that met critical timelines. When time is of the essence.\" image_1=\"homepage/img.png\" url_1=\"/contact-us\" name_2=\"Sea Freight\" description_2=\"Our Sea Freight project stands as a testament to our proficiency in navigating international waters. Seamlessly managing complex logistics, we delivered goods across continents with efficiency and reliability.\" image_2=\"homepage/img2.png\" url_2=\"/contact-us\" name_3=\"Trucking\" description_3=\"In our Trucking project, we transformed roadways into avenues of precision and punctuality. With a fleet of modern vehicles and a team of skilled drivers, we ensured swift and secure deliveries nationwide. Your cargo’s journey.\" image_3=\"homepage/img3.png\" url_3=\"/contact-us\" name_4=\"Warehouse\" description_4=\"In our Warehouse project, we excelled in storage and distribution. With state-of-the-art facilities and meticulous inventory management, we safeguarded your assets while streamlining the supply chain. Your goods found.\" image_4=\"homepage/img4.png\" url_4=\"/contact-us\"][/projects][request-quote title=&quot;World&rsquo;s Leading Companies &lt;br&gt; For Over 80 Years.&quot; description=&quot;A big opportunity for your business growth. Delivering Results for Industry Leaders. We are &lt;br&gt; proud of our work for and have worked hard.&quot; background=&quot;homepage/container.png&quot; quantity=&quot;4&quot; image_1=&quot;icons/handover.png&quot; number_1=&quot;+ 380,000&quot; title_1=&quot;Parcels Shipped Safely&quot; image_2=&quot;icons/cities.png&quot; number_2=&quot;+ 120,000&quot; title_2=&quot;Cities Served Worldwide&quot; image_3=&quot;icons/client.png&quot; number_3=&quot;+2280&quot; title_3=&quot;Satisfied Clients&quot; image_4=&quot;icons/company.png&quot; number_4=&quot;+ 1200&quot; title_4=&quot;Company We Help&quot; form_title=&quot;Calculate Shipping&quot; form_description=&quot;Please Fill All Inquiry To Get Your Total Price.&quot; inner_background=&quot;shapes/bg-contact.png&quot; form_background=&quot;homepage/img-contact.png&quot; link_label=&quot;Contact Us&quot; link_url=&quot;/contact-us&quot;][/request-quote][pricing title=&quot;Choose The Best Plan&quot; description=&quot;Pick your plan. Change whenever you want.&lt;br&gt;No switching fees between packages&quot; style=&quot;style-1&quot; package_ids=&quot;1,2,4&quot; number_of_packages_per_line=&quot;3&quot; left_background=&quot;backgrounds/bg-plan-left.png&quot; right_background=&quot;backgrounds/bg-plan-right.png&quot;][/pricing][faqs title=\"FAQs\" description=\"Feeling inquisitive? Have a read through some of our FAQs or contact our supporters for help.\" gallery_id=\"7\" category_ids=\"1,2\" expand_first_time=\"1\" bottom_title=\"Need more help?\" button_label=\"Contact Us\" button_url=\"/contact-us\" link_label=\"Learn More\" link_url=\"/contact-us\"][/faqs][call-to-action title=\"Create your next Project with Us\" subtitle=\"Have any ideas in your mind?\" background=\"backgrounds/bg-get-quote.png\" button_label=\"GET A QUOTE\" button_url=\"/contact-us\"][/call-to-action][news title=\"Latest News\" description=\"The latest information about shipping services and our promotions.\" type=\"latest\"][/news][map logo=\"general/logo.png\" address=\"4517 Washington Ave. Manchester, Kentucky 39495\" phone=\"+01-246-357 (Any time 24/7)\" email=\"contact@transp.eu.com\" opening_hours=\"Hours: 8:00 - 17:00, Mon - Sat\"][/map]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(2,'Homepage 2','[hero-banner title=&quot;Taking Logistics to &lt;br&gt; Another Leve&quot; subtitle=&quot;Full Sustainable Cargo Solutions&quot; description=&quot;Representative logistics operator providing full range of service in the sphere of customs &lt;br&gt; clearance and transportation worldwide.&quot; banner_image=&quot;homepage/banner-2.png&quot; platform_google_play_url=&quot;https://play.google.com/&quot; platform_google_play_logo=&quot;general/google-play-btn.png&quot; platform_apple_store_url=&quot;https://www.apple.com/store&quot; platform_apple_store_logo=&quot;general/appstore-btn.png&quot; style=&quot;style-2&quot; quantity=&quot;3&quot; title_1=&quot;Air Freight Forwarding&quot; description_1=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_1=&quot;icons/plane.png&quot; label_1=&quot;View detail&quot; action_1=&quot;/contact-us&quot; title_2=&quot;Land Transportation&quot; description_2=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_2=&quot;icons/delivery.png&quot; label_2=&quot;View detail&quot; action_2=&quot;/contact-us&quot; title_3=&quot;Sea Forwarding&quot; description_3=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_3=&quot;icons/cargo-ship.png&quot; label_3=&quot;View detail&quot; action_3=&quot;/contact-us&quot;][/hero-banner][site-statistics title=\"Why Choose Us\" subtitle=\"Let the numbers speak for themselves.\" image=\"homepage/img-why.png\" background_icon=\"shapes/bg-why.png\" mini_icon_bottom=\"icons/quote.png\" button_label=\"View All Projects\" button_url=\"/contact-us\" style=\"style-1\" quantity=\"4\" title_1=\"Delivered packages.\" data_1=\"380\" unit_1=\"K\" description_1=\"We strongly support best practice sharing across our operations around the world and across various industrial sectors.\" title_2=\"Countries covered\" data_2=\"150\" unit_2=\"+\" description_2=\"We strongly support best practice sharing across our operations around the world and across various industrial sectors.\" title_3=\"Satisfied Clients\" data_3=\"6800\" description_3=\"We strongly support best practice sharing across our operations around the world and across various industrial sectors.\" title_4=\"Tons of goods\" data_4=\"120\" unit_4=\"K\" description_4=\"We strongly support best practice sharing across our operations around the world and across various industrial sectors.\"][/site-statistics][request-quote title=\"Fast shipping with the most modern technology\" description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We’ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.\" background=\"shapes/bg-quote.png\" background_color=\"#E0F0F6\" style=\"style-5\" quantity=\"4\" image_1=\"icons/chart.png\" title_1=\"Boost your sale\" description_1=\"The latest design trends meet hand-crafted templates.\" image_2=\"icons/chart.png\" title_2=\"Boost your sale\" description_2=\"The latest design trends meet hand-crafted templates.\" image_3=\"icons/feature.png\" title_3=\"Introducing New Features\" description_3=\"The latest design trends meet hand-crafted templates.\" image_4=\"icons/feature2.png\" title_4=\"Introducing New Features\" description_4=\"The latest design trends meet hand-crafted templates.\" form_title=\"Request a Quote\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\"][/request-quote][get-in-touch-with-us title=\"We take care about transportation for your business\" subtitle=\"GET IN TOUCH WITH US\" image=\"homepage/img-info-3.png\" box_info_left_title=\"Warehousing\" box_info_left_description=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" box_info_left_button_label=\"View Details\" box_info_left_button_url=\"/contact-us\" box_info_bottom_title=\"We have 25 years experience in this passion\" box_info_bottom_description=\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\" box_info_bottom_icon=\"icons/play.png\" quantity=\"2\" title_1=\"Great support 24/7\" image_1=\"icons/chart.png\" description_1=\"The latest design trends meet hand-crafted templates.\" title_2=\"Safe Packing\" image_2=\"homepage/feature2.png\" description_2=\"The latest design trends meet hand-crafted templates.\"][/get-in-touch-with-us][pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\" left_background=\"backgrounds/bg-plan-left.png\" right_background=\"backgrounds/bg-plan-right.png\"][/pricing]<div class=\"line-border\"></div>[teams title=\"Meet Our Team\" description=\"Welcome to our transportation services agency. We are the best at our trans-deportation service ever.\" team_ids=\"1,2,3,4\"][/teams][brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"https://alea.gov\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"/contact-us\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"/contact-us\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"/contact-us\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"/contact-us\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"/contact-us\"][/brands][testimonials title=&quot;Testimonials&quot; description=&quot;Hear from our users who have saved thousands on their &lt;br&gt; Startup and SaaS solution spend.&quot; limit=&quot;4&quot; background_color=&quot;#FFFFFF&quot; prefix_title_icon=&quot;general/favicon.png&quot; style=&quot;style-4&quot;][/testimonials][our-features title_primary=&quot;Global Shipping Partner To World&rsquo;s &lt;br&gt; Famous Companies&quot; title=&quot;Why choose us&quot; subtitle=&quot;Our Features&quot; description=&quot;Sustainability is an increasingly important factor for many customers when choosing a shipping company. Your shipping company can stand out by demonstrating a commitment to sustainable practices, such as using energy-efficient vehicles, reducing waste, and offsetting carbon emissions.&quot; background_color=&quot;#E0F0F6&quot; image=&quot;homepage/img-info-4.png&quot; button_primary_label=&quot;Contact Us&quot; button_primary_url=&quot;/contact-us&quot; button_secondary_label=&quot;Learn More&quot; button_secondary_url=&quot;/about-us&quot; quantity=&quot;8&quot; title_1=&quot;Reliable and Timely Deliveries&quot; title_2=&quot;Cost-Effective Shipping Options&quot; title_3=&quot;Exceptional Customer Service&quot; title_4=&quot;Flexibility and Customization&quot; title_5=&quot;Advanced Tracking Systems&quot; title_6=&quot;Commitment to Sustainability&quot; title_7=&quot;International Shipping Expertise&quot; title_8=&quot;Insurance and Liability Coverage&quot;][/our-features][news title=\"Our Blog & Insights\" description=\"The latest information about shipping services and our promotions\" type=\"featured\" limit=\"4\"][/news]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(3,'Homepage 3','[hero-banner title=\"Moving Your Products Across All Borders\" description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We’ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.\" background_color=\"#E0F0F6\" banner_image=\"homepage/banner-3.png\" shape_icon=\"shapes/bg-union.png\" youtube_video_url=\"https://www.youtube.com/watch?v=Y1t6rjWYNro\" button_label=\"How it works?\" button_primary_url=\"/contact-us\" button_primary_label=\"Contact Us\" style=\"style-3\" quantity=\"3\" title_1=\"Parcels Shipped\" data_1=\" 380,000\" image_1=\"icons/delivery.png\" title_2=\"Cities Worldwide\" data_2=\"12,000\" image_2=\"icons/forklift.png\" title_3=\"Satisfied Clients\" data_3=\" 2280\" unit_3=\"K\" image_3=\"icons/cargo-ship.png\"][/hero-banner][information-2 left_background=&quot;homepage/img-info-5.png&quot; right_background=&quot;homepage/img-info-5-2.png&quot; center_icon=&quot;icons/certified.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-2&quot; quantity=&quot;2&quot; title_1=&quot;Boost your sale&quot; image_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Introducing New Features&quot; image_2=&quot;icons/feature3.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-2][brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" background_color=\"#E0F0F6\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"/contact-us\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"/contact-us\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"/contact-us\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"/contact-us\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"/contact-us\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"/contact-us\"][/brands][what-we-offer title=\"What We Offer\" description=\"Welcome to our transportation services agency. We are the best at our transportation service ever.\" button_label=\"Get a quote\" button_url=\"/contact-us\" quantity=\"4\" title_1=\"Sea Forwarding\" image_1=\"services/service1.png\" icon_1=\"icons/delivery.png\" description_1=\"We offer specialized departments for continental transports.\" title_2=\"Air Freight Forwarding\" image_2=\"services/service2.png\" icon_2=\"icons/delivery.png\" description_2=\"We offer specialized departments for continental transports.\" title_3=\"Land Transportation\" image_3=\"services/service3.png\" icon_3=\"icons/plane.png\" description_3=\"We offer specialized departments for continental transports.\" title_4=\"Railway Logistics\" image_4=\"services/service4.png\" icon_4=\"icons/train.png\" description_4=\"We offer specialized departments for continental transports.\"][/what-we-offer][site-statistics title=\"We take care about transportation for your business\" highlight_text=\"transportation\" image=\"backgrounds/bg-whychooseus.png\" button_label=\"View All Projects\" button_url=\"/contact-us\" style=\"style-2\" quantity=\"4\" title_1=\"Delivered packages.\" data_1=\"380\" unit_1=\"K\" title_2=\"Countries covered\" data_2=\"150\" unit_2=\"+\" title_3=\"Satisfied Clients\" data_3=\"6800\" title_4=\"Tons of goods\" data_4=\"120\" unit_4=\"K\"][/site-statistics][who-we-are title=\"We’re the world’s leading shipping service provider\" subtitle=\"Who We Are?\" description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We’ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.\" image=\"homepage/img-info-6.png\" youtube_video_url=\"https://www.youtube.com/watch?v=v2qeqkKgw7U\" button_label=\"How it works ? Watch video tour\" button_icon=\"icons/play.png\" style=\"style-1\" quantity=\"4\" title_1=\"Boost your sale\" icon_1=\"icons/chart.png\" description_1=\"The latest design trends meet hand-crafted templates.\" title_2=\"Boost your sale\" icon_2=\"icons/chart.png\" description_2=\"The latest design trends meet hand-crafted templates.\" title_3=\"Introducing New Features\" icon_3=\"icons/feature.png\" description_3=\"The latest design trends meet hand-crafted templates.\" title_4=\"Introducing New Features\" icon_4=\"icons/feature2.png\" description_4=\"The latest design trends meet hand-crafted templates.\"][/who-we-are][projects title=&quot;Our latest completed and &lt;br&gt; running projects&quot; description=&quot;Delivering Results for Industry Leaders&quot; button_label=&quot;View All Projects&quot; button_url=&quot;/contact-us&quot; prefix_title_icon=&quot;general/favicon.png&quot; style=&quot;style-2&quot; quantity=&quot;4&quot; name_1=&quot;Air Freight&quot; description_1=&quot;Our Air Freight project soared above expectations, showcasing our expertise in urgent deliveries. We provided rapid, global air transportation solutions that met critical timelines. When time is of the essence.&quot; image_1=&quot;homepage/img.png&quot; url_1=&quot;/contact-us&quot; name_2=&quot;Sea Freight&quot; description_2=&quot;Our Sea Freight project stands as a testament to our proficiency in navigating international waters. Seamlessly managing complex logistics, we delivered goods across continents with efficiency and reliability.&quot; image_2=&quot;homepage/img2.png&quot; url_2=&quot;/contact-us&quot; name_3=&quot;Trucking&quot; description_3=&quot;In our Trucking project, we transformed roadways into avenues of precision and punctuality. With a fleet of modern vehicles and a team of skilled drivers, we ensured swift and secure deliveries nationwide. Your cargo&rsquo;s journey.&quot; image_3=&quot;homepage/img3.png&quot; url_3=&quot;/contact-us&quot; name_4=&quot;Warehouse&quot; description_4=&quot;In our Warehouse project, we excelled in storage and distribution. With state-of-the-art facilities and meticulous inventory management, we safeguarded your assets while streamlining the supply chain. Your goods found.&quot; image_4=&quot;homepage/img4.png&quot; url_4=&quot;/contact-us&quot;][/projects][testimonials title=\"Testimonials\" description=\"Hear from our users who have saved thousands on their Startup and SaaS solution spend. Quo nostrum praesentium At ratione iusto qui labore nesciunt ad architecto dolor est odio molestias non molestiae incidunt in praesentium odit.\" limit=\"4\" background=\"backgrounds/bg-testimonial-3.png\" prefix_title_icon=\"general/favicon.png\" button_primary_url=\"/contact-us\" button_primary_label=\"Contact Us\" button_secondary_url=\"/about-us\" button_secondary_label=\"Learn More\" style=\"style-2\"][/testimonials][request-quote background_color=\"#E0F0F6\" style=\"style-3\" quantity=\"6\" image_1=\"icons/order.png\" title_1=\"Customer places order\" description_1=\"Inspection and quality check of goods\" image_2=\"icons/payment.png\" title_2=\"Payment successful\" description_2=\"Payoneer, Paypal, or Visa master card\" image_3=\"icons/warehouse.png\" title_3=\"Warehouse receives order\" description_3=\"Check the accuracy of the goods.\" image_4=\"icons/vespa.png\" title_4=\"Item picked, packed & shipped\" description_4=\"Ship the goods to a local carrier\" image_5=\"icons/delivery.png\" title_5=\" Delivered & Measure success\" description_5=\"Update order status on the system\" form_title=\"Request a Quote\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" link_label=\"Contact Us\" link_url=\"/contact-us\"][/request-quote][faqs title=\"FAQs\" description=\"Feeling inquisitive? Have a read through some of our FAQs or contact our supporters for help.\" gallery_id=\"7\" category_ids=\"1,2\" expand_first_time=\"1\" bottom_title=\"Need more help?\" button_label=\"Contact Us\" button_url=\"/contact-us\" link_label=\"Learn More\" link_url=\"/contact-us\"][/faqs][news title=\"Our Blog & Insights\" description=\"The latest information about shipping services and our promotions\" type=\"featured\" limit=\"3\"][/news]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(4,'Homepage 4','[hero-banner title=&quot;Worldwide shipping and &lt;br&gt; professional solutions&quot; subtitle=&quot;Logistics &amp; Transportation&quot; description=&quot;Our experienced team of problem solvers and a commitment to always align with &lt;br&gt; our client&rsquo;s business goals and objectives is what drives mutual success.&quot; background_color=&quot;#E0F0F6&quot; banner_image=&quot;homepage/banner-4.png&quot; youtube_video_url=&quot;https://www.youtube.com/watch?v=Y1t6rjWYNro&amp;t=1s&quot; button_label=&quot;How it works?&quot; button_primary_url=&quot;/contact-us&quot; button_primary_label=&quot;Calculate Package&quot; style=&quot;style-4&quot; quantity=&quot;4&quot; title_1=&quot;Air Freight Forwarding&quot; description_1=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_1=&quot;icons/plane.png&quot; label_1=&quot;View detail&quot; action_1=&quot;/contact-us&quot; title_2=&quot;Land Transportation&quot; description_2=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_2=&quot;icons/delivery.png&quot; label_2=&quot;View detail&quot; action_2=&quot;/contact-us&quot; title_3=&quot;Sea Forwarding&quot; description_3=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_3=&quot;icons/cargo-ship.png&quot; label_3=&quot;View detail&quot; action_3=&quot;/contact-us&quot; title_4=&quot;Air Freight Forwarding&quot; description_4=&quot;We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.&quot; image_4=&quot;icons/plane.png&quot;][/hero-banner][information-1 title=&quot;Globally Connected by &lt;br&gt; Large Network&quot; subtitle=&quot;Who We Are?&quot; description=&quot;We strive to become pioneers in the field, providing first quality and cost-effective service, and smart solutions to the market. Our 30 years&rsquo; experience in the shipping, transport and logistics industry is our strength, which support us to deliver our promises to our customers.&quot; left_background=&quot;homepage/img-info-7.png&quot; shape_image_horizontal=&quot;icons/shape-icon.png&quot; shape_image_vertical=&quot;shapes/bg-info-7.png&quot; button_label_1=&quot;Apple Store&quot; button_url_1=&quot;https://apps.apple.com/us/app/&quot; button_image_1=&quot;general/appstore-btn.png&quot; button_label_2=&quot;Google Play&quot; button_url_2=&quot;https://play.google.com/store/apps&quot; button_image_2=&quot;general/google-play-btn.png&quot; style=&quot;style-2&quot; quantity=&quot;2&quot; title_1=&quot;Tracking Moving&quot; icon_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;24/7 Support&quot; icon_2=&quot;icons/support.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-1][testimonial-single title=\"Testimonials\" description=\"Hear from our users who have saved thousands on their Startup and SaaS solution spend.\" image=\"homepage/img-testimonial-4.png\" background_shape=\"shapes/bg-testimonial-4.png\" box_info_title=\"Satisfieds\" box_info_description=\"We always strive to serve our customers in the best way. \" box_info_label=\"View Details\" box_info_action=\"/contact-us\" testimonial_id=\"1\"][/testimonial-single][how-it-works title=&quot;How It Works&quot; description=&quot;You choose the cities where you&rsquo;d like to deliver. All deliveries are within a specific service area and delivery services vary by location. Whatever the mode or requirement, we will find and book the ideal expedited shipping solution to ensure a timely delivery.&quot; background_color=&quot;#034460&quot; title_direction=&quot;start&quot; youtube_video_url=&quot;https://www.youtube.com/watch?v=v2qeqkKgw7U&quot; button_label=&quot;How it works ? &lt;br&gt; Watch video tour&quot; button_icon=&quot;icons/play-icon.png&quot; icon=&quot;general/favicon.png&quot; inner_background=&quot;backgrounds/bg-how-it-work.png&quot; left_background=&quot;homepage/how-it-work.png&quot; left_title=&quot;We have 25 years experience in this passion&quot; left_description=&quot;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour&quot; left_icon=&quot;icons/play.png&quot; style=&quot;style-2&quot; quantity=&quot;5&quot; title_1=&quot; Customer places order&quot; description_1=&quot;Inspection and quality check of goods&quot; image_1=&quot;icons/order.png&quot; title_2=&quot;Payment successful&quot; description_2=&quot;Payoneer, Paypal, or Visa master card&quot; image_2=&quot;icons/payment.png&quot; title_3=&quot;Warehouse receives order&quot; description_3=&quot;Check the accuracy of the goods.&quot; image_3=&quot;icons/warehouse.png&quot; title_4=&quot;Item picked, packed &amp; shipped&quot; description_4=&quot;Ship the goods to a local carrier&quot; image_4=&quot;icons/picked.png&quot; title_5=&quot;Delivered &amp; Measure success&quot; description_5=&quot;Update order status on the system&quot; image_5=&quot;icons/delivery-2.png&quot;][/how-it-works][projects title=\"What We Have Done\" description=\"Check out some of the projects we’ve completed with our amazing partners.\" button_label=\"View All Projects\" button_url=\"/contact-us\" quantity=\"6\" name_1=\"Air Freight\" description_1=\"Our Air Freight project soared above expectations, showcasing our expertise in urgent deliveries. We provided rapid, global air transportation solutions that met critical timelines. When time is of the essence.\" image_1=\"homepage/img.png\" url_1=\"/contact-us\" name_2=\"Sea Freight\" description_2=\"Our Sea Freight project stands as a testament to our proficiency in navigating international waters. Seamlessly managing complex logistics, we delivered goods across continents with efficiency and reliability.\" image_2=\"homepage/img2.png\" url_2=\"/contact-us\" name_3=\"Trucking\" description_3=\"In our Trucking project, we transformed roadways into avenues of precision and punctuality. With a fleet of modern vehicles and a team of skilled drivers, we ensured swift and secure deliveries nationwide. Your cargo’s journey.\" image_3=\"homepage/img3.png\" url_3=\"/contact-us\" name_4=\"Warehouse\" description_4=\"In our Warehouse project, we excelled in storage and distribution. With state-of-the-art facilities and meticulous inventory management, we safeguarded your assets while streamlining the supply chain. Your goods found.\" image_4=\"homepage/img4.png\" url_4=\"/contact-us\"][/projects][who-we-are title=\"We are the world’s leading shipping service provider\" subtitle=\"Who We Are?\" description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We’ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.\" image=\"homepage/img-info-6.png\" youtube_video_url=\"https://www.youtube.com/watch?v=v2qeqkKgw7U\" button_label=\"How it works ? Watch video tour\" button_icon=\"icons/play.png\" style=\"style-1\" quantity=\"4\" title_1=\"Boost your sale\" icon_1=\"icons/chart.png\" description_1=\"The latest design trends meet hand-crafted templates.\" title_2=\"Boost your sale\" icon_2=\"icons/chart.png\" description_2=\"The latest design trends meet hand-crafted templates.\" title_3=\"Introducing New Features\" icon_3=\"icons/feature.png\" description_3=\"The latest design trends meet hand-crafted templates.\" title_4=\"Introducing New Features\" icon_4=\"icons/feature2.png\" description_4=\"The latest design trends meet hand-crafted templates.\"][/who-we-are]<div class=\"line-border mb-30 mt-70\"></div>[request-quote title=\"Fast shipping with the most modern technology\" description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We’ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.\" background=\"shapes/bg-quote.png\" background_color=\"#E0F0F6\" style=\"style-5\" quantity=\"4\" image_1=\"icons/chart.png\" title_1=\"Boost your sale\" description_1=\"The latest design trends meet hand-crafted templates.\" image_2=\"icons/chart.png\" title_2=\"Boost your sale\" description_2=\"The latest design trends meet hand-crafted templates.\" image_3=\"icons/feature.png\" title_3=\"Introducing New Features\" description_3=\"The latest design trends meet hand-crafted templates.\" image_4=\"icons/feature2.png\" title_4=\"Introducing New Features\" description_4=\"The latest design trends meet hand-crafted templates.\" form_title=\"Request a Quote\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\"][/request-quote][why-choose-us title=\"Why choose us\" subtitle=\"Our Features\" description=\"Sustainability is an increasingly important factor for many customers when choosing a shipping company. Your shipping company can stand out by demonstrating a commitment to sustainable practices, such as using energy-efficient vehicles, reducing waste, and offsetting carbon emissions.\" ticked_line=\"Reliable and Timely Deliveries, Advanced Tracking Systems, Cost-Effective Shipping Options, Commitment to Sustainability, Exceptional Customer Service, International Shipping Expertise, Flexibility and Customization, Insurance and Liability Coverage\" button_primary_label=\"Contact Us\" button_primary_url=\"/contact-us\" button_secondary_label=\"Learn More\" button_secondary_url=\"/contact-us\" style=\"style-1\" quantity=\"4\" title_1=\"Shipping Options\" icon_1=\"icons/container.png\" description_1=\"Tailored routes for versatile shipments, offering expedited and budget-friendly choices.\" title_2=\"Timely Deliveries\" icon_2=\"icons/stopwatch.png\" description_2=\"Precision planning and monitoring ensure on-time deliveries, a competitive edge for you.\" title_3=\"Customer Service\" icon_3=\"icons/24-hours.png\" description_3=\"Proactive solutions from our team, transforming challenges into satisfaction and support.\" title_4=\"Tracking Systems\" icon_4=\"icons/pallet.png\" description_4=\"Visibility at every stage, bridging distance through real-time insights for peace of mind.\"][/why-choose-us][brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"https://alea.gov\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"https://creati.com\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"https://landship.com\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"http://logisdelivery.com\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"http://santoslogistic.com\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"https://truck.com\"][/brands][pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\" left_background=\"backgrounds/bg-plan-left.png\" right_background=\"backgrounds/bg-plan-right.png\"][/pricing][news title=\"Our Blog & Insights\" description=\"The latest information about shipping services and our promotions.\" type=\"latest\"][/news]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(5,'About Us','[about-information-1 title=\"Simplifying complex shipping challenges with innovative solutions\" description=\"Logistics companies are essential to the smooth functioning of global supply chains. They offer a range of services such as transportation, warehousing, inventory management, and distribution to businesses across different industries. The role of logistics companies has become increasingly important in recent years due to the growth of e-commerce and global trade.\" button_primary_label=\"Calculate Package\" button_primary_url=\"/contact-us\" icon=\"icons/play.png\" icon_url=\"https://www.youtube.com/watch?v=v2qeqkKgw7U\" image_1=\"about/img-about-1-1.png\" image_2=\"about/img-about-1-2.png\" image_3=\"about/img-about-1-3.png\" floating_icon=\"icons/quote-2.png\"][/about-information-1][about-information-2 quantity=\"3\" badge_1=\"Mission\" title_1=\"Globally Connected by Large Network\" description_1=\"At Logistic TransP, our mission is to provide our clients with exceptional transportation services that meet and exceed their expectations. We aim to be the most reliable, efficient, and cost-effective transportation provider in the industry.\" image_1=\"about/img-about-2-1.png\" icon_for_feature_1_1=\"icons/chart.png\" feature_1_1=\"Affordable Cost\" feature_description_1_1=\"The latest design trends meet hand-crafted templates.\" icon_for_feature_2_1=\"icons/feature3.png\" feature_2_1=\"Short Time Delivery\" feature_description_2_1=\"The latest design trends meet hand-crafted templates.\" badge_2=\"History\" title_2=\"Globally Connected by Large Network\" description_2=\"Logistic TransP was founded in 2005 by a group of transportation professionals who saw an opportunity to provide a better level of service to businesses. Since our founding, we have grown to become a leading transportation provider, with a presence in over 30 countries around the world.\" image_2=\"about/img-about-2-2.png\" button_primary_label_2=\"Contact Us\" button_primary_url_2=\"/contact-us\" button_secondary_label_2=\"Learn More\" button_secondary_url_2=\"/contact-us\" badge_3=\"Our Partners\" title_3=\"We have established strong relationships with our partners\" description_3=\"We strive to become pioneers in the field, providing first quality and cost-effective service, and smart solutions to the market. Our 30 years’ experience in the shipping, transport and logistics industry is our strength, which support us to deliver our promises to our customers.\" image_3=\"about/img-about-2-3.png\" platform_google_play_url_3=\"https://store.google.com/regionpicker\" platform_google_play_logo_3=\"general/google-play-btn.png\" platform_apple_store_url_3=\"https://www.apple.com/vn/app-store/\" platform_apple_store_logo_3=\"general/appstore-btn.png\"][/about-information-2][information-2 left_background=&quot;shapes/bg-touch.png&quot; right_background=&quot;homepage/img-info-2.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-1&quot; quantity=&quot;2&quot; title_1=&quot;Boost your sale&quot; image_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Introducing New Features&quot; image_2=&quot;icons/feature3.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-2][teams title=\"Meet Our Team\" description=\"Welcome to our transportation services agency. We are the best at our trans-deportation service ever.\" team_ids=\"1,2,3,4\"][/teams][brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"https://alea.gov\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"/contact-us\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"/contact-us\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"/contact-us\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"/contact-us\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"/contact-us\"][/brands][testimonials title=&quot;Testimonials&quot; description=&quot;Hear from our users who have saved thousands on their &lt;br&gt; Startup and SaaS solution spend.&quot; limit=&quot;4&quot; background_color=&quot;#034460&quot; style=&quot;style-4&quot;][/testimonials][call-to-action title=\"Create your next Project with Us\" subtitle=\"Have any ideas in your mind?\" background=\"backgrounds/bg-get-quote.png\" button_label=\"GET A QUOTE\" button_url=\"/request-a-quote\"][/call-to-action][news title=\"Our Blog & Insights\" description=\"The latest information about shipping services and our promotions\" type=\"latest\"][/news]',1,NULL,'default','We have been pioneering the industry in Europe for 20 years, and delivering value &lt;br&gt; products within given timeframe, every single time.','published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(6,'Services','[our-services title=&quot;Our Services&quot; subtitle=&quot;What we offer&quot; description=&quot;We have been pioneering the industry in Europe for 20 years, and delivering value &lt;br&gt; products within given timeframe, every single time.&quot; service_ids=&quot;1,2,3,4,5,6,7&quot;][/our-services][information-2 left_background=&quot;homepage/img-info-5.png&quot; right_background=&quot;homepage/img-info-5-2.png&quot; center_icon=&quot;icons/certified.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-2&quot; quantity=&quot;2&quot; title_1=&quot;Boost your sale&quot; image_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Introducing New Features&quot; image_2=&quot;icons/feature3.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-2][site-statistics title=\"We take care about transportation for your business\" highlight_text=\"transportation\" image=\"backgrounds/bg-whychooseus.png\" button_label=\"View All Projects\" button_url=\"/contact-us\" style=\"style-2\" quantity=\"4\" title_1=\"Delivered packages.\" data_1=\"380,000\" title_2=\"Countries covered\" data_2=\"150,000\" title_3=\"Satisfied Clients\" data_3=\"68,000\" title_4=\"Tons of goods\" data_4=\"120,000\"][/site-statistics][request-quote title=&quot;World&rsquo;s Leading Companies &lt;br&gt; For Over 80 Years.&quot; description=&quot;A big opportunity for your business growth. Delivering Results for Industry Leaders. We are &lt;br&gt; proud of our work for and have worked hard.&quot; background=&quot;shapes/bg-requestquote-3.png&quot; background_color=&quot;#E0F0F6&quot; style=&quot;style-3&quot; quantity=&quot;5&quot; image_1=&quot;icons/order.png&quot; title_1=&quot;Customer places order&quot; description_1=&quot;Inspection and quality check of goods&quot; image_2=&quot;icons/payment.png&quot; title_2=&quot;Payment successful&quot; description_2=&quot;Payoneer, Paypal, or Visa master card&quot; image_3=&quot;icons/warehouse.png&quot; title_3=&quot;Warehouse receives order&quot; description_3=&quot;Check the accuracy of the goods.&quot; image_4=&quot;icons/picked.png&quot; title_4=&quot;Item picked, packed &amp; shipped&quot; description_4=&quot;Ship the goods to a local carrier&quot; image_5=&quot;icons/delivery.png&quot; title_5=&quot;Delivered &amp; Measure success&quot; description_5=&quot;Update order status on the system&quot; form_title=&quot;Request a Quote&quot; form_description=&quot;Please Fill All Inquiry To Get Your Total Price.&quot; inner_background=&quot;shapes/bg-contact.png&quot; form_background=&quot;homepage/img-contact.png&quot; link_label=&quot;Contact Us&quot; link_url=&quot;/contact-us&quot;][/request-quote][pricing title=&quot;Pricing Plan&quot; description=&quot;Pick your plan. Change whenever you want. No switching fees between packages&quot; style=&quot;style-2&quot; package_ids=&quot;1,2,3,4&quot; number_of_packages_per_line=&quot;4&quot;][/pricing]<div class=\"line-border\"></div>[faqs title=\"FAQs\" description=\"Feeling inquisitive? Have a read through some of our FAQs or contact our supporters for help.\" gallery_id=\"7\" category_ids=\"1,2\" expand_first_time=\"1\" bottom_title=\"Need more help?\" button_label=\"Contact Us\" button_url=\"/contact-us\" link_label=\"Learn More\" link_url=\"/contact-us\"][/faqs]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(7,'Track Your Parcel','[track-your-parcel title=&quot; Package tracking is easy &lt;br&gt; with order number&quot; description=&quot;Track packages from China, US Post, Canada Post, Royal Mail, Deutsche Post, &lt;br&gt; Aliexpress, UPS, Shein, FedEx, Pitney Bowes, eBay, Amazon&quot; platform_google_play_url=&quot;https://play.google.com/&quot; platform_google_play_logo=&quot;general/google-play-btn.png&quot; platform_apple_store_url=&quot;https://www.apple.com/store&quot; platform_apple_store_logo=&quot;general/appstore-btn.png&quot;][/track-your-parcel][who-we-are title=\"Any post office tracking\" subtitle=\"International tracking for\" description=\"Our tracking system is updated in real-time, so you can rest assured that you are getting the most up-to-date information on your parcel’s progress. We also offer notifications via email or SMS, so you can receive updates on your parcel’s status right to your phone.\" image=\"homepage/img-info-7.png\" youtube_video_url=\"https://www.youtube.com/watch?v=v2qeqkKgw7U\" button_label=\"We have 25 years experience in this passion\" button_helper_text=\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\" button_icon=\"icons/play.png\" style=\"style-3\" quantity=\"4\" title_1=\"Boost your sale\" icon_1=\"icons/chart.png\" description_1=\"The latest design trends meet hand-crafted templates.\" title_2=\"Boost your sale\" icon_2=\"icons/chart.png\" description_2=\"The latest design trends meet hand-crafted templates.\" title_3=\"Introducing New Features\" icon_3=\"icons/feature.png\" description_3=\"The latest design trends meet hand-crafted templates.\" title_4=\"Introducing New Features\" icon_4=\"icons/feature2.png\" description_4=\"The latest design trends meet hand-crafted templates.\"][/who-we-are][brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" background_color=\"#E0F0F6\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"/contact-us\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"/contact-us\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"/contact-us\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"/contact-us\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"/contact-us\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"/contact-us\"][/brands][why-choose-us title=\"Why choose us\" subtitle=\"Our Features\" style=\"style-2\" quantity=\"4\" title_1=\"Over 1200 couriers\" icon_1=\"icons/container.png\" description_1=\"Global reach, over 1200 couriers forming a seamless network for worldwide deliveries.\" title_2=\"Automatic courier\" icon_2=\"icons/24-hours.png\" description_2=\"Efficiency amplified through automation, reducing human intervention for accuracy.\" title_3=\"Real-time alert\" icon_3=\"icons/stopwatch.png\" description_3=\"Stay informed with instant updates, tracking your shipment’s progress as it happens.\" title_4=\"Email alerts\" icon_4=\"icons/pallet.png\" description_4=\"Essential information directly to your inbox, ensuring you’re always in the loop.\"][/why-choose-us][faqs title=\"FAQs\" description=\"Feeling inquisitive? Have a read through some of our FAQs or contact our supporters for help.\" gallery_id=\"7\" category_ids=\"1,2\" expand_first_time=\"1\" bottom_title=\"Need more help?\" button_label=\"Contact Us\" button_url=\"/contact-us\" link_label=\"Learn More\" link_url=\"/contact-us\"][/faqs][who-we-are title=&quot;We are the world&rsquo;s leading shipping service provider&quot; subtitle=&quot;Who We Are?&quot; description=&quot;Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We&rsquo;ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.&quot; image=&quot;homepage/img-info-6.png&quot; youtube_video_url=&quot;https://www.youtube.com/watch?v=v2qeqkKgw7U&quot; button_label=&quot;How it works ? &lt;br&gt; Watch video tour&quot; button_icon=&quot;icons/play.png&quot; style=&quot;style-2&quot; quantity=&quot;4&quot; title_1=&quot;Boost your sale&quot; icon_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Boost your sale&quot; icon_2=&quot;icons/chart.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot; title_3=&quot;Introducing New Features&quot; icon_3=&quot;icons/feature.png&quot; description_3=&quot;The latest design trends meet hand-crafted templates.&quot; title_4=&quot;Introducing New Features&quot; icon_4=&quot;icons/feature2.png&quot; description_4=&quot;The latest design trends meet hand-crafted templates.&quot;][/who-we-are]<div class=\"mt-90\"></div>',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(8,'Work Process','[how-it-works background_color=\"#034460\" title_direction=\"start\" youtube_video_url=\"https://www.youtube.com/watch?v=c8aOBRC3tvs\" left_background=\"homepage/how-it-work.png\" left_title=\"We have 25 years experience in this passion\" left_description=\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\" left_icon=\"icons/play.png\" style=\"style-1\" quantity=\"5\" title_1=\" Customer places order\" description_1=\"Inspection and quality check of goods\" image_1=\"icons/order.png\" title_2=\"Payment successful\" description_2=\"Payoneer, Paypal, or Visa master card\" image_2=\"icons/payment.png\" title_3=\"Warehouse receives order\" description_3=\"Check the accuracy of the goods.\" image_3=\"icons/warehouse.png\" title_4=\"Item picked, packed & shipped\" description_4=\"Ship the goods to a local carrier\" image_4=\"icons/picked.png\" title_5=\"Delivered & Measure success\" description_5=\"Update order status on the system\" image_5=\"icons/delivery.png\"][/how-it-works][our-process title=\"Our Process\" description=\"We invest time and expertise to fully understand your business before designing plans to improve your supply chain. We take responsibility for the performance of all our suppliers and for ensuring the availability of resources and equipment needed to control the flow of goods under our charge.\" icon=\"general/favicon.png\" quantity=\"4\" title_1=\"Logistics Defined\" description_1=\"Logistics is the planning framework used by the management of an organization to facilitate the distribution of personnel, materiel, service, information and capital flows.\" image_1=\"work-process/img1.png\" icon_1=\"icons/parachute.png\" link_label_1=\"View Details\" link_url_1=\"/contact-us\" title_2=\"Logistical Processes\" description_2=\"Logistics is the planning framework used by the management of an organization to facilitate the distribution of personnel, materiel, service, information and capital flows.\" image_2=\"work-process/img2.png\" icon_2=\"icons/pallet-2.png\" link_label_2=\"View Details\" link_url_2=\"/contact-us\" title_3=\"Production Management\" description_3=\"Logistics is the planning framework used by the management of an organization to facilitate the distribution of personnel, materiel, service, information and capital flows.\" image_3=\"work-process/img3.png\" icon_3=\"icons/plane-2.png\" link_label_3=\"View Details\" link_url_3=\"/contact-us\" title_4=\"Assembly Processing\" description_4=\"Logistics is the planning framework used by the management of an organization to facilitate the distribution of personnel, materiel, service, information and capital flows.\" image_4=\"work-process/img4.png\" icon_4=\"icons/cardboard.png\" link_label_4=\"View Details\" link_url_4=\"/contact-us\"][/our-process]<div class=\"line-border mt-50\"></div>[pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\" left_background=\"backgrounds/bg-plan-left.png\" right_background=\"backgrounds/bg-plan-right.png\"][/pricing][projects title=\"What We Have Done\" description=\"Check out some of the projects we’ve completed with our amazing partners.\" button_label=\"View All Projects\" button_url=\"/contact-us\" background=\"shapes/bg-what-done.png\" quantity=\"4\" name_1=\"Air Freight\" description_1=\"Our Air Freight project soared above expectations, showcasing our expertise in urgent deliveries. We provided rapid, global air transportation solutions that met critical timelines. When time is of the essence.\" image_1=\"homepage/img.png\" url_1=\"/contact-us\" name_2=\"Sea Freight\" description_2=\"Our Sea Freight project stands as a testament to our proficiency in navigating international waters. Seamlessly managing complex logistics, we delivered goods across continents with efficiency and reliability.\" image_2=\"homepage/img2.png\" url_2=\"/contact-us\" name_3=\"Trucking\" description_3=\"In our Trucking project, we transformed roadways into avenues of precision and punctuality. With a fleet of modern vehicles and a team of skilled drivers, we ensured swift and secure deliveries nationwide. Your cargo’s journey.\" image_3=\"homepage/img3.png\" url_3=\"/contact-us\" name_4=\"Warehouse\" description_4=\"In our Warehouse project, we excelled in storage and distribution. With state-of-the-art facilities and meticulous inventory management, we safeguarded your assets while streamlining the supply chain. Your goods found.\" image_4=\"homepage/img4.png\" url_4=\"/contact-us\"][/projects][why-choose-us title=\"Why choose us\" subtitle=\"Our Features\" description=\"Sustainability is an increasingly important factor for many customers when choosing a shipping company. Your shipping company can stand out by demonstrating a commitment to sustainable practices, such as using energy-efficient vehicles, reducing waste, and offsetting carbon emissions.\" ticked_line=\"Reliable and Timely Deliveries, Advanced Tracking Systems, Cost-Effective Shipping Options, Commitment to Sustainability, Exceptional Customer Service, International Shipping Expertise, Flexibility and Customization, Insurance and Liability Coverage\" button_primary_label=\"Contact Us\" button_primary_url=\"/contact-us\" button_secondary_label=\"Learn More\" button_secondary_url=\"/contact-us\" style=\"style-1\" quantity=\"4\" title_1=\"Shipping Options\" icon_1=\"icons/container.png\" description_1=\"Tailored routes for versatile shipments, offering expedited and budget-friendly choices.\" title_2=\"Timely Deliveries\" icon_2=\"icons/stopwatch.png\" description_2=\"Precision planning and monitoring ensure on-time deliveries, a competitive edge for you.\" title_3=\"Customer Service\" icon_3=\"icons/24-hours.png\" description_3=\"Proactive solutions from our team, transforming challenges into satisfaction and support.\" title_4=\"Tracking Systems\" icon_4=\"icons/pallet.png\" description_4=\"Visibility at every stage, bridging distance through real-time insights for peace of mind.\"][/why-choose-us]',1,NULL,'default','You choose the cities where you’d like to deliver. All deliveries are within a specific service area and delivery services vary by location. Whatever the mode or requirement, we will find and book the ideal expedited shipping solution to ensure a timely delivery.','published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(9,'Request a quote','[request-quote title=&quot;Request a quote for &lt;br&gt; shipping services&quot; description=&quot;A big opportunity for your business growth. Delivering Results for Industry Leaders. We are &lt;br&gt; proud of our work for and have worked hard.&quot; background=&quot;backgrounds/requestaquote-banner.png&quot; style=&quot;style-4&quot; primary_button_label=&quot;Calculate Package&quot; primary_button_url=&quot;/contact-us&quot; secondary_button_label=&quot;How it work ?&quot; secondary_button_icon=&quot;icons/play.png&quot; secondary_button_url=&quot;https://www.youtube.com/watch?v=v2qeqkKgw7U&quot; quantity=&quot;4&quot; image_1=&quot;icons/handover.png&quot; number_1=&quot;+ 380,000&quot; title_1=&quot;Parcels Shipped Safely&quot; image_2=&quot;icons/cities.png&quot; number_2=&quot;+ 120,000&quot; title_2=&quot;Cities Served Worldwide&quot; image_3=&quot;icons/client.png&quot; number_3=&quot;+2280&quot; title_3=&quot;Satisfied Clients&quot; image_4=&quot;icons/company.png&quot; number_4=&quot;+ 1200&quot; title_4=&quot;Company We Help&quot; form_title=&quot;Calculate Shipping&quot; form_description=&quot;Please Fill All Inquiry To Get Your Total Price.&quot; inner_background=&quot;shapes/bg-contact.png&quot; form_background=&quot;homepage/img-contact.png&quot; link_label=&quot;Contact Us&quot; link_url=&quot;/contact-us&quot;][/request-quote][branch-offices title=&quot;We have branches in many &lt;br&gt; regions of the world&quot; description=&quot;We have experience in handling the formalities and documentation required for your imports and exports. We work with all international station to guarantee that your load will safely reach without any delays.&quot; button_label=&quot;Get a quote&quot; button_url=&quot;/contact-us&quot; quantity=&quot;4&quot; image_1=&quot;contact/branch1.png&quot; icon_1=&quot;icons/delivery.png&quot; title_1=&quot;TransP Shipping Co. USA&quot; address_1=&quot;123 Main Street, Suite 500, New York, NY 10001, USA&quot; phone_number_1=&quot;+1-555-555-5555&quot; email_1=&quot;contact@transp.eu.com&quot; image_2=&quot;contact/branch2.png&quot; icon_2=&quot;icons/plane.png&quot; title_2=&quot;Shipping Co. Europe&quot; address_2=&quot;25 Avenue des Champs-&Eacute;lys&eacute;es, Paris, France&quot; phone_number_2=&quot;+33 1 55 73 70 00&quot; email_2=&quot;contact.eu@transp.eu.com&quot; image_3=&quot;contact/branch3.png&quot; icon_3=&quot;icons/delivery.png&quot; title_3=&quot;Shipping Co. Asia Pacific&quot; address_3=&quot;1-2-1 Otemachi, Chiyoda-ku, Tokyo, Japan&quot; phone_number_3=&quot;+81 3 5251 5300&quot; email_3=&quot;contact.jp@transp.eu.com&quot; image_4=&quot;contact/branch4.png&quot; icon_4=&quot;icons/plane.png&quot; title_4=&quot;Shipping Co. Middle East&quot; address_4=&quot;Dubai Logistics City, Building B, Office 203, Dubai, UAE&quot; phone_number_4=&quot;+971 4 887 8000&quot; email_4=&quot;contact@transp.eu.com&quot;][/branch-offices][how-it-works title=\"How It Works\" description=\"You choose the cities where you’d like to deliver. All deliveries are within a specific service area and delivery services vary by location. Whatever the mode or requirement, we will find and book the ideal expedited shipping solution to ensure a timely delivery.\" background_color=\"#034460\" title_direction=\"start\" youtube_video_url=\"https://www.youtube.com/watch?v=ldusxyoq0Y8\" icon=\"general/favicon.png\" inner_background=\"general/world-map.png\" left_background=\"homepage/how-it-work.png\" left_title=\"We have 25 years experience in this passion\" left_description=\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour\" left_icon=\"icons/play.png\" style=\"style-1\" quantity=\"5\" title_1=\" Customer places order\" description_1=\"Inspection and quality check of goods\" image_1=\"icons/order.png\" title_2=\"Payment successful\" description_2=\"Payoneer, Paypal, or Visa master card\" image_2=\"icons/payment.png\" title_3=\"Warehouse receives order\" description_3=\"Check the accuracy of the goods.\" image_3=\"icons/warehouse.png\" title_4=\"Item picked, packed & shipped\" description_4=\"Ship the goods to a local carrier\" image_4=\"icons/picked.png\" title_5=\"Delivered & Measure success\" description_5=\"Update order status on the system\" image_5=\"icons/delivery.png\"][/how-it-works][pricing title=\"Pricing Plan\" description=\"Pick your plan. Change whenever you want. No switching fees between packages\" style=\"style-2\" package_ids=\"1,2,3,4\" number_of_packages_per_line=\"4\" left_background=\"backgrounds/bg-plan-left.png\" right_background=\"backgrounds/bg-plan-right.png\"][/pricing]<div class=\"line-border\"></div>[projects title=\"What We Have Done\" description=\"Check out some of the projects we’ve completed with our amazing partners\" button_label=\"View All Projects\" button_url=\"/contact-us\" style=\"style-1\" quantity=\"4\" name_1=\"Air Freight\" description_1=\"Our Air Freight project soared above expectations, showcasing our expertise in urgent deliveries. We provided rapid, global air transportation solutions that met critical timelines. When time is of the essence.\" image_1=\"homepage/img.png\" url_1=\"/contact-us\" name_2=\"Sea Freight\" description_2=\"Our Sea Freight project stands as a testament to our proficiency in navigating international waters. Seamlessly managing complex logistics, we delivered goods across continents with efficiency and reliability.\" image_2=\"homepage/img2.png\" url_2=\"/contact-us\" name_3=\"Trucking\" description_3=\"In our Trucking project, we transformed roadways into avenues of precision and punctuality. With a fleet of modern vehicles and a team of skilled drivers, we ensured swift and secure deliveries nationwide. Your cargo’s journey.\" image_3=\"homepage/img3.png\" url_3=\"/contact-us\" name_4=\"Warehouse\" description_4=\"In our Warehouse project, we excelled in storage and distribution. With state-of-the-art facilities and meticulous inventory management, we safeguarded your assets while streamlining the supply chain. Your goods found.\" image_4=\"homepage/img4.png\" url_4=\"/contact-us\"][/projects]<div class=\"mt-90\"></div>',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(10,'Our team','[hero-banner title=\"We’re excited to introduce you to the dedicated individuals who make up our logistics services company\" subtitle=\"Meet Our Team\" description=\"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective ‘‘outside the box’’ thinking.\" background_color=\"#E0F0F6\" banner_image=\"homepage/img-testimonial-4.png\" shape_icon=\"shapes/bg-testimonial-4.png\" button_primary_url=\"/contact-us\" button_primary_label=\"Contact Us\" button_secondary_url=\"/about-us\" button_secondary_label=\"Learn More\" box_info_title=\"Satisfieds\" box_info_description=\"We always strive to serve our customers in the best way.\" box_info_button_label=\"View Details\" box_info_button_url=\"/contact-us\" style=\"style-6\" quantity=\"6\"][/hero-banner][teams title=\"Our Leadership Team\" description=\"Welcome to our transportation services agency. We are the best at our transportation service ever.\" button_label=\"Get a quote\" button_url=\"/contact-us\" team_ids=\"1,2,3,4\"][/teams][ads-banner title=&quot;Fast shipping with the &lt;br&gt; most modern technology&quot; url=&quot;/contact-us&quot; left_background=&quot;shapes/bg-banner.png&quot; right_background=&quot;backgrounds/banner.png&quot;][/ads-banner][teams title=\"Our Operations Team\" description=\"Welcome to our transportation services agency. We are the best at our transportation service ever.\" button_label=\"Get a quote\" button_url=\"/contact-us\" team_ids=\"1,2,3,4\"][/teams][who-we-are title=\"We are the world’s leading shipping service provider\" subtitle=\"Who We Are?\" description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency. We’ve also made significant strides to tightly integrate technology with our processes, giving our clients greater visibility into every engagement.\" image=\"homepage/img-info-6.png\" youtube_video_url=\"https://www.youtube.com/watch?v=v2qeqkKgw7U\" button_label=\"How it works ? Watch video tour\" button_icon=\"icons/play.png\" style=\"style-2\" quantity=\"4\" title_1=\"Boost your sale\" icon_1=\"icons/chart.png\" description_1=\"The latest design trends meet hand-crafted templates.\" title_2=\"Boost your sale\" icon_2=\"icons/chart.png\" description_2=\"The latest design trends meet hand-crafted templates.\" title_3=\"Introducing New Features\" icon_3=\"icons/feature.png\" description_3=\"The latest design trends meet hand-crafted templates.\" title_4=\"Introducing New Features\" icon_4=\"icons/feature2.png\" description_4=\"The latest design trends meet hand-crafted templates.\"][/who-we-are]<div class=\"mt-90\"></div>',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(11,'FAQ’s','[faqs title=\"Popular Topic\" description=\"Feeling inquisitive? Have a read through some of our FAQs or contact our supporters for help.\" gallery_id=\"7\" category_ids=\"1,2\" expand_first_time=\"1\" bottom_title=\"Need more help?\" button_label=\"Contact Us\" button_url=\"/contact-us\" link_label=\"Learn More\" link_url=\"/contact-us\" style=\"style-2\"][/faqs][faqs title=\"FAQ’s\" description=\"Feeling inquisitive? Have a read through some of our FAQs or contact our supporters for help.\" gallery_id=\"7\" category_ids=\"1,2\" expand_first_time=\"1\" bottom_title=\"Need more help?\" button_label=\"Contact Us\" button_url=\"/contact-us\" link_label=\"Learn More\" link_url=\"/contact-us\" style=\"style-1\"][/faqs][contact-form title=\"Still have question?\" description=\"Can’t find the answer you are looking for? Please chat to our friendly team.\" title_button=\"Submit Now\" subtitle=\"Headquarters\" open_time=\"Hours: 8:00 - 17:00, Mon - Sat\"][/contact-form][information-2 left_background=&quot;homepage/img-info-5.png&quot; right_background=&quot;homepage/img-info-5-2.png&quot; center_icon=&quot;icons/certified.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-2&quot; quantity=&quot;2&quot; title_1=&quot;Boost your sale&quot; image_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Introducing New Features&quot; image_2=&quot;icons/feature.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-2]',1,NULL,'default','Everything you need to know about the product and billing. Can not find the answer you are looking for? Please Contact our support team.','published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(12,'Newsletter','[simple-slider key=\"home-slider\"][/simple-slider][services title=\"What We Offer\" style=\"style-1\" quantity=\"3\" name_1=\"Sea Forwarding\" image_1=\"icons/cargo-ship.png\" description_1=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_1=\"/contact-us\" name_2=\"Air Freight Forwarding\" image_2=\"icons/plane.png\" description_2=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_2=\"/contact-us\" name_3=\"Land Transportation\" image_3=\"icons/delivery.png\" description_3=\"We are professional in ocean freight with more than 12 years of experience and have shipped more than 100k shipments.\" link_3=\"/contact-us\"][/services][information-1 left_background=\"homepage/img1.png\" shape_image_horizontal=\"icons/icon1.png\" shape_image_vertical=\"shapes/subtract.png\" right_title=\"Fast shipping with the most modern technology\" right_description=\"Over the years, we have worked together to expand our network of partners to deliver reliability and consistency.\" feature_1=\"Task tracking\" feature_2=\"Create task dependencies\" feature_3=\"Task visualization\" feature_4=\"Hare files, discuss\" feature_5=\"Meet deadlines faster\" feature_6=\" Track time spent\" button_label_1=\"Apple Store\" button_url_1=\"https://apps.apple.com/us/app/\" button_image_1=\"general/appstore-btn.png\" button_label_2=\"Google Play\" button_url_2=\"https://play.google.com/store/apps\" button_image_2=\"general/google-play-btn.png\" style=\"style-1\" quantity=\"6\"][/information-1][information-2 left_background=&quot;homepage/img-info-5.png&quot; right_background=&quot;homepage/img-info-5-2.png&quot; center_icon=&quot;icons/certified.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-2&quot; quantity=&quot;1&quot;][/information-2][services title=\"Why Choose Us\" style=\"style-2\" quantity=\"4\" name_1=\"Over 1200 couriers\" image_1=\"icons/container.png\" description_1=\"Global reach via 1200+ couriers, forming seamless worldwide delivery network for enhanced service.\" name_2=\"Automatic courier\" image_2=\"icons/24-hours.png\" description_2=\"Automated efficiency curbs intervention, upholding precision, speed & accuracy in worldwide deliveries.\" name_3=\"Real-time alert\" image_3=\"icons/stopwatch.png\" description_3=\"Stay updated with instant progress tracking, ensuring you‘re informed of developments as they unfold.\" name_4=\"Email alerts\" image_4=\"icons/pallet.png\" description_4=\"Essential updates sent directly, keeping you reliably informed and seamlessly connected at all times.\"][/services][information-2 left_background=&quot;shapes/bg-touch.png&quot; right_background=&quot;homepage/port.png&quot; title=&quot;Proud to Deliver &lt;br&gt; Excellence Every Time&quot; badge_text=&quot;Get in touch&quot; description=&quot;Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit laborum &mdash; semper quis lectus nulla. Interactively transform magnetic growth strategies whereas prospective &lsquo;&lsquo;outside the box&rsquo;&rsquo; thinking.&quot; button_label=&quot;Contact Us&quot; button_url=&quot;/contact-us&quot; link_label=&quot;Learn More&quot; link_url=&quot;/contact-us&quot; style=&quot;style-1&quot; quantity=&quot;2&quot; title_1=&quot;Boost your sale&quot; image_1=&quot;icons/chart.png&quot; description_1=&quot;The latest design trends meet hand-crafted templates.&quot; title_2=&quot;Introducing New Features&quot; image_2=&quot;icons/feature3.png&quot; description_2=&quot;The latest design trends meet hand-crafted templates.&quot;][/information-2][teams title=\"Meet Our Team\" team_ids=\"1,2,3,4\"][/teams][testimonials title=\"Testimonials\" limit=\"4\" shape_image=\"icons/quotation.png\" style=\"style-3\"][/testimonials][request-quote style=\"style-2\" quantity=\"1\" form_title=\"Request a Quote\" form_description=\"Please Fill All Inquiry To Get Your Total Price.\" link_label=\"Contact Us\" link_url=\"/contact-us\"][/request-quote][news title=\"Our Blog & Insights\" type=\"popular\" limit=\"2\"][/news]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(13,'Blog','[hero-banner title=\"Latest News & Blog\" subtitle=\"Don’t miss the trending\" description=\"Share discoveries on the world of Logistic, find curiosities about cargo services, produce insights on how intelligent agents work.\" banner_image=\"homepage/banner-5.png\" shape_icon=\"icons/quote.png\" style=\"style-5\" quantity=\"6\"][/hero-banner][blog-posts category_ids=\"2,3,4,5,7\"][/blog-posts][ads-banner title=&quot;Fast shipping with the &lt;br&gt; most modern technology&quot; url=&quot;/contact-us&quot; left_background=&quot;shapes/bg-banner.png&quot; right_background=&quot;homepage/banner-ads.png&quot;][/ads-banner][posts per_page=\"5\"][/posts]<div class=\"mt-70\"></div>[brands title=\"We are trusted by major global brands\" highlight_text=\"trusted\" background_color=\"#E0F0F6\" quantity=\"6\" name_1=\"Alea\" image_1=\"brands/alea.png\" link_1=\"/contact-us\" name_2=\"Creati\" image_2=\"brands/creati.png\" link_2=\"/contact-us\" name_3=\"Land Ship\" image_3=\"brands/land.png\" link_3=\"/contact-us\" name_4=\"Logis Delivery\" image_4=\"brands/logis.png\" link_4=\"/contact-us\" name_5=\"Santos Logistic\" image_5=\"brands/saltos.png\" link_5=\"/contact-us\" name_6=\"Truck\" image_6=\"brands/truck.png\" link_6=\"/contact-us\"][/brands]<div class=\"mt-100\"></div>',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(14,'Contact Us','[map style=\"style-2\"][/map][contact-form title=\"Still have question?\" description=\"Can’t find the answer you are looking for? Please chat to our friendly team.\" title_button=\"Submit Now\" subtitle=\"Headquarters\" address=\"4517 Washington Ave. Manchester, Kentucky 39495\" phone=\"+01-246-357 (Any time 24/7)\" email=\"contact@transp.eu.com\" open_time=\"Hours: 8:00 - 17:00, Mon - Sat\"][/contact-form][branch-offices title=&quot;We have branches in many &lt;br&gt; regions of the world&quot; description=&quot;We have experience in handling the formalities and documentation required for your imports and exports. We work with all international station to guarantee that your load will safely reach without any delays.&quot; button_label=&quot;Get a quote&quot; button_url=&quot;/contact-us&quot; quantity=&quot;4&quot; image_1=&quot;contact/branch1.png&quot; icon_1=&quot;icons/delivery.png&quot; title_1=&quot;TransP Shipping Co. USA&quot; address_1=&quot;123 Main Street, Suite 500, New York, NY 10001, USA&quot; phone_number_1=&quot;+1-555-555-5555&quot; email_1=&quot;contact@transp.eu.com&quot; image_2=&quot;contact/branch2.png&quot; icon_2=&quot;icons/plane.png&quot; title_2=&quot;Shipping Co. Europe&quot; address_2=&quot;25 Avenue des Champs-&Eacute;lys&eacute;es, Paris, France&quot; phone_number_2=&quot;+33 1 55 73 70 00&quot; email_2=&quot;contact.eu@transp.eu.com&quot; image_3=&quot;contact/branch3.png&quot; icon_3=&quot;icons/delivery.png&quot; title_3=&quot;Shipping Co. Asia Pacific&quot; address_3=&quot;1-2-1 Otemachi, Chiyoda-ku, Tokyo, Japan&quot; phone_number_3=&quot;+81 3 5251 5300&quot; email_3=&quot;contact.jp@transp.eu.com&quot; image_4=&quot;contact/branch4.png&quot; icon_4=&quot;icons/plane.png&quot; title_4=&quot;Shipping Co. Middle East&quot; address_4=&quot;Dubai Logistics City, Building B, Office 203, Dubai, UAE&quot; phone_number_4=&quot;+971 4 887 8000&quot; email_4=&quot;contact@transp.eu.com&quot;][/branch-offices][teams title=\"Meet Our Team\" description=\"Welcome to our transportation services agency. We are the best at our trans-deportation service ever.\" team_ids=\"1,2,3,4\"][/teams]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(15,'Coming Soon','[coming-soon title=&quot;Get Notified &lt;br&gt; When We Launch&quot; time=&quot;2025-07-24&quot; phone=&quot;+01-246-357 (Any time 24/7)&quot; email=&quot;contact@transp.eu.com&quot; image=&quot;general/coming-soon.png&quot;][/coming-soon]',1,NULL,'default',NULL,'published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(16,'Privacy policy','<section class=\"section mt-50\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">EU Cookie Consent</h3>\n            <p class=\"font-md color-grey-900\">To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data. .</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Essential Data</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-12\">\n                    <p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p>\n                    <p>Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p>\n                    <p>XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>\n                </div>\n            </div>\n        </div>\n    </div>\n</section>\n',1,NULL,NULL,'We are committed to maintaining the accuracy, confidentiality, and security of your personally identifiable information Personal Information. As part of this commitment, our privacy policy governs our actions as they relate to the collection, use and disclosure of Personal Information.','published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(17,'Cookies','<section class=\"section mt-50\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">EU Cookie Consent</h3>\n            <p class=\"font-md color-grey-900\">To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data. .</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Essential Data</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-12\">\n                    <p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p>\n                    <p>Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p>\n                    <p>XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>\n                </div>\n            </div>\n        </div>\n    </div>\n</section>\n',1,NULL,NULL,'Cookies are small text files that websites place and store on the computers and mobile devices of their users. These files are generally used to improve the user experience, but may contain personal information about the user or their behavior on the website.','published','2024-09-24 04:51:49','2024-09-24 04:51:49'),(18,'Terms of service','<section class=\"section mt-50\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">EU Cookie Consent</h3>\n            <p class=\"font-md color-grey-900\">To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data. .</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Essential Data</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-12\">\n                    <p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p>\n                    <p>Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p>\n                    <p>XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>\n                </div>\n            </div>\n        </div>\n    </div>\n</section>\n',1,NULL,NULL,'A well-written terms of service agreement can set the rules and guidelines for your users, prohibit or restrict certain behaviors and activities, limit your liabilities, and establish your property rights.','published','2024-09-24 04:51:49','2024-09-24 04:51:49');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(7,1),(1,2),(7,2),(2,3),(6,3),(3,4),(5,4),(1,5),(5,5),(1,6),(5,6),(3,7),(7,7),(1,8),(7,8),(4,9),(5,9),(4,10),(7,10),(1,11),(5,11),(4,12),(6,12),(3,13),(7,13);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11),(1,12),(2,12),(3,12),(4,12),(5,12),(1,13),(2,13),(3,13),(4,13),(5,13);
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'China and Asia how to find reliable logistics company','Value-added services are a significant aspect of modern logistic offerings. These services include product labeling, kitting, assembly, and customization, adding value to products before they reach the end consumers. By offering value-added services,...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/news1.png',539,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(2,'How to find reliable logistics company Asia','Reverse logistics services deal with the efficient handling of product returns and managing the flow of goods back into the supply chain. Logistic providers develop streamlined processes for product inspection, refurbishment, recycling, or disposal,...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/news3.png',771,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(3,'Smooth Sailing: Tips for Shipping Internationally','Global logistics services play a crucial role in supporting international trade and cross-border operations. Logistic providers navigate complex customs regulations, coordinate with international partners, and ensure smooth transportation and deliver...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/news4.png',1429,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(4,'Optimizing Supply Chain: A Guide to Logistics','Transportation services are a cornerstone of logistics, involving the movement of goods by road, air, sea, or rail. Freight forwarders and carriers ensure timely and reliable deliveries, coordinating intricate routes and handling various shipment typ...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/news1.png',1063,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(5,'The Future of Logistics: Embracing Technology','Order fulfillment services encompass the entire process from receiving customer orders to delivering the goods. Logistic providers employ order processing systems, pick-and-pack operations, and shipping expertise to ensure accurate and timely order e...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/news2.png',2089,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(6,'Green Logistics: Solutions for a Greener Future','Warehousing services are integral to the storage and management of inventory. Logistic providers operate warehouses strategically positioned to reduce transit times and optimize supply chain flow. They employ modern warehouse management systems (WMS)...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/news5.png',1477,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(7,'Last-Mile Delivery Revolution in Urban Logistics','Logistic services are essential components of the supply chain that facilitate the seamless movement and management of goods and information from point of origin to the final destination. These services encompass a wide range of activities, including...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news1.png',837,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(8,'Navigating Global Trade Challenges for Logistics','Transportation services are a cornerstone of logistics, involving the movement of goods by road, air, sea, or rail. Freight forwarders and carriers ensure timely and reliable deliveries, coordinating intricate routes and handling various shipment typ...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news4.png',2269,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(9,'Warehouse Management 101: Maximizing Productivity ','Order fulfillment services encompass the entire process from receiving customer orders to delivering the goods. Logistic providers employ order processing systems, pick-and-pack operations, and shipping expertise to ensure accurate and timely order e...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news6.png',1370,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(10,'Logistics: Customer Expectations in World','Inventory management services focus on ensuring that the right products are available in the right quantities at the right time. Logistic providers employ advanced forecasting techniques and data analytics to anticipate demand patterns and avoid stoc...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news4.png',1407,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(11,'The Role of AI in Transforming Logistics','Global logistics services play a crucial role in supporting international trade and cross-border operations. Logistic providers navigate complex customs regulations, coordinate with international partners, and ensure smooth transportation and deliver...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news4.png',1525,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(12,'Resilient Supply Chains: Adapting to Modern Logistics','Warehousing services are integral to the storage and management of inventory. Logistic providers operate warehouses strategically positioned to reduce transit times and optimize supply chain flow. They employ modern warehouse management systems (WMS)...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news5.png',1774,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50'),(13,'Logistics Trends: Insights and Predictions for Future','Transportation services are a cornerstone of logistics, involving the movement of goods by road, air, sea, or rail. Freight forwarders and carriers ensure timely and reliable deliveries, coordinating intricate routes and handling various shipment typ...','<section class=\"section\">\n    <div class=\"container\">\n        <div class=\"content-detail\">\n            <h3 class=\"color-brand-2\">Modes of Sea Freight Transportation</h3>\n            <p class=\"font-md color-grey-900\">There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p> <img src=\"http://transp.test/storage/news/news1.png\" alt=\"transp\"></p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <p>There are two primary modes of sea freight transportation: Full Container Load (FCL) and Less than Container Load (LCL). FCL is used when the shipment is large enough to fill an entire container. On the other hand, LCL is used when the shipment does not require a full container. In this case, the goods are combined with other shipments to fill a container. Both modes have their advantages and disadvantages.</p>\n            <h3>Benefits of Sea Freight Forwarding</h3>\n            <div class=\"row align-items-center\">\n                <div class=\"col-lg-7\">\n                    <p>Sea freight forwarding offers several benefits to businesses that use it to transport their goods. Some of the benefits include: </p>\n                    <p>Cost-Effectiveness: Sea freight forwarding is one of the most cost-effective modes of transportation, especially for businesses that require the transportation of large quantities of goods. This is because cargo ships can transport large volumes of goods at a lower cost compared to other modes of transportation.</p>\n                    <p>Sea freight forwarding is a reliable mode of transportation since it is not affected by traffic or weather conditions. Additionally, cargo ships are designed to withstand harsh weather conditions, which reduces the risk of damage or loss of goods.</p>\n                </div>\n                <div class=\"col-lg-5\"><img src=\"http://transp.test/storage/news/news2.png\" alt=\"transp\"></div>\n            </div>\n        </div>\n    </div>\n</section>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/news4.png',1261,NULL,'2024-09-24 04:51:50','2024-09-24 04:51:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
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
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
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
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
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
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugins.logistics\":true,\"logistics.service-categories.index\":true,\"logistics.service-categories.create\":true,\"logistics.service-categories.edit\":true,\"logistics.service-categories.destroy\":true,\"logistics.services.index\":true,\"logistics.services.create\":true,\"logistics.services.edit\":true,\"logistics.services.destroy\":true,\"logistics.packages.index\":true,\"logistics.packages.create\":true,\"logistics.packages.edit\":true,\"logistics.packages.destroy\":true,\"logistics.custom-fields.index\":true,\"logistics.custom-fields.create\":true,\"logistics.custom-fields.edit\":true,\"logistics.custom-fields.destroy\":true,\"logistics.quotation-requests.index\":true,\"logistics.quotation-requests.show\":true,\"logistics.quotation-requests.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-09-24 04:51:41','2024-09-24 04:51:41');
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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','015e1175ba4d52c48f3dc73ad45bb46d',NULL,'2024-09-24 04:51:55'),(2,'api_enabled','0',NULL,'2024-09-24 04:51:55'),(3,'analytics_dashboard_widgets','0','2024-09-24 04:51:40','2024-09-24 04:51:40'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"faq\",\"gallery\",\"logistics\",\"newsletter\",\"simple-slider\",\"team\",\"testimonial\",\"translation\"]',NULL,'2024-09-24 04:51:55'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-09-24 04:51:40','2024-09-24 04:51:40'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-09-24 04:51:41','2024-09-24 04:51:41'),(7,'theme','transp',NULL,'2024-09-24 04:51:55'),(8,'show_admin_bar','1',NULL,'2024-09-24 04:51:55'),(9,'language_hide_default','1',NULL,'2024-09-24 04:51:55'),(10,'language_switcher_display','dropdown',NULL,'2024-09-24 04:51:55'),(11,'language_display','all',NULL,'2024-09-24 04:51:55'),(12,'language_hide_languages','[]',NULL,'2024-09-24 04:51:55'),(13,'theme-transp-site_title','TransP - Transport Courier Logistics',NULL,'2024-09-24 04:51:55'),(14,'theme-transp-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,'2024-09-24 04:51:55'),(15,'theme-transp-copyright','© 2024 Botble Technologies. Designed by Jthemes.',NULL,'2024-09-24 04:51:55'),(16,'theme-transp-favicon','general/favicon.png',NULL,'2024-09-24 04:51:55'),(17,'theme-transp-website','https://botble.com',NULL,'2024-09-24 04:51:55'),(18,'theme-transp-contact_email','support@botble.com',NULL,'2024-09-24 04:51:55'),(19,'theme-transp-site_description','We fuse our global network with our depth of expertise in air freight, ocean freight, railway transportation, trucking, and multi-mode transportation, also we are providing sourcing, warehousing, E-commercial fulfillment, and value-added service to our customers including kitting, assembly, customized package and business inserts, etc.',NULL,'2024-09-24 04:51:55'),(20,'theme-transp-phone','+01-246-357',NULL,'2024-09-24 04:51:55'),(21,'theme-transp-subtext_phone','Any time 24/7',NULL,'2024-09-24 04:51:55'),(22,'theme-transp-address','4517 Washington Ave. Manchester, Kentucky 39495',NULL,'2024-09-24 04:51:55'),(23,'theme-transp-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2024-09-24 04:51:55'),(24,'theme-transp-cookie_consent_learn_more_url','/cookie-policy',NULL,'2024-09-24 04:51:55'),(25,'theme-transp-cookie_consent_learn_more_text','Cookie Policy',NULL,'2024-09-24 04:51:55'),(26,'theme-transp-homepage_id','1',NULL,'2024-09-24 04:51:55'),(27,'theme-transp-logo','general/logo.png',NULL,'2024-09-24 04:51:55'),(28,'theme-transp-logo_light','general/logo-footer.png',NULL,'2024-09-24 04:51:55'),(29,'theme-transp-primary_color','#fec201',NULL,'2024-09-24 04:51:55'),(30,'theme-transp-primary_color_hover','#066a4c',NULL,'2024-09-24 04:51:55'),(31,'theme-transp-secondary_color','#034460',NULL,'2024-09-24 04:51:55'),(32,'theme-transp-primary_font','Epilogue',NULL,'2024-09-24 04:51:55'),(33,'theme-transp-404_page_image','general/404.png',NULL,'2024-09-24 04:51:55'),(34,'theme-transp-breadcrumb_background','general/world-map.png',NULL,'2024-09-24 04:51:55'),(35,'theme-transp-header_button_label','Get a quote',NULL,'2024-09-24 04:51:55'),(36,'theme-transp-header_button_url','/request-a-quote',NULL,'2024-09-24 04:51:55'),(37,'theme-transp-newsletter_popup_enable','1',NULL,'2024-09-24 04:51:55'),(38,'theme-transp-newsletter_popup_image','general/newsletter-popup.jpg',NULL,'2024-09-24 04:51:55'),(39,'theme-transp-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-09-24 04:51:55'),(40,'theme-transp-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-09-24 04:51:55'),(41,'theme-transp-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-09-24 04:51:55'),(42,'theme-transp-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"icons\\/fb.png\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"icons\\/tw.png\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"icons\\/youtube.png\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"icons\\/inst.png\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\"}],[{\"key\":\"name\",\"value\":\"Skype\"},{\"key\":\"icon\",\"value\":\"icons\\/skype.png\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.skype.com\"}]]',NULL,'2024-09-24 04:51:55'),(43,'simple_slider_using_assets','0',NULL,'2024-09-24 04:51:55'),(44,'admin_favicon','general/favicon.png',NULL,'2024-09-24 04:51:55'),(45,'admin_logo','general/logo-footer.png',NULL,'2024-09-24 04:51:55'),(46,'permalink-botble-blog-models-post','blog',NULL,'2024-09-24 04:51:55'),(47,'permalink-botble-blog-models-category','blog',NULL,'2024-09-24 04:51:55'),(48,'announcement_max_width','1386',NULL,NULL),(49,'announcement_text_color','#00194C',NULL,NULL),(50,'announcement_background_color','#ffe799',NULL,NULL),(51,'announcement_text_alignment','start',NULL,NULL),(52,'announcement_dismissible','1',NULL,NULL);
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
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Digital &amp; Trusted Transport<br>Logistic Company','banners/slider-1.png','/contact-us','Our experienced team of problem solvers and a commitment to always align with our client’s business goals and objectives is what drives mutual success.',1,'2024-09-24 04:51:52','2024-09-24 04:51:52'),(2,1,'Digital &amp; Trusted Transport<br>Logistic Company','banners/slider-2.png','/contact-us','Our experienced team of problem solvers and a commitment to always align with our client’s business goals and objectives is what drives mutual success.',2,'2024-09-24 04:51:52','2024-09-24 04:51:52');
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
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-09-24 04:51:52','2024-09-24 04:51:52');
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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage-1',1,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(2,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(3,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(4,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(5,'about-us',5,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(6,'services',6,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(7,'track-your-parcel',7,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(8,'work-process',8,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(9,'request-a-quote',9,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(10,'our-team',10,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(11,'faqs',11,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(12,'newsletter',12,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(13,'blog',13,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(14,'contact-us',14,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(15,'coming-soon',15,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(16,'privacy-policy',16,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(17,'cookies',17,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(18,'terms-of-service',18,'Botble\\Page\\Models\\Page','','2024-09-24 04:51:49','2024-09-24 04:51:49'),(19,'shipping',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(20,'transport',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(21,'express',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(22,'customs',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(23,'supplychain',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(24,'logistics',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(25,'faqs',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:51:49','2024-09-24 04:51:49'),(26,'service',1,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(27,'shipping',2,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(28,'courier',3,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(29,'transportation',4,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(30,'supply-chain',5,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(31,'delivery',6,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(32,'freight-forwarding',7,'Botble\\Blog\\Models\\Category','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(33,'efficiency',1,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(34,'delivery',2,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(35,'supplychain',3,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(36,'logistics',4,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(37,'shipping',5,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(38,'sustainability',6,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(39,'international',7,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:51:50','2024-09-24 04:51:50'),(40,'china-and-asia-how-to-find-reliable-logistics-company',1,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(41,'how-to-find-reliable-logistics-company-asia',2,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(42,'smooth-sailing-tips-for-shipping-internationally',3,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(43,'optimizing-supply-chain-a-guide-to-logistics',4,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(44,'the-future-of-logistics-embracing-technology',5,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(45,'green-logistics-solutions-for-a-greener-future',6,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(46,'last-mile-delivery-revolution-in-urban-logistics',7,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(47,'navigating-global-trade-challenges-for-logistics',8,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(48,'warehouse-management-101-maximizing-productivity',9,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(49,'logistics-customer-expectations-in-world',10,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(50,'the-role-of-ai-in-transforming-logistics',11,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(51,'resilient-supply-chains-adapting-to-modern-logistics',12,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(52,'logistics-trends-insights-and-predictions-for-future',13,'Botble\\Blog\\Models\\Post','blog','2024-09-24 04:51:50','2024-09-24 04:51:55'),(53,'sea-forwarding',1,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(54,'air-freight-forwarding',2,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(55,'land-transportation',3,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(56,'railway-logistics',4,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(57,'warehouse',5,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(58,'cross-border',6,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(59,'customs-brokerages',7,'Botble\\Logistics\\Models\\ServiceCategory','service-categories','2024-09-24 04:51:55','2024-09-24 04:51:55'),(60,'sea-freight-forwarding',1,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(61,'air-freight-forwarding',2,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(62,'land-transportation',3,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(63,'railway-logistics',4,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(64,'warehouse-distribution',5,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(65,'cross-border',6,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(66,'customs-brokerages',7,'Botble\\Logistics\\Models\\Service','services','2024-09-24 04:51:55','2024-09-24 04:51:55'),(67,'premium',1,'Botble\\Logistics\\Models\\Package','packages','2024-09-24 04:51:55','2024-09-24 04:51:55'),(68,'essentials',2,'Botble\\Logistics\\Models\\Package','packages','2024-09-24 04:51:55','2024-09-24 04:51:55'),(69,'enterprise',3,'Botble\\Logistics\\Models\\Package','packages','2024-09-24 04:51:55','2024-09-24 04:51:55'),(70,'unlimited',4,'Botble\\Logistics\\Models\\Package','packages','2024-09-24 04:51:55','2024-09-24 04:51:55'),(71,'devon-lane',1,'Botble\\Team\\Models\\Team','teams','2024-09-24 04:51:55','2024-09-24 04:51:55'),(72,'lori-stevens',2,'Botble\\Team\\Models\\Team','teams','2024-09-24 04:51:55','2024-09-24 04:51:55'),(73,'devon-lane',3,'Botble\\Team\\Models\\Team','teams','2024-09-24 04:51:55','2024-09-24 04:51:55'),(74,'pete',4,'Botble\\Team\\Models\\Team','teams','2024-09-24 04:51:55','2024-09-24 04:51:55');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Efficiency',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50'),(2,'Delivery',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50'),(3,'SupplyChain',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50'),(4,'Logistics',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50'),(5,'Shipping',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50'),(6,'Sustainability',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50'),(7,'International',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:51:50','2024-09-24 04:51:50');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Devon Lane','teams/1.png','Founder / CEO','USA','\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.facebook.com\\\\\\/\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/twitter.com\\\\\\/\\\",\\\"instagram\\\":\\\"https:\\\\\\/\\\\\\/www.instagram.com\\\\\\/\\\"}\"','published','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Lori Stevens','teams/2.png','Founder / CTO','Qatar','\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.facebook.com\\\\\\/\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/twitter.com\\\\\\/\\\",\\\"instagram\\\":\\\"https:\\\\\\/\\\\\\/www.instagram.com\\\\\\/\\\"}\"','published','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Devon Lane','teams/3.png','Business Manager','India','\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.facebook.com\\\\\\/\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/twitter.com\\\\\\/\\\",\\\"instagram\\\":\\\"https:\\\\\\/\\\\\\/www.instagram.com\\\\\\/\\\"}\"','published','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Pete','teams/4.png','Founder / CTO','China','\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.facebook.com\\\\\\/\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/twitter.com\\\\\\/\\\",\\\"instagram\\\":\\\"https:\\\\\\/\\\\\\/www.instagram.com\\\\\\/\\\"}\"','published','2024-09-24 04:51:53','2024-09-24 04:51:53',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Guy Hawkins','Top-notch service! Swift delivery, professional handling. TransP made shipping a breeze. Highly recommended! ⭐⭐⭐⭐⭐','homepage/author1.png','Bank of America','published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(2,'Eleanor Pena','Exceptional experience with TransP. They exceeded expectations in every way. Reliable, efficient, and hassle-free. ⭐⭐⭐⭐⭐','homepage/author2.png','Nintendo','published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(3,'Cody Fisher','Impeccable service that goes the extra mile. TransP is my go-to for secure and timely shipping. Truly 5-star service! ⭐⭐⭐⭐⭐','homepage/author3.png','Starbucks','published','2024-09-24 04:51:52','2024-09-24 04:51:52'),(4,'Albert Flores','Reliability at its finest. TransP delivered on time and with care. Outstanding customer service. A definite 5-star choice! ⭐⭐⭐⭐⭐','homepage/author4.png','Bank of America','published','2024-09-24 04:51:52','2024-09-24 04:51:52');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `users` VALUES (1,'gregory10@nienow.biz',NULL,'$2y$12$X8XAyrPjmDz8iHV/bmivGOiFwhUrsigQzy3WH51esosFmKp7N.Qs6',NULL,'2024-09-24 04:51:41','2024-09-24 04:51:41','Carlotta','Feeney','admin',NULL,1,1,NULL,NULL);
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
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','transp',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-09-24 04:51:50','2024-09-24 04:51:50'),(2,'CustomMenuWidget','footer_sidebar','transp',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Industries\",\"menu_id\":\"industries\"}','2024-09-24 04:51:50','2024-09-24 04:51:50'),(3,'CustomMenuWidget','footer_sidebar','transp',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Services\",\"menu_id\":\"services\"}','2024-09-24 04:51:50','2024-09-24 04:51:50'),(4,'GalleriesWidget','footer_sidebar','transp',4,'{\"id\":\"GalleriesWidget\",\"name\":\"Gallery\",\"gallery_id\":1}','2024-09-24 04:51:50','2024-09-24 04:51:50'),(5,'HeaderContactWidget','header_sidebar','transp',1,'{\"id\":\"HeaderContactWidget\",\"name\":\"Header Contact\",\"icon_block_1\":\"icons\\/address.png\",\"text_block_1\":\"65 Allerton Street 901 N Pitt Str, USA\",\"icon_block_2\":\"icons\\/phone.png\",\"text_block_2\":\"65 Allerton Street 901 N Pitt Str, USA\"}','2024-09-24 04:51:50','2024-09-24 04:51:50'),(6,'AppsDownloadWidget','mobile_menu_sidebar','transp',1,'{\"id\":\"AppsDownloadWidget\",\"text\":\"Download our Apps and get extra 15% Discount on your first Order\\u2026!\",\"google_play_logo\":\"general\\/google-play-btn.png\",\"google_play_url\":\"https:\\/\\/play.google.com\\/store\\/apps\",\"app_store_logo\":\"general\\/appstore-btn.png\",\"app_store_url\":\"https:\\/\\/apps.apple.com\\/us\\/app\"}','2024-09-24 04:51:50','2024-09-24 04:51:50'),(7,'ContactFormWidget','pre_footer_sidebar','transp',1,'{\"id\":\"ContactFormWidget\",\"title\":\"Get in touch\",\"shape_icon_top\":\"shapes\\/bg-newsletter-1.png\",\"shape_icon_bottom\":\"shapes\\/bg-newsletter-2.png\"}','2024-09-24 04:51:50','2024-09-24 04:51:50');
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

-- Dump completed on 2024-09-24 18:51:56
