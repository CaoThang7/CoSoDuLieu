-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlibatdongsan
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `batdongsan`
--

DROP TABLE IF EXISTS `batdongsan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batdongsan` (
  `MaBDS` int NOT NULL,
  `DiaChi` varchar(45) DEFAULT NULL,
  `MaVP` int DEFAULT NULL,
  `MaCSH` int DEFAULT NULL,
  PRIMARY KEY (`MaBDS`),
  KEY `fk_BDS_VP_idx` (`MaVP`),
  KEY `fk_BDS_CSH_idx` (`MaCSH`),
  CONSTRAINT `fk_BDS_CSH` FOREIGN KEY (`MaCSH`) REFERENCES `chusohuu` (`MaCSH`),
  CONSTRAINT `fk_BDS_VP` FOREIGN KEY (`MaVP`) REFERENCES `vanphong` (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batdongsan`
--

LOCK TABLES `batdongsan` WRITE;
/*!40000 ALTER TABLE `batdongsan` DISABLE KEYS */;
INSERT INTO `batdongsan` VALUES (10,'LinhTay',123,111),(20,'LinhDong',321,222),(30,'LinhChieu',456,777),(40,'ThuDuc',654,888),(50,'HaGiang',789,999);
/*!40000 ALTER TABLE `batdongsan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chusohuu`
--

DROP TABLE IF EXISTS `chusohuu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chusohuu` (
  `MaCSH` int NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `DiaChi` varchar(45) DEFAULT NULL,
  `SoDT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaCSH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chusohuu`
--

LOCK TABLES `chusohuu` WRITE;
/*!40000 ALTER TABLE `chusohuu` DISABLE KEYS */;
INSERT INTO `chusohuu` VALUES (111,'TranNgocDuy','621.ThuDuc','097863526'),(222,'HaTuanAnh','ChoDauMoi','012345678'),(777,'LyCaoThang','2a3.to7','0934135394'),(888,'UngHoangPhuc','5b1.SaiGon','01236987'),(999,'HaLanAnh','CauGiay.HaNoi','098765432');
/*!40000 ALTER TABLE `chusohuu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanthan`
--

DROP TABLE IF EXISTS `nhanthan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanthan` (
  `MaNT` int NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `MoiQuanHe` varchar(255) DEFAULT NULL,
  `MaNV` int DEFAULT NULL,
  PRIMARY KEY (`MaNT`),
  KEY `fk_nt_nv_idx` (`MaNV`),
  CONSTRAINT `fk_nt_nv` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanthan`
--

LOCK TABLES `nhanthan` WRITE;
/*!40000 ALTER TABLE `nhanthan` DISABLE KEYS */;
INSERT INTO `nhanthan` VALUES (454,'LyPhucTung','2001-02-03','cha',5555),(545,'LyThiHuyen','1998-05-07','me',6666),(676,'TranThiThu','1989-06-04','bac',7777),(767,'LyGiaKiet','2008-07-06','di',8888),(889,'TranHaoNam','2010-08-09','duong',9999);
/*!40000 ALTER TABLE `nhanthan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `SoDT` int DEFAULT NULL,
  `MaVP` int DEFAULT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `fk_nv_ql_idx` (`MaVP`,`MaNV`),
  CONSTRAINT `fk_nv_vp` FOREIGN KEY (`MaVP`) REFERENCES `vanphong` (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (5555,'LyThang','thang@gmail.com',934135394,123),(6666,'LyBang','bang@gmail.com',1236789,321),(7777,'LyUyenNgan','Ngan@gmail.com',987654321,456),(8888,'NgocNhi','nhi@gmail.com',9898987,654),(9999,'ThuHang','hang@gmail.com',123456789,789);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quanli`
--

DROP TABLE IF EXISTS `quanli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quanli` (
  `ID` int NOT NULL,
  `MaVP` int DEFAULT NULL,
  `MaNV` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ql_nv_idx` (`MaNV`),
  KEY `fk_ql_vp_idx` (`MaVP`),
  CONSTRAINT `fk_ql_nv` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  CONSTRAINT `fk_ql_vp` FOREIGN KEY (`MaVP`) REFERENCES `vanphong` (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quanli`
--

LOCK TABLES `quanli` WRITE;
/*!40000 ALTER TABLE `quanli` DISABLE KEYS */;
INSERT INTO `quanli` VALUES (1,123,5555),(5,321,6666),(6,456,7777),(7,654,8888),(8,789,9999);
/*!40000 ALTER TABLE `quanli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vanphong`
--

DROP TABLE IF EXISTS `vanphong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vanphong` (
  `MaVP` int NOT NULL,
  `DiaDiem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vanphong`
--

LOCK TABLES `vanphong` WRITE;
/*!40000 ALTER TABLE `vanphong` DISABLE KEYS */;
INSERT INTO `vanphong` VALUES (123,'TPHCM'),(321,'HANOI'),(456,'TPHCM'),(654,'TPHCM'),(789,'HANOI');
/*!40000 ALTER TABLE `vanphong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-28 15:56:28
