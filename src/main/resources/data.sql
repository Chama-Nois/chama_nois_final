-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: chama_nois
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `empresa_produto`
--

DROP TABLE IF EXISTS `empresa_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa_produto` (
  `id_produto` bigint(20) NOT NULL,
  `id_empresa` bigint(20) NOT NULL,
  PRIMARY KEY (`id_produto`,`id_empresa`),
  KEY `FKhajgj7illh79l60t32ei43aly` (`id_empresa`),
  CONSTRAINT `FK9xawa4egff45ho4ga0cj4o97s` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  CONSTRAINT `FKhajgj7illh79l60t32ei43aly` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_produto`
--

LOCK TABLES `empresa_produto` WRITE;
/*!40000 ALTER TABLE `empresa_produto` DISABLE KEYS */;
INSERT INTO `empresa_produto` VALUES (1,1),(2,4),(3,6),(4,7),(5,5),(6,10);
/*!40000 ALTER TABLE `empresa_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id_empresa` bigint(20) NOT NULL AUTO_INCREMENT,
  `cnpj_empresa` varchar(255) DEFAULT NULL,
  `endereco_empresa` varchar(255) DEFAULT NULL,
  `nome_empresa` varchar(255) DEFAULT NULL,
  `telefone_empresa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'12345678901234','Rua Criatividade, 1, Bairro Imaginário, RJ','InovaSoft','21987654321'),(2,'23456789012345','Avenida dos Avanços, 2, Bairro da Inovação, RJ','TecnoGadgets','21345678901'),(3,'34567890123456','Travessa do Sustentável, 3, Bairro Verdejante, RJ','EcoSoluções','21789012345'),(4,'45678901234567','Praça das Tendências, 4, Bairro da Moda, RJ','ModaFutura','21901234567'),(5,'56789012345678','Alameda da Saúde, 5, Bairro Vital, RJ','SaúdeBio','21567890123'),(6,'67890123456789','Estrada da Inovação, 6, Bairro dos Desenvolvedores, RJ','CódigosArtes','21890123456'),(7,'78901234567890','Avenida dos Sabores, 7, Bairro Gastronômico, RJ','DelíciasGourmet','21456789012'),(8,'89012345678901','Rua da Exploração, 8, Bairro Natural, RJ','MaravilhasNatureza','21234567890'),(9,'90123456789012','Travessa das Alturas, 9, Bairro Tecnológico, RJ','TecnologiaNasAlturas','21901234567'),(10,'01234567890123','Praça das Artes, 10, Bairro Criativo, RJ','ArtesanatoArte','21789012345');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` bigint(20) NOT NULL AUTO_INCREMENT,
  `avaliacao_produto` int(11) NOT NULL,
  `descricao_produto` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `nome_produto` varchar(255) DEFAULT NULL,
  `valor_produto` double NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,8,'Produto de alta qualidade para suas necessidades tecnológicas.','https://m.media-amazon.com/images/I/61nfZWK4oqL._AC_UL320_.jpg','Notebook TechMaster',2599.99),(2,7,'Roupas modernas e confortáveis para acompanhar as tendências.','https://m.media-amazon.com/images/I/319zawzK-6L._AC_UL320_.jpg','Conjunto FashionStyle',129.99),(3,9,'Gadget inovador para facilitar o seu dia a dia e aumentar sua produtividade.','https://m.media-amazon.com/images/I/71s7fVYV1kL._AC_UL320_.jpg','Smartwatch ConnectX',299.99),(4,6,'Alimento gourmet para os paladares mais exigentes.','https://m.media-amazon.com/images/I/919m-XAO+RL._AC_UL320_.jpg','Cesta Gourmet Delight',89.99),(5,10,'Produtos naturais para cuidar da sua saúde e bem-estar.','https://m.media-amazon.com/images/I/61T3fPaP83L._AC_UL320_.jpg','Kit Saúde Natural',149.99),(6,8,'Obra de arte única, feita à mão por artesãos talentosos.','https://m.media-amazon.com/images/I/51PEEtd9AyL._AC_UL320_.jpg','Escultura Artesanal',199.99);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id_role` bigint(20) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_COMUM'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_produto`
--

DROP TABLE IF EXISTS `usuario_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_produto` (
  `id_produto` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id_produto`,`id_usuario`),
  KEY `FK9sf31op6qp33nudxcarn9bype` (`id_usuario`),
  CONSTRAINT `FK9sf31op6qp33nudxcarn9bype` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `FKtiksjl2d7rrxilrcweoarllq0` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_produto`
--

LOCK TABLES `usuario_produto` WRITE;
/*!40000 ALTER TABLE `usuario_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_role`
--

DROP TABLE IF EXISTS `usuario_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_role` (
  `id_usuario` bigint(20) NOT NULL,
  `id_role` bigint(20) NOT NULL,
  KEY `FKk4syxwi0pg7sxaxyr9pej4t4a` (`id_role`),
  KEY `FKp0bm461de0nu18iak5sygtts5` (`id_usuario`),
  CONSTRAINT `FKk4syxwi0pg7sxaxyr9pej4t4a` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  CONSTRAINT `FKp0bm461de0nu18iak5sygtts5` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_role`
--

LOCK TABLES `usuario_role` WRITE;
/*!40000 ALTER TABLE `usuario_role` DISABLE KEYS */;
INSERT INTO `usuario_role` VALUES (1,2),(2,1);
/*!40000 ALTER TABLE `usuario_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf_usuario` varchar(255) DEFAULT NULL,
  `email_usuario` varchar(255) DEFAULT NULL,
  `endereco_usuario` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `senha_usuario` varchar(255) DEFAULT NULL,
  `telefone_usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'98765432109','admin@chamanois.com','123, Rua Imaginária, Bairro Fictício, RJ','admin','$2y$10$8F64f1ZBZSL4nOygLqkhxutUBMgaXn.t7PeQwsfy0gWE5FQ7wvEwG','21993614814'),(2,'12345678909','marcos@mail.com','456, Avenida dos Sonhos, Bairro dos Ilusões, RJ','Marcos','$2y$10$9BYLWbJKGB3vE8nGIKT04.hn0gkWC6Yuz2XKJ4j3/5N1SuirKtYW2','21987654321');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28 14:58:53
