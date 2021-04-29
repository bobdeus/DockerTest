USE `mysql`;
CREATE DATABASE IF NOT EXISTS `bob` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bob`;
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(16) NOT NULL,
  `super_admin` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by_id` int(11) NOT NULL,
  `updated_at` timestamp NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `disabled` timestamp NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `created_by_id` (`created_by_id`),
  KEY `updated_by_id` (`updated_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
