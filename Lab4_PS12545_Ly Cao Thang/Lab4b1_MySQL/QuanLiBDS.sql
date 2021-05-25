-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: QLBATDONGSANThang
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
-- Table structure for table `BATDONGSAN`
--

DROP TABLE IF EXISTS `BATDONGSAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BATDONGSAN` (
  `MaBDS` int NOT NULL,
  `DiaChi` varchar(45) DEFAULT NULL,
  `MaVP` int NOT NULL,
  `MaCSH` int NOT NULL,
  PRIMARY KEY (`MaBDS`),
  KEY `fk_BATDONGSAN_VANPHONG` (`MaVP`),
  KEY `fk_BDS_CSH` (`MaCSH`),
  CONSTRAINT `fk_BATDONGSAN_VANPHONG` FOREIGN KEY (`MaVP`) REFERENCES `VANPHONG` (`MaVP`),
  CONSTRAINT `fk_BDS_CSH` FOREIGN KEY (`MaCSH`) REFERENCES `CHUSOHUU` (`MaCSH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BATDONGSAN`
--

LOCK TABLES `BATDONGSAN` WRITE;
/*!40000 ALTER TABLE `BATDONGSAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `BATDONGSAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHUSOHUU`
--

DROP TABLE IF EXISTS `CHUSOHUU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHUSOHUU` (
  `MaCSH` int NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `DiaChi` varchar(45) DEFAULT NULL,
  `SoDT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaCSH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHUSOHUU`
--

LOCK TABLES `CHUSOHUU` WRITE;
/*!40000 ALTER TABLE `CHUSOHUU` DISABLE KEYS */;
INSERT INTO `CHUSOHUU` VALUES (111,'TranNgocDuy','621.ThuDuc','097863526'),(222,'HaTuanAnh','ChoDauMoi','012345678'),(777,'LyCaoThang','2a3.to7','0934135394'),(888,'UngHoangPhuc','5b1.SaiGon','01236987'),(999,'HaLanAnh','CauGiay.HaNoi','098765432');
/*!40000 ALTER TABLE `CHUSOHUU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHANTHAN`
--

DROP TABLE IF EXISTS `NHANTHAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHANTHAN` (
  `MaNT` int NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `MoiQuanHe` varchar(255) DEFAULT NULL,
  `MaNV` int NOT NULL,
  PRIMARY KEY (`MaNT`),
  KEY `fk_NHANTHAN_NHANVIEN` (`MaNV`),
  CONSTRAINT `fk_NHANTHAN_NHANVIEN` FOREIGN KEY (`MaNV`) REFERENCES `NHANVIEN` (`MaNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHANTHAN`
--

LOCK TABLES `NHANTHAN` WRITE;
/*!40000 ALTER TABLE `NHANTHAN` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHANTHAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NHANVIEN`
--

DROP TABLE IF EXISTS `NHANVIEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NHANVIEN` (
  `MaNV` int NOT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `SoDT` int DEFAULT NULL,
  `MaVP` int NOT NULL,
  PRIMARY KEY (`MaNV`),
  KEY `fk_NHANVIEN_VANPHONG` (`MaVP`),
  CONSTRAINT `fk_NHANVIEN_VANPHONG` FOREIGN KEY (`MaVP`) REFERENCES `VANPHONG` (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NHANVIEN`
--

LOCK TABLES `NHANVIEN` WRITE;
/*!40000 ALTER TABLE `NHANVIEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `NHANVIEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUANLY`
--

DROP TABLE IF EXISTS `QUANLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QUANLY` (
  `ID` int NOT NULL,
  `MaVP` int NOT NULL,
  `MaNV` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_QUANLY_VANPHONG` (`MaVP`),
  KEY `fk_QUANLY_NHANVIEN` (`MaNV`),
  CONSTRAINT `fk_QUANLY_NHANVIEN` FOREIGN KEY (`MaNV`) REFERENCES `NHANVIEN` (`MaNV`),
  CONSTRAINT `fk_QUANLY_VANPHONG` FOREIGN KEY (`MaVP`) REFERENCES `VANPHONG` (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUANLY`
--

LOCK TABLES `QUANLY` WRITE;
/*!40000 ALTER TABLE `QUANLY` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUANLY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VANPHONG`
--

DROP TABLE IF EXISTS `VANPHONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VANPHONG` (
  `MaVP` int NOT NULL,
  `DiaDiem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaVP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VANPHONG`
--

LOCK TABLES `VANPHONG` WRITE;
/*!40000 ALTER TABLE `VANPHONG` DISABLE KEYS */;
INSERT INTO `VANPHONG` VALUES (123,'TPHCM'),(321,'HANOI'),(456,'TPHCM'),(654,'TPHCM'),(789,'HANOI');
/*!40000 ALTER TABLE `VANPHONG` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-04 16:09:27
