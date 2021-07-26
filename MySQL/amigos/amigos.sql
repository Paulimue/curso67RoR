
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: friends
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `friend_id_idx` (`friend_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendships`
--

LOCK TABLES `friendships` WRITE;
/*!40000 ALTER TABLE `friendships` DISABLE KEYS */;
INSERT INTO `friendships` VALUES (1,1,2,'2019-02-08 11:13:27',NULL),(2,1,3,'2019-02-08 11:14:03',NULL),(3,1,4,'2019-02-08 11:14:38',NULL),(4,2,4,'2019-02-08 11:15:11',NULL),(5,2,5,'2019-02-08 11:15:23',NULL),(6,5,3,'2019-02-08 11:16:02',NULL);
/*!40000 ALTER TABLE `friendships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Amy','Giver','2019-02-08 11:12:11',NULL),(2,'Eli','Byers','2019-02-08 11:12:11',NULL),(3,'Big','Bird','2019-02-08 11:12:11',NULL),(4,'Kermit','The Frog','2019-02-08 11:12:11',NULL),(5,'Marky','Mark','2019-02-08 11:12:11',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-08 11:20:17
select * from friendships;
select * from users;

select * from users
left join friendships on users.id = friendships.user_id
left join users as user2 on friendships.friend_id = users.id;

-- 1.Devuelva a todos los usuarios que son amigos de Kermit, asegúrese de 
-- que sus nombres se muestren en los resultados.
select users.first_name AS usuario_nom, users.last_name AS usuario_ape,
user2.first_name AS amigo_nom, user2.last_name AS amigo_ape
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE friendships.friend_id = 4;

-- 2.Devuelve el recuento de todas las amistades.
select users.first_name AS usuario_nom, users.last_name AS usuario_ape, user2.first_name AS amigo_nom,
user2.last_name AS amigo_ape
FROM users
JOIN friendships ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id;

-- 3.Descubre quién tiene más amigos y devuelve el recuento de sus amigos.
SELECT friendships.user_id, users.first_name, users.last_name,
COUNT(friendships.friend_id) AS total_amigos 
FROM users
JOIN friendships
ON users.id = friendships.user_id
GROUP BY friendships.user_id
ORDER BY users.first_name;

-- 4.Crea un nuevo usuario y hazlos amigos de Eli Byers, Kermit The Frog y Marky Mark.
INSERT INTO users (first_name, last_name, created_at)
VALUES ("Luis", "Hernandez", NOW());

INSERT INTO friendships (user_id, friend_id, created_at)
VALUES (6, 4, NOW());

SELECT * FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id;

-- 5.Devuelve a los amigos de Eli en orden alfabético.
SELECT user2.first_name, user2.last_name FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id
WHERE users.id = 2 
ORDER BY user2.first_name;

-- 6.Eliminar a Marky Mark de los amigos de Eli.
DELETE FROM friendships
WHERE user_id = 2 AND friend_id = 5;

-- 7.Devuelve todas las amistades, mostrando solo el nombre y apellido de ambos amigos.
SELECT users.first_name AS Nombre, users.last_name AS Apellido, user2.first_name AS Nombre_amigo, user2.last_name AS Apellido_amigo
FROM users
JOIN friendships
ON users.id = friendships.user_id
JOIN users AS user2
ON friendships.friend_id = user2.id;





