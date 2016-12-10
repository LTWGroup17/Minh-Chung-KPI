-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ltw_kpi
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `minhchung`
--

DROP TABLE IF EXISTS `minhchung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minhchung` (
  `idmucmc` int(11) NOT NULL AUTO_INCREMENT,
  `tenmucmc` varchar(45) DEFAULT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `idroot` int(11) DEFAULT NULL,
  `nguoitao` int(11) DEFAULT NULL,
  `nguoiduocgiao` int(11) DEFAULT NULL,
  `duongdan` varchar(45) DEFAULT NULL,
  `trangthai` varchar(45) DEFAULT NULL,
  `ngayhoanthanh` date DEFAULT NULL,
  `ngaynhap` date DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`idmucmc`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minhchung`
--

LOCK TABLES `minhchung` WRITE;
/*!40000 ALTER TABLE `minhchung` DISABLE KEYS */;
INSERT INTO `minhchung` VALUES (1,'Hoạt động giảng dạy',NULL,0,44,NULL,NULL,'',NULL,NULL,NULL),(2,'Hoạt động ngoài giảng dạy',NULL,0,44,NULL,NULL,'',NULL,NULL,NULL),(5,'Dạy đủ số giờ','Giảng viên dạy đủ số giờ theo quy định',1,NULL,2022,NULL,'Hoàn thành','2016-12-16',NULL,NULL),(6,'Dạy đủ số tiết','Nhập ngay',1,NULL,2022,NULL,'Đã giao','2016-12-16',NULL,NULL),(7,'Hoạt động công tác xã hội','sdfghjkl',2,NULL,2032,NULL,'Hoàn thành','2016-12-12',NULL,NULL),(8,'Hội thảo giáo dục','Hội thảo về giáo dục',2,NULL,22,NULL,'Hoàn thành','2016-12-18',NULL,NULL),(9,'Tham gia hội thao CNVC',NULL,2,NULL,NULL,NULL,'Hoàn thành',NULL,NULL,NULL),(10,'Tham gia diễn đàn thảo luận','asdfghjk;lkjhgfdsaasdfghjkjhsaasđfg',2,NULL,2032,NULL,'Hoàn thành','2016-12-17',NULL,NULL),(11,'abc','asdfg',1,NULL,2022,NULL,'Đã giao','2016-12-17',NULL,NULL),(12,'bcd','gjhjhjjhj',1,NULL,2032,NULL,'Hoàn thành','2016-12-17',NULL,NULL);
/*!40000 ALTER TABLE `minhchung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mucminhchung`
--

DROP TABLE IF EXISTS `mucminhchung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mucminhchung` (
  `idmucmc` int(11) NOT NULL,
  `tenmucmc` varchar(45) NOT NULL,
  `mota` varchar(45) DEFAULT NULL,
  `nguoitao` int(11) DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `idroot` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmucmc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mucminhchung`
--

LOCK TABLES `mucminhchung` WRITE;
/*!40000 ALTER TABLE `mucminhchung` DISABLE KEYS */;
INSERT INTO `mucminhchung` VALUES (0,'Mục Minh Chứng',NULL,NULL,NULL,0),(1,'Hoạt động giảng dạy',NULL,NULL,NULL,1),(2,'Hoạt động ngoài giảng dạy',NULL,NULL,NULL,1),(3,'Minh Chứng 1',NULL,NULL,NULL,2),(4,'Minh chứng 2',NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `mucminhchung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phancong`
--

DROP TABLE IF EXISTS `phancong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phancong` (
  `idmucmc` int(11) NOT NULL,
  `nguoiduocgiao` int(11) DEFAULT NULL,
  `duongdan` varchar(45) DEFAULT NULL,
  `trangthai` varchar(45) DEFAULT NULL,
  `ngayhoanthanh` date DEFAULT NULL,
  `ngaynhap` date DEFAULT NULL,
  PRIMARY KEY (`idmucmc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phancong`
--

LOCK TABLES `phancong` WRITE;
/*!40000 ALTER TABLE `phancong` DISABLE KEYS */;
INSERT INTO `phancong` VALUES (1,5,'phancongxyz','fg','2016-11-20','2016-11-21');
/*!40000 ALTER TABLE `phancong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin'),(2,'Người nhập'),(3,'Người giao'),(4,'Người quy định'),(5,'Người kiểm tra');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `nsinh` varchar(45) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user`),
  KEY `role_idx` (`roleid`),
  CONSTRAINT `role` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13110033 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'123','Nguyễn Văn A','01202103','31/03/1995',1,'abc@gmail.com'),(22,'123','Trần Thị Thanh','012032103','12/10/1995',2,'bch@gmail.com'),(33,'123','Hoàng Hải','012301230','11/2/1993',3,'bitxhka@gmail.com'),(44,'123','Đỗ Hiền Hậu','012303002','21/1/1992',4,'asdkj@gmail.com'),(55,'123','Nguyễn Thanh Tra','0301205','4/1/1991',5,'mbkj@gmail.com'),(1201,'dinhdang','Đình Đặng','0968981323','20/11/1995',2,'dangmaidinh@gmail.com'),(1301,'dinhdang','Mai Đình','968981323','20/11/1995',3,'dangmaidinh@gmail.com'),(2022,'12345','Nguyễn Minh Hải','123456789','1/1/1965',2,'cvb@gmail.com'),(2032,'12345','Dinh Dang','0968981323','20/11/1995',2,'dangmaidinh@gmail.com'),(13110032,'dinhdang','Đặng Mai Đình','0968981323','20/11/1995',1,'dangmaidinh@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-10 19:04:42
