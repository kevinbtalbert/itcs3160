-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Campus_Eats_Fall2020
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_delivery_driver_id` (`driver_id`),
  KEY `fk_delivery_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_delivery_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_delivery_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,3,8,'2004-04-15 15:15:01'),(2,6,17,'1986-03-09 13:02:10'),(3,8,4,'2007-03-27 04:20:50'),(4,4,4,'1990-11-27 07:17:36'),(5,4,7,'1985-05-17 20:06:35'),(6,5,15,'1987-07-21 03:13:27'),(7,7,1,'1984-12-20 02:07:33'),(8,6,16,'1987-10-24 02:17:47'),(9,6,10,'1973-08-23 08:51:27'),(10,4,8,'1984-07-05 15:41:52'),(11,3,12,'2005-08-13 13:46:19'),(12,4,12,'2000-06-10 15:12:36'),(13,3,4,'1997-03-15 11:26:07'),(14,2,7,'2002-11-02 13:09:13'),(15,3,16,'1981-12-08 18:29:25'),(16,7,16,'1996-08-06 00:30:01'),(17,5,20,'2006-09-06 06:36:54'),(18,5,19,'1992-08-13 02:49:56'),(19,8,12,'1993-07-28 11:48:09'),(20,5,6,'1990-01-04 11:00:09'),(21,5,3,'2000-12-13 17:38:36'),(22,4,13,'1990-03-19 22:51:00'),(23,5,9,'1972-02-19 02:26:18'),(24,7,7,'2017-03-20 16:51:08'),(25,8,13,'1974-01-01 11:14:14'),(26,2,13,'2019-01-15 05:59:35'),(27,1,3,'2007-04-20 19:22:11'),(28,6,18,'1982-06-13 10:39:10'),(29,7,6,'1996-02-24 19:28:29'),(30,8,9,'1975-02-18 15:58:47'),(31,4,17,'1994-05-20 07:20:50'),(32,2,1,'2012-05-15 03:14:38'),(33,5,6,'2003-04-13 15:05:16'),(34,4,15,'2013-03-20 03:42:18'),(35,7,16,'2016-11-14 07:19:17'),(36,1,2,'1978-05-30 23:37:54'),(37,5,10,'2012-04-12 12:47:41'),(38,8,19,'1976-11-28 20:32:04'),(39,4,6,'2014-06-13 10:12:35'),(40,6,3,'2014-10-26 06:51:03'),(41,2,4,'1977-10-01 00:42:32'),(42,3,10,'1999-09-16 09:29:48'),(43,5,4,'1997-10-10 15:57:51'),(44,5,19,'2002-05-07 05:34:59'),(45,5,15,'2004-05-06 01:40:09'),(46,7,9,'1987-08-29 11:10:25'),(47,1,9,'1999-05-04 20:14:44'),(48,8,1,'2013-05-18 02:51:44'),(49,4,20,'2000-11-18 05:13:35'),(50,1,10,'1974-04-01 19:29:04'),(51,3,3,'2009-01-01 08:06:39'),(52,7,6,'1983-06-24 13:57:13'),(53,5,7,'2001-06-27 04:51:36'),(54,1,8,'2010-06-22 15:40:38'),(55,8,8,'2005-08-13 20:44:05'),(56,7,4,'1997-11-15 04:34:41'),(57,4,11,'1980-08-20 18:58:41'),(58,1,12,'1999-11-10 05:16:48'),(59,5,1,'2007-05-23 12:18:57'),(60,4,20,'1997-12-01 11:07:06'),(61,4,12,'2012-04-22 10:09:20'),(62,4,12,'1980-12-23 17:00:24'),(63,2,17,'1974-03-09 13:17:06'),(64,2,14,'2006-05-23 00:09:16'),(65,6,5,'2015-12-04 02:40:23'),(66,5,8,'2013-10-06 09:32:26'),(67,4,16,'2007-10-19 19:02:18'),(68,8,6,'2004-07-18 07:16:52'),(69,8,13,'1994-09-18 22:12:40'),(70,6,15,'2001-07-24 11:56:32'),(71,5,11,'1997-05-08 08:13:38'),(72,2,17,'1991-07-22 02:45:00'),(73,5,11,'2007-01-29 00:46:12'),(74,7,18,'1972-10-08 02:30:28'),(75,2,11,'2012-08-08 06:06:23'),(76,5,20,'1992-03-03 17:59:04'),(77,3,11,'2002-06-01 09:30:41'),(78,2,17,'2004-12-20 16:44:08'),(79,5,1,'1976-04-03 09:33:28'),(80,8,12,'2015-05-07 06:51:40'),(81,1,11,'1982-05-17 00:05:21'),(82,5,11,'1997-03-05 05:33:31'),(83,2,17,'1983-07-04 04:40:47'),(84,3,1,'2014-07-13 06:03:16'),(85,7,15,'2005-11-22 09:50:13'),(86,3,6,'2016-01-24 01:19:46'),(87,7,14,'1970-04-25 22:44:54'),(88,8,15,'1981-11-19 06:22:17'),(89,5,5,'1982-12-27 11:00:06'),(90,5,11,'1972-06-18 13:59:01'),(91,4,4,'2008-06-17 01:54:35'),(92,6,13,'1993-04-09 05:12:19'),(93,1,12,'1996-12-24 00:24:04'),(94,1,5,'1999-09-03 23:23:03'),(95,1,7,'1982-04-08 01:10:43'),(96,5,12,'1996-11-17 03:22:08'),(97,7,4,'1976-02-29 10:04:08'),(98,2,10,'1980-05-01 04:18:43'),(99,3,4,'1983-10-04 13:03:38'),(100,6,2,'2011-06-16 17:20:37'),(101,4,2,NULL);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `fk_D_student_id` (`student_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,110,'fi3980','1989-01-18',4),(2,98,'js4003','2017-03-15',3),(3,104,'xt8429','2002-10-11',3),(4,43,'yv6392','2010-02-23',3),(5,75,'cf3679','1997-04-06',4),(6,68,'rx3942','1970-03-24',3),(7,143,'mf2647','2014-05-06',3),(8,96,'ia9372','2011-06-25',3);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant Professor','Yale','Master'),(6,4,'Professor','CMU','PhD'),(7,15,'Assistant Professor','Duke','PhD'),(8,12,'Professor','NCSU','Master'),(9,10,'Adjunct Professor','Stanford','Bachelor'),(10,7,'Assistant Professor','Duke','PhD'),(11,14,'Assistant Professor','CMU','Bachelor'),(12,3,'Adjunct Professor','UNCC','Bachelor'),(13,1,'Assistant Professor','Harvard','Bachelor'),(14,22,'Assistant Professor','NCSU','PhD'),(15,9,'Assistant Professor','Harvard','Bachelor'),(16,25,'Adjunct Professor','Harvard','Bachelor'),(17,17,'Adjunct Professor','Stanford','Master'),(18,18,'Assistant Professor','UNCC','PhD'),(19,24,'Assistant Professor','CMU','Bachelor'),(20,23,'Adjunct Professor','Stanford','PhD'),(21,19,'Assistant Professor','CMU','PhD'),(22,20,'Professor','Stanford','PhD'),(23,13,'Adjunct Professor','NCSU','PhD'),(24,2,'Assistant Professor','Duke','Master'),(25,5,'Adjunct Professor','SJSU','Master'),(26,205,'Assistant Professor','UCLA','PhD');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(75) DEFAULT NULL,
  `location_address` varchar(75) DEFAULT NULL,
  `latitude` varchar(75) DEFAULT NULL,
  `longitude` varchar(75) DEFAULT NULL,
  `drop_off_point` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_index_desc` (`location_id` DESC),
  KEY `idx_location_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Suite 157','69612 Will Ferry\nEwellfort, KS 63168','-60.101046','101.481031','7893 Zita Mission Suite 949'),(2,'Apt. 080','711 Sammie Manor Apt. 863\nNorth Derek, NC 10578-4530','43.715801','3.213285','456 Lucio Common'),(3,'Suite 057','28742 Cole Forest Suite 483\nPort Jettiestad, RI 73714','89.842723','176.244614','145 Hal Skyway'),(4,'Apt. 443','356 Anderson Ridge Suite 742\nNorth Napoleon, VT 49903-3077','58.930520','109.869865','783 Travis Junction Apt. 728'),(5,'Suite 615','160 Skylar Union Apt. 740\nNew Elna, WY 49897-8734','79.842372','-61.397932','29350 Vandervort Estates'),(6,'Apt. 102','0552 Oran Forest Apt. 992\nMurazikview, NH 38317','-33.883942','-170.177924','1097 Wellington Valleys Apt. 395'),(7,'Apt. 309','6422 Nicolas Parkway Apt. 645\nPort Chadrick, FL 35738-8854','-64.515628','8.086937','408 Arely Streets Suite 405'),(8,'Apt. 210','7342 Lon Burgs Apt. 111\nGriffinborough, VT 64308','86.553283','-141.049418','5539 Mohammad Heights'),(9,'Suite 985','11269 Satterfield Knoll\nMauricehaven, WA 28902','5.180228','-52.389443','65717 Emmerich Walks'),(10,'Suite 343','147 Rempel Fork Apt. 940\nLake Delbert, LA 88131','44.909586','153.999345','658 Muhammad Land'),(11,'Suite 534','6402 Nienow Branch\nAriannatown, OK 28871-1749','-54.503176','-25.420009','27516 Elizabeth Road Suite 956'),(12,'Apt. 170','500 Boyle Gardens\nEast Amaliamouth, NY 48976','-54.104944','162.891267','67672 Frederik Skyway'),(13,'Suite 059','10112 Rau Station Apt. 761\nGarryland, AL 55900-5843','2.597478','-155.953323','7712 Maddison Centers Suite 850'),(14,'Suite 699','3808 Doyle Trail\nEast Silas, IA 37233-1658','30.753077','86.288575','136 O\'Connell Cape'),(15,'Apt. 286','20238 Altenwerth Loaf Suite 010\nDereckshire, VA 95393','-66.122207','-149.824885','77965 Destini Expressway Apt. 959'),(16,'Suite 691','9248 Bogisich Valleys\nTrompstad, NC 13748-3393','2.515638','177.753639','549 McClure Mission Apt. 918'),(17,'Apt. 332','204 Boyle Fort Apt. 653\nKautzerbury, LA 72319-3112','-68.893434','174.800381','11522 Haag Ferry Suite 031'),(18,'Apt. 158','63501 Funk Meadows\nUptonland, SD 60736-9385','28.507958','-75.256071','277 Mitchell Groves'),(19,'Suite 575','5924 Wuckert Meadow\nSouth Peggieview, GA 74295','-16.610616','-72.268415','43775 Narciso Plains'),(20,'Suite 268','345 Hermiston Streets\nPadbergton, MT 28143','65.738737','58.149015','3512 Carmela Cove Apt. 544'),(21,'Apt. 524','873 Percival Lights Suite 233\nAliviaview, GA 03965','67.141265','-173.513727','3838 Kirk Estates'),(22,'Apt. 190','66253 Reynolds Estate Suite 044\nSimonisside, WA 61688','5.838614','-111.040987','2610 Nolan Mill'),(23,'Suite 971','80612 Huel Shoal Suite 474\nGustavetown, NY 21745','38.930320','-13.117365','82341 Bernier Hills'),(24,'Suite 241','0276 Tamia Station Suite 735\nSolonfort, RI 12291-5788','7.830370','144.207856','4173 Theodora Plains'),(25,'Apt. 982','61231 Oda Loaf\nNew Nayeli, AK 82397','-12.199068','-17.852044','4485 Larissa Locks'),(26,'Apt. 366','3756 Terry Garden\nEast Lowellchester, AR 21100-1833','-18.154077','-82.234137','7989 Keira Fields'),(27,'Apt. 655','080 Darian Court\nSchuppemouth, NY 01757-0964','32.289014','-51.656823','6354 Chaya Inlet Apt. 859'),(28,'Suite 627','077 Jones Way\nSouth Mac, NH 34012','-77.441834','138.508983','8576 Mraz Route'),(29,'Apt. 067','532 Walsh Rest\nClementtown, KS 33449-1356','21.713872','64.510151','5524 Amina Meadow'),(30,'Apt. 435','62852 Josianne Mills\nEast Jeromeview, LA 82405','3.125229','-111.949983','21779 Nikolaus Common Apt. 851'),(31,'Apt. 862','3932 Alysha Station Suite 223\nLake Jakeland, WI 16933-0548','-4.658250','90.607759','352 Lehner Club'),(32,'Apt. 547','675 Giuseppe Divide\nNorth Angela, NY 08608','-72.446033','47.048924','7245 Lindgren Mount'),(33,'Suite 890','752 Cecilia Bypass Apt. 959\nSanfordhaven, WA 56971-1157','51.665170','77.806552','15710 Leon Viaduct'),(34,'Suite 328','7598 Klocko Oval Apt. 344\nDavionview, OH 58638','11.881816','73.668767','657 Annie Mission Apt. 557'),(35,'Suite 753','485 Grayce Oval\nWest Jarrett, IA 91623-1323','24.690149','66.045301','369 Schumm Lock Apt. 238'),(36,'Apt. 645','21545 Lind Avenue Apt. 382\nPredovicview, MI 29544','-74.927689','83.265896','091 Matilde Plains'),(37,'Suite 951','6198 Fay Wells\nGaylordstad, CT 61152','66.394980','-59.050144','83844 Colten Locks Apt. 489'),(38,'Suite 216','346 Schaefer Coves\nJadeland, MS 78153','-66.245838','-158.722669','5860 Herbert Mill Apt. 351'),(39,'Suite 468','784 Nickolas Prairie\nEmmanuelleberg, MO 24742','56.745502','-157.051267','333 Kassulke Stravenue Suite 365'),(40,'Apt. 687','7517 Leonard Viaduct Apt. 845\nBettiestad, MI 44408-9670','29.819380','-32.122210','1610 Hermina Harbor'),(41,'Apt. 130','50315 Frami Avenue\nLubowitztown, AR 11074','-84.989439','-80.878304','0930 Kessler Pines'),(42,'Apt. 621','46127 Rowe Meadows\nPort Kacey, OH 67514','42.828977','103.587679','27321 Jonas Lodge'),(43,'Apt. 339','13115 Goyette Hill Apt. 020\nNew Viviane, WI 82795-6389','-64.609637','91.929908','674 Axel Square Apt. 434'),(44,'Suite 091','64736 Michale Dam Suite 996\nVioletton, CT 07419-1266','2.426098','-55.634546','90325 Samson Manors'),(45,'Suite 606','8865 Weimann Meadows Apt. 986\nNew Darrin, ND 68683-4367','9.188521','150.453880','70401 Andres Cape'),(46,'Apt. 895','0651 Hoeger Route\nNew Madelineport, NJ 20757','-87.709982','76.089939','4599 Crona Wall'),(47,'Suite 874','48826 Jacobson Rue Apt. 189\nNew Javon, MT 26911','-21.845400','35.257482','827 Barrows Grove Suite 824'),(48,'Apt. 942','4926 Lupe Prairie Apt. 046\nBeckerville, ME 26965','-78.054954','-130.852481','832 Muller Valley'),(49,'Apt. 614','69415 Gerry Wall Suite 971\nBeattyfort, VT 50012-9205','72.283789','-108.170390','4022 Koelpin Fords Apt. 743'),(50,'Apt. 030','666 Heller Club Apt. 467\nBurleyshire, MD 54385-3107','-38.728546','-35.072223','0068 Tromp Centers'),(51,'Apt. 940','794 Hilbert Roads\nWilhelminemouth, DC 00100','-8.897519','88.848386','346 Janae Harbor Suite 458'),(52,'Apt. 634','65073 Aufderhar Mission Suite 778\nLoniestad, SD 78878-6419','23.408943','165.398873','36035 Barton Crest'),(53,'Apt. 782','746 Jalon Fort\nDariofort, MA 79648','-59.088037','-103.347456','321 Margarett Path'),(54,'Suite 426','8353 Alejandra Heights\nNorth Gardner, AR 00733-0393','-26.565917','115.692025','189 Blick Manors Apt. 066'),(55,'Apt. 709','62270 Katelynn Views\nTomborough, WV 24093-0247','-37.074660','76.206560','2245 Alexander Forest Apt. 581'),(56,'Suite 991','7814 Stanley Ramp\nNorth Alene, MA 01296-2354','46.302614','-25.734456','49283 Kamryn Point Suite 174'),(57,'Suite 960','65592 Liam Route\nLucymouth, VA 96459','-20.775978','121.809647','1714 Dena Ferry Suite 821'),(58,'Apt. 765','18848 Heaney Knoll Apt. 745\nLake Genoveva, FL 65517-3493','-82.197132','47.558329','5529 Rosamond Forges Suite 578'),(59,'Suite 078','7033 Yost Drive Apt. 553\nMekhiview, OK 48129-1227','-84.757382','-58.654951','3021 Baumbach Terrace Suite 512'),(60,'Apt. 554','8312 Elaina Stream\nOsborneview, ME 31318','-41.348220','-36.548238','9338 Chadd Landing'),(61,'Apt. 649','32904 Kunze Point\nWest Marlon, KS 96283','77.113732','173.740537','036 Rebeca Ports Suite 971'),(62,'Suite 285','2055 Reinger Isle Suite 643\nPort Gilbert, CO 29400','41.839736','140.371966','6591 Murazik Fields'),(63,'Suite 131','4927 Rowe Mountains Suite 840\nRomafort, OR 55775-5302','-12.717245','98.803269','0573 Jennie Centers Suite 444'),(64,'Suite 549','38523 Ebert Plains\nNorth Reesemouth, PA 81161','39.412911','-13.612642','847 Alexandrine Pine'),(65,'Suite 057','577 Bosco Green Apt. 208\nRubytown, CO 67492','74.904833','138.781453','715 Elena Prairie'),(66,'Apt. 224','2759 Emmalee Radial\nBogisichmouth, GA 93636-4262','80.350868','109.402133','32117 Larkin Glens Suite 120'),(67,'Suite 842','122 Frederick Plaza Suite 326\nLarkinfurt, LA 61011-0332','51.879563','139.262053','6672 O\'Reilly Station Apt. 304'),(68,'Suite 051','1579 Cyrus Square\nPort Raphaelle, SD 02230','54.628958','16.532622','60762 Lafayette Mount'),(69,'Suite 566','354 Konopelski Mission Suite 967\nNorth Waldo, NH 57787','55.835435','121.519774','37963 Eliseo Field Suite 782'),(70,'Suite 194','270 Wyman Burgs\nSchmidtborough, ID 31185','2.428639','18.915083','3011 Keagan Cliff'),(71,'Suite 400','7180 Devante Hills Suite 245\nSouth Rossie, ND 77848-7427','-31.676452','-171.620202','601 Adriana Forge'),(72,'Suite 170','5862 Leatha Orchard Suite 024\nReubenmouth, LA 38852','-48.152329','144.854379','57056 Lang Vista Suite 576'),(73,'Suite 972','775 Quinton Lane Apt. 482\nQuitzonfort, ID 32867-1172','5.775053','120.802147','01687 Russel Streets'),(74,'Apt. 814','344 Rylee Vista Apt. 872\nElvistown, CO 63706-4744','-67.390203','-38.347276','938 Abshire Mission'),(75,'Apt. 669','45232 Jast Shoals Apt. 768\nWest Nelsview, KY 81086-6074','-71.989135','168.958988','404 Ena Crest Suite 279'),(76,'Suite 564','576 Huels Burgs\nPort Fritz, OH 46070-9005','47.057137','115.145131','2263 Ella Lodge Apt. 429'),(77,'Suite 399','065 Stracke Mountain Suite 204\nWildermantown, MS 82948-2075','-53.323383','140.320853','4862 Stone Coves'),(78,'Apt. 094','91865 Letha Village Suite 621\nLangchester, ND 52116','-6.897948','-60.925732','833 Colten Shore'),(79,'Apt. 567','25427 Casimer Oval Apt. 791\nNorth Herta, TN 66396-2943','-33.475706','131.064403','395 Koepp Plain'),(80,'Suite 693','688 Hahn Centers\nPort Alphonsoview, RI 76712','-53.028515','19.837964','165 Mercedes Place Apt. 655'),(81,'Suite 509','658 Conor Port Apt. 489\nAbigaleview, IN 71308-0448','-76.085998','-54.565506','2862 Marty Throughway'),(82,'Apt. 678','6248 Frida Neck\nHarveyport, NJ 19092-3293','0.498058','39.425007','45787 Chaya Forks'),(83,'Apt. 539','19376 Name Neck Suite 362\nAntonioland, NV 49104-5101','-72.426565','-153.978776','60734 Kathlyn Rue Suite 096'),(84,'Suite 174','16736 Annabel Rapid Suite 989\nPort Halie, VT 56468','20.498983','-156.991411','0603 Ryan Glens'),(85,'Apt. 010','522 Waelchi Ramp\nSouth Polly, HI 61817-1149','-67.186395','95.299372','12273 Paucek Mount Suite 261'),(86,'Suite 873','20209 Mazie Glens Suite 966\nGwenview, KY 53849','-79.339662','-18.135492','9742 Nico Turnpike Apt. 716'),(87,'Apt. 198','8187 O\'Kon Loop Suite 540\nSouth Mikeborough, MT 08645-7217','81.564385','129.153519','667 Nyasia Stravenue Apt. 223'),(88,'Apt. 386','3824 Jerald Wells\nLednerchester, IL 34650','-62.141340','-50.218426','313 Toy Shore'),(89,'Apt. 627','9946 Evangeline Trail\nMitchellfurt, KS 78732','-45.361426','141.801986','48675 Mann Mission'),(90,'Apt. 408','359 Reichel Course\nPort Heathville, NV 22035-1749','-37.629458','142.868503','04507 Aisha Light'),(91,'Apt. 940','2841 Matilda Light\nNew Berneice, KY 93006-1067','44.019826','61.089192','7894 Wiegand Center'),(92,'Suite 523','09351 Dawn Isle\nPort Monty, IN 03900','5.537848','-47.637225','000 Gleichner Groves Suite 760'),(93,'Suite 515','9156 Earlene Drives\nFadelbury, VA 22109-1994','-58.840136','-151.166289','7213 Unique Curve Apt. 238'),(94,'Suite 390','3194 VonRueden Road Suite 638\nEast Tiana, NE 22875','64.883603','157.722086','843 Konopelski Gardens Apt. 507'),(95,'Suite 353','441 Steuber Landing Suite 981\nBayleehaven, DC 05649','28.826289','41.172158','853 Fritsch Street Suite 159'),(96,'Suite 901','94240 Tremblay Viaduct Suite 169\nNew Melody, AR 25552','55.711350','161.543504','9168 Lilly Ranch Apt. 651'),(97,'Apt. 441','26914 Johnston Via Suite 614\nGloverport, GA 39771','-26.328698','120.427582','2852 Marisol Meadows Suite 534'),(98,'Apt. 481','863 Nina Village\nSouth Vernonberg, WA 34268','-68.889173','84.854941','57866 Birdie Corners'),(99,'Apt. 412','50421 Heaney Unions\nNew Pasquale, AK 98565-2159','-35.314166','-155.680802','97642 Rempel Tunnel Suite 610'),(100,'Apt. 474','42828 Evangeline Square\nJacklynfort, AK 42024-2081','66.232111','91.681238','778 Cassandre Cliff');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `person_id` int DEFAULT NULL,
  `delivery_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`),
  KEY `person_id_idx` (`person_id`),
  KEY `delivery_id_idx` (`delivery_id`),
  KEY `location_id_idx` (`location_id`),
  KEY `driver_id_idx` (`driver_id`),
  KEY `restaurant_id_idx` (`restaurant_id`),
  CONSTRAINT `delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `person_name` varchar(300) DEFAULT NULL,
  `person_email` varchar(150) DEFAULT NULL,
  `cell` bigint DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Keith Turner','shanon08@example.com',9768623560),(2,'Ms. Antonette Keeling','brady73@example.com',9710540609),(3,'Miss Rosanna Connelly','alayna.schowalter@example.net',9436829146),(4,'Noel Emard','icie96@example.org',9166085646),(5,'Trudie McClure Jr.','hwolf@example.net',9831320422),(6,'Dr. Velva Howe','schmidt.stephan@example.org',9401293781),(7,'Colby Stokes','william.predovic@example.net',9595806999),(8,'Rosie Shields V','prosacco.vidal@example.com',9324930770),(9,'Ms. Marlee Spinka Sr.','otilia80@example.com',9670194175),(10,'Skylar Koelpin Jr.','nterry@example.com',9848597984),(11,'Prof. Marquis Sawayn Sr.','mills.hollis@example.com',9888512127),(12,'Isadore Auer IV','wkuvalis@example.org',9787570990),(13,'Candace Koss','kassulke.estevan@example.net',9308906690),(14,'Carey Sawayn','rgreenfelder@example.org',9256868854),(15,'Mr. Dayne Grimes DVM','phaley@example.org',9757688590),(16,'Rosie Brown','ron18@example.net',9633493813),(17,'Kayli Maggio','stroman.arden@example.net',9524209592),(18,'Eddie Osinski','rocio.mann@example.com',9150770929),(19,'Dr. Lia Marks Jr.','kmedhurst@example.com',9800676038),(20,'Baron Feil','harris.angelina@example.com',9863696126),(21,'Lyric Cassin DVM','tkovacek@example.net',9767050989),(22,'Sigmund Torp','auer.everardo@example.net',9690677374),(23,'Rahsaan Collins','macie66@example.org',9634329045),(24,'Ansel Welch','jeff47@example.net',9842908406),(25,'Axel Bins PhD','bruen.merlin@example.net',9148329336),(26,'Frank Leffler','kautzer.ernestine@example.net',9451359352),(27,'Eden Schowalter','montana49@example.com',9918645459),(28,'Eldridge Von','uupton@example.net',9988165013),(29,'Dagmar Kassulke','emilia.bauch@example.com',9213090583),(30,'Ms. Madelyn Gleichner II','hans36@example.net',9383676151),(31,'Lilliana Emard','xnicolas@example.com',9945887810),(32,'Mrs. Cheyanne Keeling','janelle32@example.org',9289654741),(33,'Gabe Cole','jonathan26@example.com',9344083273),(34,'Mr. Gabe Bauch PhD','konopelski.kylee@example.net',9416224204),(35,'Esther Brekke','anna04@example.org',9577172566),(36,'Mrs. Freida Murphy','delmer.wiza@example.com',9837045438),(37,'Kellie Nicolas V','sylvia31@example.org',9235802954),(38,'Blaise Dare','madison95@example.org',9543994427),(39,'Randi Witting IV','hschultz@example.net',9418786674),(40,'Dr. Kacey Gorczany','camron52@example.com',9238976740),(41,'Alexandrine Donnelly','queen.davis@example.org',9403417764),(42,'Adonis Wilkinson','kamryn97@example.org',9969106027),(43,'Mr. Marcelo Breitenberg Sr.','cconn@example.net',9545589550),(44,'Kraig Littel','lubowitz.lorenza@example.com',9801051720),(45,'Althea Shanahan','mraz.danial@example.org',9179524322),(46,'Haylee Hickle','kirlin.della@example.net',9389501779),(47,'Mallory Rolfson','oraynor@example.org',9944432699),(48,'Lelia Tromp','koch.nathen@example.net',9721533567),(49,'Nicolette Leuschke','ervin.homenick@example.org',9943930303),(50,'Dr. Winston Gottlieb DVM','xwill@example.net',9755087308),(51,'Zackery Hermiston','donny20@example.org',9717042066),(52,'Kari Runte','weimann.marshall@example.org',9873383120),(53,'Alena Macejkovic','jesus54@example.org',9826083434),(54,'Braeden Schamberger','wilfred.hickle@example.org',9294415272),(55,'Mariana Schowalter II','zion.koch@example.net',9236157601),(56,'Osvaldo Casper','queen81@example.com',9627646768),(57,'Malika Beatty','yharvey@example.com',9598094832),(58,'Lisa Conroy Jr.','ilueilwitz@example.com',9228064461),(59,'Earl Dare','gwendolyn.gerhold@example.net',9673098021),(60,'Juvenal McLaughlin','ryan.d\'amore@example.org',9246052737),(61,'Prof. Khalil Howe','brady08@example.com',9687594736),(62,'Emanuel Schmitt','althea.koch@example.org',9284770565),(63,'Bianka Larkin','jaylan46@example.net',9641407974),(64,'Samson Hansen','nathaniel.rowe@example.net',9139417942),(65,'Westley Lakin','enrique60@example.org',9743557343),(66,'Mr. Shane Lebsack','fhirthe@example.net',9313519846),(67,'Emelie Goyette','uharris@example.com',9278293617),(68,'Ms. Meredith Gerlach II','rubie.rosenbaum@example.net',9703845293),(69,'Miss Alberta Conroy I','larkin.ernestine@example.org',9403734826),(70,'Elnora Weissnat','wpadberg@example.com',9348642594),(71,'Joey Reichel MD','jerald.skiles@example.org',9120762353),(72,'Ephraim Johnson','kovacek.ryann@example.com',9268160216),(73,'Mrs. Yesenia Hills PhD','rsteuber@example.net',9537042178),(74,'Diana Stroman','alec.lebsack@example.com',9166374642),(75,'Mr. Alfonso Ullrich IV','beer.camren@example.net',9456875969),(76,'Dr. Deon Harber IV','mafalda94@example.org',9279814004),(77,'Angus Steuber V','laverna47@example.com',9392527907),(78,'Mrs. Antoinette Tremblay V','tanner52@example.com',9627926487),(79,'Mr. Alexandre Balistreri','orodriguez@example.org',9410869140),(80,'Seth Russel V','schmidt.waylon@example.org',9319090756),(81,'Mr. Terrell Becker','tyler11@example.org',9519262117),(82,'Viviane Bayer','harrison18@example.net',9427541515),(83,'Mr. Baron Windler I','seth56@example.net',9242394545),(84,'Mrs. Kaitlyn Jacobs Sr.','vhettinger@example.org',9259287865),(85,'Javier Dooley','tillman.jude@example.com',9143324793),(86,'Alvera Kling','germaine.runolfsdottir@example.com',9403386314),(87,'Prof. Kamryn Armstrong','tyrel13@example.org',9163099974),(88,'Alexandrine Berge Sr.','tia55@example.org',9647050394),(89,'Beryl Adams','randall.strosin@example.com',9607795527),(90,'Dr. Buster Parisian IV','nlangworth@example.org',9965444463),(91,'Prof. Hiram Shanahan','mazie.towne@example.org',9452681581),(92,'Joy Macejkovic','mccullough.kenyon@example.org',9999885755),(93,'Stone Kshlerin','peter.cole@example.org',9851384624),(94,'Gladyce Cole','wweber@example.com',9459837816),(95,'Virginia Roob','augustus08@example.net',9734279443),(96,'Prof. Rahul Howe','anita.torphy@example.com',9644683434),(97,'Bryon Heidenreich','judah.keebler@example.org',9968760342),(98,'Prof. Yessenia Batz','percy62@example.com',9328404976),(99,'Emil Monahan','cassin.elvie@example.org',9168018675),(100,'Guillermo Haley','melvin83@example.com',9266256971),(101,'Dr. Xavier Ryan','sbatz@example.net',9290692579),(102,'Dr. Anibal Grady','tmurazik@example.org',9538369344),(103,'Willis Will','chance.leannon@example.com',9336382266),(104,'Myron Mayert','erling.boyle@example.org',9853200718),(105,'Eleonore Kling','billy.mills@example.org',9278446285),(106,'Adrian Orn MD','felipe.osinski@example.net',9299958360),(107,'Mrs. Lavina Will','bhuel@example.net',9468867991),(108,'Easton Buckridge MD','smcdermott@example.org',9303570434),(109,'Peyton Christiansen II','white.sherwood@example.org',9383615879),(110,'Glennie Corkery Sr.','filomena.mayer@example.com',9467683043),(111,'Prof. Nola Homenick V','brennan.sauer@example.net',9318343144),(112,'Arnaldo Raynor IV','eichmann.rashawn@example.com',9836340755),(113,'Fabiola Gusikowski V','mayert.minerva@example.org',9121545851),(114,'Maxie Grady','laney.flatley@example.net',9628920683),(115,'Mr. Sigrid Morissette','hodkiewicz.dean@example.org',9699469427),(116,'Prof. Mayra Schamberger','hnienow@example.net',9606514404),(117,'Elisha O\'Conner','jabbott@example.com',9569544603),(118,'Colt Wyman','kozey.austyn@example.com',9159123982),(119,'Asha Kuhic','kovacek.shea@example.com',9804473835),(120,'Claudie Williamson','vwintheiser@example.org',9790100203),(121,'Eula Rolfson','wruecker@example.org',9742865777),(122,'Prof. Mitchel O\'Kon DVM','tierra46@example.net',9759421993),(123,'Erica Sporer','khickle@example.net',9537817472),(124,'Greta Hodkiewicz V','alexandro02@example.com',9765562675),(125,'Delores Huel','schimmel.ludie@example.net',9976770718),(126,'Kassandra Quigley Sr.','oo\'conner@example.com',9463113682),(127,'Hayley Pfeffer','rhoda36@example.com',9793665395),(128,'Garrett Botsford','jaunita.schmeler@example.com',9868074160),(129,'Marco Zboncak','vlubowitz@example.net',9115868268),(130,'Walton Gutkowski','kelsie92@example.org',9363265672),(131,'Xzavier Hilpert','ysporer@example.com',9803198155),(132,'Dr. Alec Leannon','labadie.karley@example.com',9980582077),(133,'Hobart Miller','mann.antonio@example.com',9135280373),(134,'Ike Parisian','luella.cummerata@example.org',9463566099),(135,'Casey Feil','jdaniel@example.net',9166649183),(136,'Leopoldo Welch','hills.merritt@example.org',9627584754),(137,'Chasity Kiehn','anna.spinka@example.net',9695158064),(138,'Kenya Littel','bradtke.zita@example.org',9385173006),(139,'Prof. Roxanne Wilderman Jr.','joel.olson@example.net',9291456099),(140,'Miss Aubrey Sawayn MD','trippin@example.net',9535890585),(141,'Prof. Nathen Reichert','shanny.upton@example.net',9645155276),(142,'Ms. Kassandra Jacobi','hadley.kunze@example.com',9362461068),(143,'Myrl Goodwin','kub.jameson@example.net',9851877198),(144,'Bill Douglas','hassan61@example.org',9416415238),(145,'Mr. Peter D\'Amore','otha37@example.org',9562685050),(146,'Dr. Keshawn Greenholt PhD','gillian.von@example.net',9692023975),(147,'Ms. Sincere McDermott','eudora.grant@example.com',9417365224),(148,'Prof. Davonte Harvey','fay.simone@example.net',9198585720),(149,'Adeline Ondricka','wroob@example.org',9489869630),(150,'Ms. Opal Fisher IV','ukuvalis@example.net',9304350705),(151,'Dora Douglas','imelda58@example.net',9351442884),(152,'Prof. Gust Schulist','marlin11@example.org',9253008977),(153,'Mr. Jamaal Graham','gkreiger@example.com',9299781232),(154,'Estevan Stamm','dare.aurelie@example.com',9975958279),(155,'Eda Lowe','damian04@example.org',9738082899),(156,'Caitlyn Runolfsdottir','nwilliamson@example.net',9157717821),(157,'Josh Buckridge','ali85@example.org',9214116473),(158,'Amya Cole','rquitzon@example.net',9739257967),(159,'Jammie Bernhard','gayle.hagenes@example.org',9145191828),(160,'Meredith Konopelski','bode.marianne@example.com',9722902908),(161,'Dr. Russ Ullrich','kaylie25@example.org',9496887232),(162,'Miss Amanda Beier IV','haven70@example.com',9979440999),(163,'Everardo VonRueden','vokuneva@example.net',9307513590),(164,'Kyla Dibbert','katherine17@example.com',9397654914),(165,'Dr. Celestino Hegmann','xwaters@example.net',9574385694),(166,'Adella Gutmann','helga34@example.com',9403978574),(167,'Arch Cassin','qmuller@example.net',9691385176),(168,'Candida Gutmann','kuphal.elwyn@example.net',9919339129),(169,'Millie McClure','quitzon.yvonne@example.com',9379344758),(170,'Will Howe','gutmann.novella@example.org',9149480450),(171,'Celine Mertz','hilpert.caden@example.net',9601448593),(172,'Cletus Connelly DVM','romaguera.odessa@example.com',9568191939),(173,'Abel McLaughlin','maximus04@example.com',9596114054),(174,'Marian Kuphal','bkirlin@example.org',9826873637),(175,'Rita Vandervort II','dooley.godfrey@example.net',9820809334),(176,'Leann O\'Kon Sr.','ruthie15@example.org',9521975342),(177,'Maryam Hyatt','miguel74@example.org',9835366363),(178,'Carmella Kulas','hagenes.wilbert@example.net',9280103270),(179,'Royce Ledner II','lbogan@example.org',9511542747),(180,'Araceli Emard','hcassin@example.org',9314707204),(181,'Alexandro Strosin DVM','kathleen.parisian@example.com',9814787976),(182,'Ernestina Blanda','pearl25@example.com',9871777207),(183,'Kelly Kunze','lloyd62@example.com',9462462695),(184,'Bert Miller DVM','zack.littel@example.net',9532493167),(185,'Ima Deckow PhD','o\'keefe.kevon@example.org',9325208962),(186,'Giovanna Huels','nkrajcik@example.net',9352726912),(187,'Kaitlyn Heller','mozell.bechtelar@example.com',9558063000),(188,'Evan Herman Sr.','adolfo.green@example.net',9553259799),(189,'Carroll Hahn','norberto98@example.com',9447842897),(190,'Isaias Shields','stiedemann.chandler@example.net',9775912526),(191,'Mrs. Emmie Nikolaus Sr.','mcdermott.austin@example.com',9203282907),(192,'Audreanne Olson','litzy.prosacco@example.com',9203988422),(193,'Mr. Lawrence McClure','holly.wolff@example.com',9961654066),(194,'Dr. Hester Feil','cartwright.lonzo@example.net',9976085056),(195,'Pearl Gottlieb','katrina.marvin@example.org',9371313181),(196,'Aubrey Kihn','weissnat.annetta@example.com',9615559380),(197,'Odell Graham','thansen@example.net',9891213805),(198,'Thaddeus Nader','rohan.ressie@example.com',9396553983),(199,'Miss Stephany Harris','judge.predovic@example.org',9368433529),(200,'Prof. Erick Daniel','khills@example.com',9755384471),(201,'Dhananjay Arora','darora2@uncc.edu',9802878895),(202,'Dhananjay Arora','darora2@uncc.edu',9802878895),(203,'Dhananjay Arora','darora2@uncc.edu',9802878896),(204,'Dhananjay Arora','darora2@uncc.edu',9802878897),(205,'Akshay Babu','ababu1@uncc.edu',9802820800);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_join`
--

DROP TABLE IF EXISTS `person_join`;
/*!50001 DROP VIEW IF EXISTS `person_join`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_join` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `student_id`,
 1 AS `graduation_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_student`
--

DROP TABLE IF EXISTS `person_student`;
/*!50001 DROP VIEW IF EXISTS `person_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_student` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `cell`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `rating_id` mediumint DEFAULT NULL,
  `order_id` mediumint DEFAULT NULL,
  `driver_rating` mediumint DEFAULT NULL,
  `restaurant_rating` mediumint DEFAULT NULL,
  `driver_detailed` text,
  `restaurant_detailed` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,1,1,1,2,'nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie','congue, elit'),(2,2,2,3,4,'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus','Mauris ut quam vel sapien imperdiet'),(3,3,3,4,5,'eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla','feugiat. Sed'),(4,4,4,4,1,'congue turpis. In','quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.'),(5,5,5,5,1,'Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.','Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;'),(6,6,6,1,1,'Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt,','Nullam'),(7,7,7,3,5,'sit amet, dapibus id, blandit at, nisi. Cum','tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed'),(8,8,8,1,2,'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi','Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,'),(9,9,9,4,5,'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra.','mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean'),(10,10,10,2,1,'Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus','Sed diam lorem, auctor quis, tristique ac,'),(11,11,11,5,4,'vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat','Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut'),(12,12,12,3,5,'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc','ornare. Fusce'),(13,13,13,2,4,'sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque,','montes, nascetur ridiculus mus. Donec'),(14,14,14,2,3,'Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget','nec metus facilisis lorem tristique'),(15,15,15,4,3,'et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut','eu dui. Cum sociis natoque'),(16,16,16,3,4,'Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.','ultrices a, auctor non, feugiat'),(17,17,17,5,5,'felis ullamcorper viverra. Maecenas','Fusce dolor quam,'),(18,18,18,3,3,'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed','et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis'),(19,19,19,2,3,'lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis','Vestibulum accumsan'),(20,20,20,5,1,'convallis in, cursus','odio,'),(21,21,21,5,3,'Nunc sed','et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel'),(22,22,22,4,3,'dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel','Nunc'),(23,23,23,1,1,'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet','id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent'),(24,24,24,4,4,'elit.','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet'),(25,25,25,5,1,'amet ultricies sem magna nec quam. Curabitur','volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat'),(26,26,26,3,4,'Cras dolor dolor, tempus','condimentum eget, volutpat ornare,'),(27,27,27,5,1,'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl.','nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.'),(28,28,28,1,3,'fermentum fermentum arcu. Vestibulum ante ipsum','Aliquam'),(29,29,29,1,4,'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.','Praesent eu nulla'),(30,30,30,4,3,'quam vel sapien','cubilia Curae; Phasellus ornare. Fusce'),(31,31,31,5,2,'nunc. Quisque ornare tortor at risus. Nunc ac','penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.'),(32,32,32,3,1,'vulputate, nisi','massa rutrum magna. Cras convallis convallis dolor.'),(33,33,33,1,1,'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit,','sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel'),(34,34,34,4,4,'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum','cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus.'),(35,35,35,5,2,'Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean','urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis'),(36,36,36,2,4,'id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros','malesuada vel, venenatis vel, faucibus id, libero. Donec'),(37,37,37,3,2,'a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Donec egestas. Aliquam nec'),(38,38,38,4,5,'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed','ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros'),(39,39,39,4,4,'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis','dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum'),(40,40,40,4,5,'velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,','Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.'),(41,41,41,5,3,'in','Vivamus non lorem vitae odio sagittis semper. Nam tempor'),(42,42,42,3,3,'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor','Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat'),(43,43,43,2,1,'convallis','elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis.'),(44,44,44,5,5,'ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.','diam nunc, ullamcorper eu, euismod ac,'),(45,45,45,2,1,'Donec feugiat metus sit amet ante. Vivamus non lorem vitae','ut lacus. Nulla tincidunt,'),(46,46,46,5,3,'quis','lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit'),(47,47,47,1,1,'lacus. Mauris non dui nec urna suscipit nonummy. Fusce','Class'),(48,48,48,5,1,'tellus id','suscipit, est ac facilisis facilisis, magna tellus faucibus leo,'),(49,49,49,2,3,'sit amet ornare lectus','vestibulum. Mauris magna. Duis'),(50,50,50,2,5,'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu','metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet'),(51,51,51,2,5,'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis','lorem eu metus. In lorem. Donec elementum, lorem'),(52,52,52,1,2,'ut aliquam iaculis, lacus pede sagittis augue, eu tempor','dolor sit amet, consectetuer'),(53,53,53,2,1,'non massa non ante bibendum ullamcorper.','amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec'),(54,54,54,1,2,'in aliquet lobortis, nisi nibh lacinia','justo nec ante. Maecenas mi felis, adipiscing'),(55,55,55,2,5,'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis','sem molestie'),(56,56,56,1,5,'purus mauris a','convallis, ante lectus convallis est, vitae'),(57,57,57,1,3,'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam','a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam'),(58,58,58,4,4,'ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.','at sem molestie sodales.'),(59,59,59,2,1,'morbi tristique','Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.'),(60,60,60,3,3,'Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui.','placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris'),(61,61,61,1,3,'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis','Mauris'),(62,62,62,4,1,'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare','et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero'),(63,63,63,5,1,'sed leo. Cras vehicula aliquet libero.','tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.'),(64,64,64,3,3,'vitae sodales nisi magna sed dui.','odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa.'),(65,65,65,4,3,'rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh','tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id,'),(66,66,66,5,3,'lorem, auctor quis, tristique ac, eleifend vitae, erat.','laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui'),(67,67,67,1,1,'Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per','in consequat enim diam vel arcu.'),(68,68,68,5,2,'aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam','sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat.'),(69,69,69,4,2,'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.'),(70,70,70,2,5,'ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec','felis.'),(71,71,71,2,1,'eros. Nam consequat dolor vitae','lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna.'),(72,72,72,2,3,'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed','Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.'),(73,73,73,2,2,'mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi','semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.'),(74,74,74,5,4,'montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula','convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.'),(75,75,75,5,1,'Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at','sit amet, risus. Donec nibh enim, gravida sit'),(76,76,76,4,1,'mus. Proin vel arcu eu odio','fringilla'),(77,77,77,5,2,'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc','a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui.'),(78,78,78,2,3,'Sed malesuada augue ut','molestie arcu. Sed eu nibh'),(79,79,79,2,2,'Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies','rutrum,'),(80,80,80,1,4,'dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet,','odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,'),(81,81,81,2,3,'Etiam','aliquet, metus urna'),(82,82,82,1,3,'vestibulum nec, euismod in,','bibendum ullamcorper. Duis cursus, diam at'),(83,83,83,4,4,'semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.','placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class'),(84,84,84,2,2,'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed','semper, dui lectus rutrum urna, nec luctus felis purus ac tellus.'),(85,85,85,5,2,'lorem, auctor quis, tristique ac, eleifend vitae,','sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet'),(86,86,86,4,5,'Aliquam gravida mauris ut mi. Duis risus odio, auctor','nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque'),(87,87,87,1,1,'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.','luctus et ultrices'),(88,88,88,2,2,'Sed et libero. Proin mi. Aliquam gravida','Nulla facilisi. Sed'),(89,89,89,3,3,'erat','libero'),(90,90,90,3,5,'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris','luctus et ultrices posuere'),(91,91,91,5,5,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu','nisi magna sed dui. Fusce aliquam,'),(92,92,92,1,2,'ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero','est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam'),(93,93,93,1,1,'lacus.','vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque'),(94,94,94,1,4,'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor','Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,'),(95,95,95,3,4,'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl','hymenaeos.'),(96,96,96,2,4,'a, dui. Cras pellentesque. Sed dictum.','cubilia Curae; Donec tincidunt. Donec vitae erat vel pede'),(97,97,97,2,5,'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce','sagittis. Duis'),(98,98,98,1,3,'dignissim lacus.','dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient'),(99,99,99,3,5,'ante. Vivamus non lorem vitae odio sagittis semper. Nam','lorem eu metus. In lorem. Donec'),(100,100,100,3,3,'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam','iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(75) DEFAULT NULL,
  `restaurant_name` varchar(75) DEFAULT NULL,
  `schedule` varchar(75) DEFAULT NULL,
  `website` varchar(75) DEFAULT NULL,
  `restaurant_rating` int DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Campus_Eats_Fall2020'
--

--
-- Final view structure for view `person_join`
--

/*!50001 DROP VIEW IF EXISTS `person_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_join` AS select 1 AS `person_id`,1 AS `person_name`,1 AS `person_email`,1 AS `student_id`,1 AS `graduation_year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_student`
--

/*!50001 DROP VIEW IF EXISTS `person_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_student` AS select 1 AS `person_id`,1 AS `person_name`,1 AS `person_email`,1 AS `cell` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 17:58:05
