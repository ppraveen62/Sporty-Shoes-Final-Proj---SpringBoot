-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: db7
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `productid` bigint NOT NULL,
  `productcategory` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `productprice` varchar(255) DEFAULT NULL,
  `productdescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12131,'Running shoes','Adidas Men�s Glowrun Reflective M ','2200','This shoe has high-density printing with a gradient effect which increases its glamor. '),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,124355,'Running shoes','Adidas Men�s Dasher M Running Shoe','2589','The great cushioning, antibacterial comfort, smoothness, and superb grip makes it a must buying shoe.'),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12344,'Walking shoes','Nike Men�s Flex Experience RN 8 Running Shoes','3009','With its easy lace-up fastening, you can easily achieve the desires snug fit.'),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13241,'Running shoes','Asics Men�s Road Running Shoe','1819','Asics Men�s Road Running Shoe is a perfect match for those who want light shoes as it weighs 160 gm only'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13234,'Running shoes','Puma Men�s Zeta Running Shoes','2469','performance, good material then Puma Men�s Zeta Running Shoes is the best option for you'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1233,'Minimalist shoes','Topokkee Athletic STw-4','2000','Wide toebox tapers to a slimmer, secure midfoot and heel fit'),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,14555,'Minimalist shoes','Xero12 13Shoes Mesae Trail','2344','Spacious forefoot allows for natural toe splay'),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,12424,'Minimalist shoes','Arc�terayxas Norvansda SL 2','2434','Flexible upper easily folds down to stow'),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2443,'Walking shoes','Lotto Men�s Vertigo Running Shoes','2099','Allow your pair of shoes to air and de-odorize at a regular basis'),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1334135,'Walking shoes','Skechers Men�s Go Walk Max-Effort Running Shoes','2400','Charcoal Textile/Trim Style Desc:-Athletic Air Mesh Lace Up'),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1267,'Walking shoes','Campus Men�s Oxyfit Running Shoes','1009','Allow your pair of shoes to air and de-odorize at a regular basis, this also helps them retain their natural shape'),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,354767,'Walking shoes','Sparx Men SM-482 Sports Shoes','1400','Slip-on easy to wear fastening Durable outsole & breathable upper'),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4543,'Tennis shoes','ASICS Gel Resolution 8','2700','All Rounder'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,367755,'Tennis shoes','Asics Court FF 2 Novak','2099','Best Pick of 2021'),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,234323,'Tennis shoes','Babolat Jet Mach II','3000','Light Weight'),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85623,'Tennis shoes','Yonex Power Cushion Eclipsion','2600','Unique Design'),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2434,'Versatile training shoes','Nike Metcon 7','3009','True to size Stable Awesome grip Very comfy'),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11344,'Versatile training shoes',' Nano X1','3400','More versatile, less crossfit-specific Upper hugs the foot'),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,442112,'Versatile training shoes',' Adidas Powerlift 4 ','3422','Helps to improve lifting form Versatile for other WOD exercises'),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,723332,'Versatile training shoes','Nike�s Metcons','2500','Excellent for agility workouts Lighter than other Metcons'),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4365,'Trail running shoes','Salomon Pulsar Trail','3900','Excellent traction on both wet and dry trails'),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2134,'Trail running shoes','Saucony Peregrine 12','2300','Saucony�s Peregrine line has long been a speedy trail shoe that works well for many types of runners in a wide variety of conditions.'),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,112352,'Trail running shoes','Saucony Xodus Ultra','3000','4.5mm lugs and rockplate Roomy toebox Gaiter compatible'),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,35436,'Basketball shoes','Nike Cosmic Unity 2','3000','lighter weight, better grip, and more overall response.'),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,23425,'Basketball shoes','Li-Ning Way Of Wade 10','2900','amazing cushioning and combines with a full-length carbon fiber plate for best-in-class energy return.'),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42324,'Basketball shoes','adidas Trae Young 1','4000','The multi-directional ridged outsole sticks you to the hardwood while the ergonomic midsole offers support and comfort where you need it.'),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43231,'Football boots','adidas COPA Sense','3500','this new colour-up was certainly eye catching '),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24533,'Football boots',' adidas Predator Edge','3600','hard souls and strong grip');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 23:28:25
