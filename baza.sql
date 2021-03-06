/*
MySQL Backup
Source Server Version: 5.6.26
Source Database: test
Date: 16.08.2015 15:39:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `age` int(10) unsigned NOT NULL DEFAULT '0',
  `isAdmin` bit(1) NOT NULL DEFAULT b'0',
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `employees`
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `teams`
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `rating` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `isAdmin` bit(1) NOT NULL DEFAULT b'0',
  `createdDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `employee` VALUES ('52','Иван Иванович','27','\0','2015-08-11 21:47:48'), ('53','Сергей Паршутин','22','','2015-08-11 21:48:03'), ('54','hubert farnsworth','33','','2015-08-11 21:48:55'), ('55','Денисенко Артур','41','','2015-08-11 21:49:11'), ('56','Василий Алибабаевичz','0','','2015-08-11 21:49:25'), ('57','Джон Д','54','\0','2015-08-11 21:49:36'), ('58','Иван Анатольевич','23','\0','2015-08-11 21:50:11'), ('59','Антонио Бандерас','20','\0','2015-08-11 21:50:35'), ('60','Фрай','245','\0','2015-08-11 21:50:49'), ('61','Александр Кабанов.','28','','2015-08-11 21:51:17'), ('62','Мой Совсем не Друг','11','\0','2015-08-11 21:51:31'), ('63','hubert farnsworth 2','33','\0','2015-08-11 21:51:37'), ('64','Александр Кабанов. 333','28','\0','2015-08-11 21:51:41'), ('65','Молодой человек','32','\0','2015-08-11 21:52:27'), ('67','Билл Клинтон','22','\0','2015-08-11 21:52:49'), ('68','Кэти Сьерра','33','','2015-08-11 21:53:19'), ('69','Кэти','33','','2015-08-11 21:58:37'), ('70','123','44','','2015-08-11 23:02:59'), ('71','Берт Бейтс','45','','2015-08-13 21:43:19'), ('72','Иван Петрович','29','\0','2015-08-13 21:44:06'), ('73','asdfasdf','0','\0','2015-08-14 00:02:31'), ('74','Максим Богданович','41','','2015-08-16 00:24:59'), ('75','Дон Кихот','44','','2015-08-16 13:59:14'), ('76','Геннадий Ветров','21','\0','2015-08-16 13:59:19'), ('77','афывафыва','0','\0','2015-08-16 13:59:23'), ('78','Петров Сидор','32','\0','2015-08-16 13:59:28'), ('79','афывафыв','0','\0','2015-08-16 13:59:33'), ('80','афывафяяя','0','\0','2015-08-16 13:59:37'), ('81','ффвыафыв','0','\0','2015-08-16 13:59:43'), ('82','афывафывафыв','0','\0','2015-08-16 13:59:47'), ('83','Федор Емельяненко','20','\0','2015-08-16 13:59:53');
