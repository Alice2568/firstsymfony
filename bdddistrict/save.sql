/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: The_district
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES
(1,'Antipastis'),
(2,'Pizza'),
(3,'Pasta'),
(4,'Risotto'),
(5,'Dessert'),
(6,'Boisson');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `date_commande` datetime DEFAULT current_timestamp(),
  `statut` varchar(50) DEFAULT 'en attente',
  PRIMARY KEY (`id`),
  KEY `utilisateur_id` (`utilisateur_id`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `date_envoi` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligne_commande`
--

DROP TABLE IF EXISTS `ligne_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ligne_commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_id` int(11) NOT NULL,
  `plat_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `commande_id` (`commande_id`),
  KEY `plat_id` (`plat_id`),
  CONSTRAINT `ligne_commande_ibfk_1` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ligne_commande_ibfk_2` FOREIGN KEY (`plat_id`) REFERENCES `plat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligne_commande`
--

LOCK TABLES `ligne_commande` WRITE;
/*!40000 ALTER TABLE `ligne_commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `ligne_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plat`
--

DROP TABLE IF EXISTS `plat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `plat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `prix` decimal(6,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `categorie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categorie_id` (`categorie_id`),
  CONSTRAINT `plat_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plat`
--

LOCK TABLES `plat` WRITE;
/*!40000 ALTER TABLE `plat` DISABLE KEYS */;
INSERT INTO `plat` VALUES
(1,'Bruschetta','Pain grillé avec tomates, ail et basilic',6.50,'bruschetta.jpg',1,1),
(2,'Carpaccio de bœuf','Tranches fines de bœuf, parmesan et roquette',9.00,'carpaccio.jpg',1,1),
(3,'Antipasto misto','Assortiment de charcuterie et fromages italiens',12.00,'antipasto.jpg',1,1),
(4,'Mozzarella di Bufala','Mozzarella servie avec tomates cerises et basilic',8.00,'mozzarella.jpg',1,1),
(5,'Arancini','Boulettes de riz farcies, panées et frites',7.00,'arancini.jpg',1,1),
(6,'Frittata','Omelette italienne aux légumes',6.00,'frittata.jpg',1,1),
(7,'Salade Caprese','Tomate, mozzarella et basilic',7.50,'caprese.jpg',1,1),
(8,'Crostini Toscani','Petites tartines avec foie de volaille',6.50,'crostini.jpg',1,1),
(9,'Involtini di Melanzane','Aubergines roulées farcies',8.00,'involtini.jpg',1,1),
(10,'Olives marinées','Olives vertes et noires à l’huile d’olive',4.50,'olives.jpg',1,1),
(11,'Margherita','Tomate, mozzarella, basilic',9.00,'margherita.jpg',1,2),
(12,'Quattro Stagioni','Artichauts, champignons, jambon, olives',12.00,'4stagioni.jpg',1,2),
(13,'Diavola','Salami piquant, mozzarella, tomate',11.00,'diavola.jpg',1,2),
(14,'Capricciosa','Jambon, champignons, artichauts, œuf',12.50,'capricciosa.jpg',1,2),
(15,'Prosciutto e Funghi','Jambon et champignons',11.00,'prosciutto_funghi.jpg',1,2),
(16,'Quattro Formaggi','Mozzarella, gorgonzola, parmesan, provolone',12.00,'4formaggi.jpg',1,2),
(17,'Napolitaine','Anchois, câpres, olives noires',10.00,'napolitaine.jpg',1,2),
(18,'Calzone','Pizza repliée avec jambon et fromage',11.50,'calzone.jpg',1,2),
(19,'Pizza Truffe','Crème de truffe, champignons, mozzarella',14.00,'truffe.jpg',1,2),
(20,'Pizza Végétarienne','Légumes grillés, mozzarella',10.50,'vegetarienne.jpg',1,2),
(21,'Spaghetti Carbonara','Crème, œuf, pancetta, parmesan',11.00,'carbonara.jpg',1,3),
(22,'Tagliatelle al Ragù','Sauce bolognaise maison',12.00,'ragu.jpg',1,3),
(23,'Penne all’Arrabbiata','Sauce tomate épicée',10.00,'arrabbiata.jpg',1,3),
(24,'Lasagnes','Pâtes gratinées à la viande et béchamel',13.00,'lasagne.jpg',1,3),
(25,'Spaghetti alle Vongole','Palourdes, ail, persil',14.00,'vongole.jpg',1,3),
(26,'Tortellini alla panna','Tortellini à la crème et jambon',12.50,'tortellini.jpg',1,3),
(27,'Fusilli al Pesto','Sauce pesto maison et parmesan',11.00,'pesto.jpg',1,3),
(28,'Ravioli ricotta épinards','Servis avec beurre et sauge',13.00,'ravioli.jpg',1,3),
(29,'Gnocchi al Gorgonzola','Sauce gorgonzola et noix',12.50,'gnocchi.jpg',1,3),
(30,'Spaghetti à la puttanesca','Tomates, olives, câpres, anchois',11.50,'puttanesca.jpg',1,3),
(31,'Risotto alla Milanese','Safran, parmesan',12.00,'milanese.jpg',1,4),
(32,'Risotto aux champignons','Champignons, ail, persil',13.00,'champignons.jpg',1,4),
(33,'Risotto aux fruits de mer','Calamars, crevettes, moules',14.50,'mare.jpg',1,4),
(34,'Risotto au gorgonzola et noix','Crèmeux et fondant',13.50,'gorgonzola_noix.jpg',1,4),
(35,'Risotto aux asperges','Asperges vertes, parmesan',12.50,'asperges.jpg',1,4),
(36,'Risotto courgettes et menthe','Léger et rafraîchissant',12.00,'courgette.jpg',1,4),
(37,'Risotto au potiron','Crémeux au potiron',11.50,'potiron.jpg',1,4),
(38,'Risotto aux truffes','Crème de truffe, parmesan',15.00,'truffes.jpg',1,4),
(39,'Risotto aux artichauts','Fond d’artichaut et herbes',13.00,'artichaut.jpg',1,4),
(40,'Risotto citron et crevettes','Zeste de citron, crevettes grillées',14.00,'citron_crevettes.jpg',1,4),
(41,'Tiramisu','Dessert italien au café et mascarpone',6.00,'tiramisu.jpg',1,5),
(42,'Panna Cotta','Crème cuite vanillée et coulis de fruits rouges',5.50,'pannacotta.jpg',1,5),
(43,'Cannoli Siciliani','Pâtisserie fourrée à la ricotta',6.50,'cannoli.jpg',1,5),
(44,'Gelato','Glace italienne artisanale',5.00,'gelato.jpg',1,5),
(45,'Zabaione','Crème mousseuse au marsala',5.50,'zabaione.jpg',1,5),
(46,'Affogato al caffè','Glace vanille avec expresso chaud',5.00,'affogato.jpg',1,5),
(47,'Torta della Nonna','Tarte à la crème pâtissière et pignons',6.00,'nonna.jpg',1,5),
(48,'Semifreddo','Dessert glacé au chocolat',6.00,'semifreddo.jpg',1,5),
(49,'Granita Sicilienne','Glace pilée citron ou amande',4.50,'granita.jpg',1,5),
(50,'Tarte au citron meringuée','Version italienne maison',5.50,'citron.jpg',1,5),
(51,'Eau plate San Pellegrino','50cl',2.00,'eau.jpg',1,6),
(52,'Eau gazeuse Perrier','50cl',2.50,'perrier.jpg',1,6),
(53,'Coca-Cola','33cl',2.50,'coca.jpg',1,6),
(54,'Fanta orange','33cl',2.50,'fanta.jpg',1,6),
(55,'Thé glacé maison','Saveur citron ou pêche',3.00,'theglace.jpg',1,6),
(56,'Jus d’orange pressé','Frais',3.50,'jusorange.jpg',1,6),
(57,'Limoncello','Digestif italien',4.00,'limoncello.jpg',1,6),
(58,'Vin rouge Chianti','Verre 12cl',4.50,'chianti.jpg',1,6),
(59,'Vin blanc Pinot Grigio','Verre 12cl',4.50,'pinot.jpg',1,6),
(60,'Espresso','Café serré italien',2.00,'espresso.jpg',1,6);
/*!40000 ALTER TABLE `plat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` enum('client','admin','chef') NOT NULL DEFAULT 'client',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES
(1,'Admin Principal','admin@restaurant.com','admin_hashed_password','admin'),
(2,'Chef Mario','chef@restaurant.com','chef_hashed_password','chef');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-16 14:24:48
