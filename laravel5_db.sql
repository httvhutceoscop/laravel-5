/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.5.5-10.1.13-MariaDB : Database - laravel5_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel5_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `laravel5_db`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `articles` */

insert  into `articles`(`id`,`name`,`author`,`created_at`,`updated_at`) values (2,'Hieu','aaaaaaaaaaaaaaaaaaaaaaaaaaa','2016-10-10 04:00:35','2016-10-10 07:40:18'),(3,'Minh','Toi Lam IT','2016-10-10 04:44:02','2016-10-10 04:44:02'),(4,'Tuan Anh','Kungfu','2016-10-10 04:44:48','2016-10-10 04:44:48'),(5,'Chinh','Chu Manh','2016-10-10 00:00:00','2016-10-10 04:53:35'),(6,'Bac','Kieu Phong','2016-10-10 04:56:04','2016-10-10 04:56:04'),(7,'Xuan','Lan','2016-10-10 06:39:13','2016-10-10 06:39:13'),(8,'','','2016-10-10 06:40:54','2016-10-10 06:40:54'),(9,'','','2016-10-10 06:41:18','2016-10-10 06:41:18'),(10,'BDF','DFS','2016-10-10 06:44:07','2016-10-10 06:44:07');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_10_10_033134_create_articles_table',2);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values ('tienvietnguyen1110@gmail.com','72a8bf500da6eabebecdec55efd429e960ea03f0b5363351bbe2bcd96406fe3f','2016-10-10 08:40:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'Viet','tienvietnguyen1110@gmail.com','11111',NULL,NULL,NULL),(2,'Viet','tiet@gmail.com','$2y$10$s8OmuNF5aaa7fd8UCKQQ4.ok.MJ76ZvSpzTeW4eKZKniulU9vWcKC','mlinzPrpk264fuA9UrgDS8qaHdmKKCuiyW12un9RqQArZ02AamcUISOJ4C2T','2016-10-10 08:38:54','2016-10-10 08:40:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
