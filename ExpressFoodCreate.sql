
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS ExpressFood;
USE ExpressFood;


-- Table adresses
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id`      INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number`  INT(11)          NOT NULL,
  `street`  VARCHAR(38)      NOT NULL,
  `city`    VARCHAR(32)      NOT NULL,
  `zipcode` VARCHAR(5)       NOT NULL,
  PRIMARY KEY (`id`)
);

-- Table users
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role`ENUM('clients', 'manager') DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);


-- Table orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL,
  `address_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `end_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `fk_address_id` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Table products
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(10) unsigned NOT NULL,
  `quantity` int(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `production_date` datetime DEFAULT NULL,
  `availability_date` datetime DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`),
  CONSTRAINT `fk_products_orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Table delivery_men
DROP TABLE IF EXISTS `delivery_men`;
CREATE TABLE `delivery_men` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(10,8) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Table deliveries
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(10) unsigned NOT NULL,
  `delivery_men_id` int(10) unsigned NOT NULL,
  `status` enum('delivery','in_delivery','problem') DEFAULT NULL,
  `date_of_assumption` datetime DEFAULT NULL,
  `date_of_delivery` datetime DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `lng` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`),
  KEY `delivery_men_id` (`delivery_men_id`),
  CONSTRAINT `fk_deliveries_orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_delivery_men_id` FOREIGN KEY (`delivery_men_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


-- Table stocks
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_men_id` int(10) unsigned DEFAULT NULL,
  `users_id` int(10) unsigned DEFAULT NULL,
  `owners` ENUM('clients', 'delivery_men') DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL,
  `meal1` varchar(255) DEFAULT NULL,
  `dessert1` varchar(255) DEFAULT NULL,
  `meal2` varchar(255) DEFAULT NULL,
  `dessert2` varchar(255) DEFAULT NULL,
  `date_of_storage` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_man_id` (`delivery_men_id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `fk_stocks_delivery_man_id` FOREIGN KEY (`delivery_men_id`) REFERENCES `delivery_men` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_stocks_users_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
