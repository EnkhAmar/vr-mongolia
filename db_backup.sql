-- MySQL dump 10.13  Distrib 8.0.26, for macos10.14 (x86_64)
--
-- Host: localhost    Database: vrmn
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2020-04-26 17:31:11','2020-04-26 17:31:11'),(2,NULL,1,'Category 2','category-2','2020-04-26 17:31:11','2020-04-26 17:31:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body_en` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,'Виртуал бодит орчин','contents/May2020/fT05FeNY7vwDM3bgmUF5.jpg','<p>Та буйдангаасаа ч босохгүйгээр гадаад орноор аялж байна гэж төсөөлж байсан уу? Эсвэл Парис дахь Луврийн музейгээр зочилж байна гэж? Жишээ нь, та технологийн өндөр түвшний загварчлал ашиглан машин зохион бүтээх юм. Энэ бүхнийг та Виртуал бодит орчинг ашиглан&nbsp;гүйцэтгэх, төгөлдөржүүлэх боломжтой юм.</p>','2020-04-28 11:35:00','2020-05-05 09:47:41','<p>Could you imagine traveling abroad without leaving your coach? Or visiting the Louvre museum in Paris?</p>\r\n<p>Design the car from the scratch using high-tech simulation. All of this can be accomplished using virtual reality.</p>\r\n<p>&nbsp;</p>','Virtual Reality'),(2,'Why VR lab Mongolia','contents/April2020/umfaluBQEO7hIs4xZBjB.jpg','<p>VR lab Mongolia-аар бид хүн бүрд өөрийгөө хөгжүүлэх, технологийн хэрэглээнд суралцах, өмнө дурдсан 21-р зуунд эзэмших ёстой чадваруудыг өөрийн болгоход туслах зүйрлүүлшгүй боломжуудыг олгох юм. Ирээдүйн удирдагч, мэргэжилтнүүдийн хувьд VR lab Mongolia нь Виртуал бодит орчин/VR болон код бичих тухай юм.</p>','2020-04-28 12:20:00','2020-04-30 14:51:35','<p>In VR lab Mongolia we want to give everyone unparalleled opportunities to grow and be the part of the future.</p>\r\n<p>For Future Leaders and Professionals VR lab Mongolia is about VR and Coding. Our cutting-edge program is designed to boost education of the children and adults.</p>','Why VR lab Mongolia');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critical_skills`
--

DROP TABLE IF EXISTS `critical_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critical_skills` (
  `id` int unsigned NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critical_skills`
--

LOCK TABLES `critical_skills` WRITE;
/*!40000 ALTER TABLE `critical_skills` DISABLE KEYS */;
INSERT INTO `critical_skills` VALUES (1,'Тоон бичиг үсэг','<p>Ирээдүйн технологиудын тэргүүн эгнээнд байрлах VR/Виртуал бодит байдал, дижитал технологиор дамжуулан харилцаа холбоо, мэдээлэл авах боломж улам нэмэгдэж буй нийгэмд ажиллаж, сурч, амьдрах шаардлага хүн бүрд бий болж байгаа юм. Эцэст нь хэлэхэд бүгд ирээдүйд бэлэн байх ёстой.</p>','critical-skills/April2020/StJDvhkJatgs27wgMWen.png','2020-04-29 14:32:20','2020-04-29 14:32:20','Digital Literacy','<p>One need to live, learn and work in a society where communication and access to information is increasingly through digital technology, where VR and coding positioned in the forefront of future technologies. In the end, everyone should be ready for the future.</p>'),(2,'Шүүмжлэлт сэтгэлгээ','<p>Виртуал бодит байдлын технологи болон тухайн хүрээлэн буй орчинг зохион бүтээхэд тулгарах бэрхшээл, асуудлуудыг шийдвэрлэх замаар оюутан залуус болон мэргэжилтнүүд шүүмжлэлт сэтгэлгээгээ хөгжүүлэх юм.</p>','critical-skills/April2020/5968HOKvCIHimi4BQKSt.png','2020-04-29 14:37:09','2020-04-29 14:37:09','Critical Thinking','<p>By solving problems and challenges in designing VR technology and environment, students and professionals develop critical thinking.</p>'),(3,'Асуудал шийдвэрлэх','<p>VR/Виртуал бодит байдлын сургалт болон кодчилол нь асуудал шийдвэрлэх сургалтад суурилдаг. Тиймээс оюутнууд болон мэргэжилтнүүд асуудлыг өөр өөр өнцгөөс дүгнэж шийдвэрлэх ба нэг ижил асуудал, даалгаврыг шийдвэрлэх олон төрлийн арга зам болон шийдлүүдэд хүрэх юм.</p>','critical-skills/April2020/uQAwuenkvftc9f1S6n9s.png','2020-04-29 14:38:36','2020-04-29 14:38:36','Problem Solving','<p>VR training and coding is based on problem solving learning. Therefore, students and professionals will learn to solving problems from different angles and come to multiple solutions for the same problem or task.</p>'),(4,'Бүтээлч байдал','<p>Виртуал бодит орчинг зохион бүтээх нь оюутан залуус болон мэргэжилтнүүдэд өөрсдийн санаа бодлыг болон урам зоригийг чөлөөтэй илэрхийлэх чадварыг олгоно.</p>','critical-skills/April2020/RM7GcMlf5Vuq80V5ww0c.png','2020-04-29 14:40:19','2020-04-29 14:40:19','Creativity','<p>By solving problems and challenges in designing VR technology and environment, students and professionals develop critical thinking.</p>'),(5,'Хамтын ажиллагаа','<p>Виртуал бодит орчинг шинээр бий болгоход програмист, дизайнерын бүхэл бүтэн багийн хөдөлмөр хүчин чармайлтыг шаарддаг. Тиймээс Виртуал бодит байдлыг сурч хөгжүүлэхэд багаар ажиллах, хамтын ажиллагаа нь чухал ач холбогдолтой.</p>','critical-skills/April2020/cvAAotnMwatfk5xJGgcu.png','2020-04-29 14:42:01','2020-04-29 14:42:01','Collaboration','<p>Creating new VR environments and simulations require effort of the whole team of programmers and designers. Thus, teamwork and collaboration are important for VR learning and development.</p>');
/*!40000 ALTER TABLE `critical_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(56,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,10,'title','text','Title Mongolia',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',2),(58,10,'image','image','Image',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',6),(59,10,'body','rich_text_box','Body Mongolia',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',4),(60,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(61,12,'title','text','Title',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',2),(62,12,'body','rich_text_box','Body',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',4),(63,12,'icon','image','Icon',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',6),(64,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(65,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(66,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(67,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(68,10,'body_en','rich_text_box','Body English',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',5),(69,10,'title_en','text','Title English',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',3),(70,12,'title_en','text','Title English',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',3),(71,12,'body_en','rich_text_box','Body English',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',5),(72,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(73,13,'name','text','Name',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',2),(74,13,'name_en','text','Name English',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',3),(75,13,'title','text','Title',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',4),(76,13,'title_en','text','Title English',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',5),(77,13,'facebook','text','Facebook',0,1,1,1,1,1,'{}',6),(78,13,'twitter','text','Twitter',0,1,1,1,1,1,'{}',7),(79,13,'gmail','text','Gmail',0,1,1,1,1,1,'{}',8),(80,13,'image','image','Image',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',9),(81,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(82,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(91,16,'id','text','Id',1,0,0,0,0,0,'{}',1),(92,16,'name','text','Name',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',2),(93,16,'phone','number','Phone',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',3),(94,16,'email','text','Email',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',4),(96,16,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(97,16,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(99,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(100,17,'name','text','Name',0,1,1,0,1,1,'{}',2),(101,17,'email','text','Email',0,1,1,0,1,1,'{}',3),(102,17,'feedback','text','Feedback',0,1,1,0,1,1,'{}',4),(103,17,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',5),(104,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(110,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(111,19,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',2),(112,19,'name_en','text','Name En',1,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',3),(113,19,'price','number','Price',1,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',4),(114,19,'description','text_area','Description',0,1,1,1,1,1,'{}',5),(115,19,'description_en','text_area','Description En',0,1,1,1,1,1,'{}',6),(116,19,'type_id','text','Type Id',1,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',7),(117,19,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(118,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(119,19,'server_belongsto_type_relationship','relationship','type',0,1,1,1,1,1,'{\"model\":\"App\\\\Type\",\"table\":\"types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"Servers\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(120,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(121,21,'name','text','Name',1,1,1,1,1,1,'{}',2),(122,21,'name_en','text','Name En',1,1,1,1,1,1,'{}',3),(123,21,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(124,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(126,16,'server_id','text','Server Id',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',5),(128,16,'register_user_belongsto_server_relationship','relationship','Servers',0,1,1,1,1,1,'{\"model\":\"App\\\\Server\",\"table\":\"Servers\",\"type\":\"belongsTo\",\"column\":\"server_id\",\"key\":\"id\",\"label\":\"name_en\",\"pivot_table\":\"Servers\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(129,16,'organization_position','text','Organization Position',0,1,1,1,1,1,'{}',8),(130,16,'organization_name','text','Organization Name',0,1,1,1,1,1,'{}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2020-04-26 17:20:02','2020-04-26 17:20:02'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2020-04-26 17:20:02','2020-04-26 17:20:02'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2020-04-26 17:20:02','2020-04-26 17:20:02'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2020-04-26 17:31:11','2020-04-26 17:31:11'),(10,'contents','contents','Content','Contents',NULL,'App\\Content',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-04-28 11:25:41','2020-05-03 16:05:05'),(12,'critical_skills','critical-skills','Critical Skill','Critical Skills',NULL,'App\\CriticalSkill',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-04-28 12:35:35','2020-05-03 16:05:48'),(13,'members','members','Member','Members',NULL,'App\\Member',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-04-29 15:53:28','2020-05-03 16:06:34'),(16,'register_users','register-users','Register User','Register Users',NULL,'App\\RegisterUser',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-04-30 12:28:33','2020-05-03 16:03:27'),(17,'feedbacks','feedbacks','Feedback','Feedback',NULL,'App\\Feedback',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-04-30 14:18:31','2020-04-30 14:50:28'),(19,'Servers','servers','Server','Servers',NULL,'App\\Server',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-05-03 11:30:24','2020-05-03 16:07:27'),(20,'type','type','Type','Types',NULL,'App\\Type',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-05-03 11:31:11','2020-05-03 11:31:11'),(21,'types','types','Type','Types',NULL,'App\\Type',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-05-03 11:39:34','2020-05-03 11:39:34');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'George Chen','George Chen','Head of Public Policy, Facebook','Head of Public Policy, Facebook','https://www.facebook.com/george.chen',NULL,NULL,'members/April2020/member1.jpeg','2020-04-29 16:04:00','2020-04-30 15:12:45'),(2,'Ider-Od B','Ider-Od B','CEO, FARO TECHNOLOGY','CEO, FARO TECHNOLOGY','https://www.facebook.com/iderodbaterdene',NULL,NULL,'members/April2020/member2.jpeg','2020-04-29 16:05:00','2020-04-30 15:13:35'),(3,'Byambajargal A','Byambajargal A','CEO, FARO EDUCATION','CEO, FARO EDUCATION','https://www.facebook.com/Byambajaa',NULL,NULL,'members/April2020/member3.jpeg','2020-04-29 16:05:00','2020-04-30 15:14:42'),(4,'Harris Chan','Harris Chan','CEO, COBO ACADEMY','CEO, COBO ACADEMY','https://www.facebook.com/harris.chan',NULL,NULL,'members/April2020/member4.jpeg','2020-04-29 16:05:00','2020-04-30 15:14:57');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-04-26 17:20:02','2020-04-26 17:20:02','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,9,'2020-04-26 17:20:02','2020-05-03 16:08:03','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,8,'2020-04-26 17:20:02','2020-05-03 16:08:08','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,10,'2020-04-26 17:20:02','2020-05-03 16:08:03','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,13,'2020-04-26 17:20:02','2020-05-03 16:08:03',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2020-04-26 17:20:02','2020-04-30 14:12:34','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-04-26 17:20:02','2020-04-30 14:12:34','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-04-26 17:20:02','2020-04-30 14:12:34','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-04-26 17:20:02','2020-04-30 14:12:34','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,12,'2020-04-26 17:20:02','2020-05-03 16:08:03','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-04-26 17:20:02','2020-04-30 14:12:34','voyager.hooks',NULL),(16,1,'Contents','','_self','voyager-news','#000000',NULL,4,'2020-04-28 11:25:41','2020-04-30 14:20:10','voyager.contents.index','null'),(17,1,'Critical Skills','','_self','voyager-bulb','#000000',NULL,5,'2020-04-28 12:35:35','2020-04-30 14:20:10','voyager.critical-skills.index','null'),(18,1,'Members','','_self','voyager-people','#000000',NULL,6,'2020-04-29 15:53:28','2020-05-03 16:07:55','voyager.members.index','null'),(20,1,'Register Users','','_self','voyager-people','#000000',NULL,3,'2020-04-30 12:28:33','2020-04-30 14:20:17','voyager.register-users.index','null'),(22,1,'Feedback','','_self','voyager-chat','#000000',NULL,2,'2020-04-30 14:18:31','2020-04-30 14:20:17','voyager.feedbacks.index','null'),(24,1,'Servers','','_self','voyager-study','#000000',NULL,7,'2020-05-03 11:30:24','2020-05-03 16:08:42','voyager.servers.index','null'),(26,1,'Types','','_self','voyager-list','#000000',NULL,11,'2020-05-03 11:39:34','2020-05-03 16:09:56','voyager.types.index','null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2020-04-26 17:20:02','2020-04-26 17:20:02');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2020-04-26 17:31:11','2020-04-26 17:31:11');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servers`
--

DROP TABLE IF EXISTS `Servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Servers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servers`
--

LOCK TABLES `Servers` WRITE;
/*!40000 ALTER TABLE `Servers` DISABLE KEYS */;
INSERT INTO `Servers` VALUES (1,'ВР Корпорацын сургалт','Virtual Reality Experience Corporate',0,NULL,'Virtual Technology will be become commonplace and wide spread in the future. We are offering you to experience this new technology and see where the future is heading. Future. Now.',2,'2020-05-03 11:52:00','2020-05-05 10:08:45'),(2,'ВР Сургалт','VR Experience Personal',0,NULL,'Do you ever had experience of entering Virtual Reality? If no, we are offering you unparallel experience to the future of discovery, adventure and something special. Future. Now.',3,'2020-05-03 11:54:00','2020-05-05 10:08:25'),(3,'360° камера практик','360° camera experience',0,NULL,'Do you know how the virtual reality worlds created? Welcome to the 360 Camera experience. You will learn and participate in the creation of Virtual Reality Worlds in our VR laboratory.',3,'2020-05-03 11:56:00','2020-05-05 10:09:29'),(4,'Class- Co-Space One','Class- Co-Space One',0,NULL,'Do you need complete introduction to the VR through academic training? Enter Co-Space program. This Virtual Reality training, where one rigorously learns mechanics of VR with coding skills.',3,'2020-05-03 11:58:00','2020-05-05 10:09:09'),(5,'Class- Co-Space Two','Class- Co-Space Two',0,NULL,'Do you need complete introduction to the VR through academic training? Enter Co-Space program. This Virtual Reality training, where one rigorously learns mechanics of VR with coding skills.',3,'2020-05-03 11:58:00','2020-05-05 10:09:50');
/*!40000 ALTER TABLE `Servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2020-04-26 17:31:11','2020-04-26 17:31:11'),(2,'data_types','display_name_singular',6,'pt','Página','2020-04-26 17:31:11','2020-04-26 17:31:11'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2020-04-26 17:31:11','2020-04-26 17:31:11'),(4,'data_types','display_name_singular',4,'pt','Categoria','2020-04-26 17:31:11','2020-04-26 17:31:11'),(5,'data_types','display_name_singular',2,'pt','Menu','2020-04-26 17:31:11','2020-04-26 17:31:11'),(6,'data_types','display_name_singular',3,'pt','Função','2020-04-26 17:31:11','2020-04-26 17:31:11'),(7,'data_types','display_name_plural',5,'pt','Posts','2020-04-26 17:31:11','2020-04-26 17:31:11'),(8,'data_types','display_name_plural',6,'pt','Páginas','2020-04-26 17:31:11','2020-04-26 17:31:11'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2020-04-26 17:31:11','2020-04-26 17:31:11'),(10,'data_types','display_name_plural',4,'pt','Categorias','2020-04-26 17:31:11','2020-04-26 17:31:11'),(11,'data_types','display_name_plural',2,'pt','Menus','2020-04-26 17:31:11','2020-04-26 17:31:11'),(12,'data_types','display_name_plural',3,'pt','Funções','2020-04-26 17:31:11','2020-04-26 17:31:11'),(13,'categories','slug',1,'pt','categoria-1','2020-04-26 17:31:11','2020-04-26 17:31:11'),(14,'categories','name',1,'pt','Categoria 1','2020-04-26 17:31:11','2020-04-26 17:31:11'),(15,'categories','slug',2,'pt','categoria-2','2020-04-26 17:31:11','2020-04-26 17:31:11'),(16,'categories','name',2,'pt','Categoria 2','2020-04-26 17:31:11','2020-04-26 17:31:11'),(17,'pages','title',1,'pt','Olá Mundo','2020-04-26 17:31:11','2020-04-26 17:31:11'),(18,'pages','slug',1,'pt','ola-mundo','2020-04-26 17:31:11','2020-04-26 17:31:11'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2020-04-26 17:31:11','2020-04-26 17:31:11'),(20,'menu_items','title',1,'pt','Painel de Controle','2020-04-26 17:31:11','2020-04-26 17:31:11'),(21,'menu_items','title',2,'pt','Media','2020-04-26 17:31:11','2020-04-26 17:31:11'),(22,'menu_items','title',13,'pt','Publicações','2020-04-26 17:31:11','2020-04-26 17:31:11'),(23,'menu_items','title',3,'pt','Utilizadores','2020-04-26 17:31:11','2020-04-26 17:31:11'),(24,'menu_items','title',12,'pt','Categorias','2020-04-26 17:31:11','2020-04-26 17:31:11'),(25,'menu_items','title',14,'pt','Páginas','2020-04-26 17:31:11','2020-04-26 17:31:11'),(26,'menu_items','title',4,'pt','Funções','2020-04-26 17:31:11','2020-04-26 17:31:11'),(27,'menu_items','title',5,'pt','Ferramentas','2020-04-26 17:31:11','2020-04-26 17:31:11'),(28,'menu_items','title',6,'pt','Menus','2020-04-26 17:31:11','2020-04-26 17:31:11'),(29,'menu_items','title',7,'pt','Base de dados','2020-04-26 17:31:11','2020-04-26 17:31:11'),(30,'menu_items','title',10,'pt','Configurações','2020-04-26 17:31:11','2020-04-26 17:31:11');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 10:06:40
