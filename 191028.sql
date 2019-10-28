/*
SQLyog Enterprise v12.5.0 (64 bit)
MySQL - 5.7.21-log : Database - laravel_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `admin_menu` */

DROP TABLE IF EXISTS `admin_menu`;

CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_menu` */

insert  into `admin_menu`(`id`,`parent_id`,`order`,`title`,`icon`,`uri`,`permission`,`created_at`,`updated_at`) values 
(1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),
(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),
(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),
(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),
(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),
(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),
(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL);

/*Table structure for table `admin_operation_log` */

DROP TABLE IF EXISTS `admin_operation_log`;

CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_operation_log` */

insert  into `admin_operation_log`(`id`,`user_id`,`path`,`method`,`ip`,`input`,`created_at`,`updated_at`) values 
(1,1,'admin','GET','172.17.0.1','[]','2019-10-25 09:28:08','2019-10-25 09:28:08'),
(2,1,'admin/auth/users','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-25 09:28:25','2019-10-25 09:28:25'),
(3,1,'admin/auth/menu','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-25 09:28:55','2019-10-25 09:28:55'),
(4,1,'admin','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-25 09:30:37','2019-10-25 09:30:37'),
(5,1,'admin/auth/login','GET','172.17.0.1','[]','2019-10-28 00:32:43','2019-10-28 00:32:43'),
(6,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:33:07','2019-10-28 00:33:07'),
(7,1,'admin/auth/users','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 00:35:56','2019-10-28 00:35:56'),
(8,1,'admin/auth/roles','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 00:37:39','2019-10-28 00:37:39'),
(9,1,'admin/auth/permissions','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 00:37:42','2019-10-28 00:37:42'),
(10,1,'admin/auth/users','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 00:39:53','2019-10-28 00:39:53'),
(11,1,'admin/auth/logout','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 00:41:48','2019-10-28 00:41:48'),
(12,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:43:36','2019-10-28 00:43:36'),
(13,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:46:30','2019-10-28 00:46:30'),
(14,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:46:37','2019-10-28 00:46:37'),
(15,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:47:16','2019-10-28 00:47:16'),
(16,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:52:38','2019-10-28 00:52:38'),
(17,1,'admin/auth/users','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 00:52:44','2019-10-28 00:52:44'),
(18,1,'admin','GET','172.17.0.1','[]','2019-10-28 00:55:39','2019-10-28 00:55:39'),
(19,1,'admin','GET','172.17.0.1','[]','2019-10-28 03:31:16','2019-10-28 03:31:16'),
(20,1,'admin','GET','172.17.0.1','[]','2019-10-28 03:31:28','2019-10-28 03:31:28'),
(21,1,'admin','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 03:31:43','2019-10-28 03:31:43'),
(22,1,'admin/auth/users','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 03:31:48','2019-10-28 03:31:48'),
(23,1,'admin/auth/roles','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 03:32:06','2019-10-28 03:32:06'),
(24,1,'admin/auth/permissions','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 03:32:13','2019-10-28 03:32:13'),
(25,1,'admin/auth/menu','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 03:32:23','2019-10-28 03:32:23'),
(26,1,'admin','GET','172.17.0.1','[]','2019-10-28 03:50:55','2019-10-28 03:50:55'),
(27,1,'admin/auth/logout','GET','172.17.0.1','{\"_pjax\":\"#pjax-container\"}','2019-10-28 03:51:07','2019-10-28 03:51:07'),
(28,1,'admin','GET','172.17.0.1','[]','2019-10-28 03:51:48','2019-10-28 03:51:48');

/*Table structure for table `admin_permissions` */

DROP TABLE IF EXISTS `admin_permissions`;

CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_permissions` */

insert  into `admin_permissions`(`id`,`name`,`slug`,`http_method`,`http_path`,`created_at`,`updated_at`) values 
(1,'All permission','*','','*',NULL,NULL),
(2,'Dashboard','dashboard','GET','/',NULL,NULL),
(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),
(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),
(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);

/*Table structure for table `admin_role_menu` */

DROP TABLE IF EXISTS `admin_role_menu`;

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_menu` */

insert  into `admin_role_menu`(`role_id`,`menu_id`,`created_at`,`updated_at`) values 
(1,2,NULL,NULL);

/*Table structure for table `admin_role_permissions` */

DROP TABLE IF EXISTS `admin_role_permissions`;

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_permissions` */

insert  into `admin_role_permissions`(`role_id`,`permission_id`,`created_at`,`updated_at`) values 
(1,1,NULL,NULL);

/*Table structure for table `admin_role_users` */

DROP TABLE IF EXISTS `admin_role_users`;

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_role_users` */

insert  into `admin_role_users`(`role_id`,`user_id`,`created_at`,`updated_at`) values 
(1,1,NULL,NULL);

/*Table structure for table `admin_roles` */

DROP TABLE IF EXISTS `admin_roles`;

CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_roles` */

insert  into `admin_roles`(`id`,`name`,`slug`,`created_at`,`updated_at`) values 
(1,'Administrator','administrator','2019-10-25 09:27:08','2019-10-25 09:27:08');

/*Table structure for table `admin_user_permissions` */

DROP TABLE IF EXISTS `admin_user_permissions`;

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_user_permissions` */

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`username`,`password`,`name`,`avatar`,`remember_token`,`created_at`,`updated_at`) values 
(1,'admin','$2y$10$ONXUG7/bU6g4Fm0AE78zdeMPCLLOMPhawxGMPuFOh16akdJpd.KRO','Administrator',NULL,'fYauHJuEGaaCMSR0USao0nb2ppfzKYBFxHN8QiNwCY6kRSP57GkHgpQAtpn1','2019-10-25 09:27:08','2019-10-25 09:27:08');

/*Table structure for table `canvas_posts` */

DROP TABLE IF EXISTS `canvas_posts`;

CREATE TABLE `canvas_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `published_at` datetime NOT NULL DEFAULT '2018-10-12 00:00:00',
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_posts_slug_unique` (`slug`),
  KEY `canvas_posts_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `canvas_posts` */

insert  into `canvas_posts`(`id`,`slug`,`title`,`summary`,`body`,`published_at`,`featured_image`,`featured_image_caption`,`user_id`,`meta`,`created_at`,`updated_at`,`deleted_at`) values 
('166d014a-13d2-473f-b3f2-50fc59ab0cdf','post-166d014a-13d2-473f-b3f2-50fc59ab0cdf','Repudiandae illo voluptatem','Delectus velit quibusdam illum voluptatem et ut quaerat pariatur.','Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at all,\' said the King. Here one of them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to rise like a snout than a pig, and she tried to speak, but for a baby: altogether Alice did not dare to disobey, though she looked up and.','2019-10-28 03:47:07','https://source.unsplash.com/random/640x480','Repudiandae illo voluptatem','1',NULL,'2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('315711ab-825c-4011-a3b4-d702a7ad81d4','post-315711ab-825c-4011-a3b4-d702a7ad81d4','Est libero cumque','Itaque nostrum sed ut debitis laborum ex aut.','The miserable Hatter dropped his teacup and bread-and-butter, and went down on the spot.\' This did not much surprised at her hands, wondering if anything would EVER happen in a coaxing tone, and everybody else. \'Leave off that!\' screamed the Gryphon. \'It\'s all her knowledge of history, Alice had no idea what Latitude was, or Longitude either, but thought they were playing the Queen furiously, throwing an inkstand at the flowers and those cool fountains, but she could see, when she found to be.','2019-10-28 03:47:07','https://source.unsplash.com/random/640x480','Est libero cumque','1',NULL,'2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('4fb97e7b-c628-4b15-8e58-49c1cff500ac','post-4fb97e7b-c628-4b15-8e58-49c1cff500ac','Et sapiente ipsa','Quos facere qui doloribus vitae et.','THE.','2019-10-28 03:47:07','https://source.unsplash.com/random/640x480','Et sapiente ipsa','1',NULL,'2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('699a774a-b597-4461-a3a2-92a3ef8402b6','post-699a774a-b597-4461-a3a2-92a3ef8402b6','Rerum et voluptatibus','Voluptas voluptas quia nulla sit laboriosam enim.','Alice crouched down among the bright flower-beds and the little golden key in the distance, and she tried to beat time when I was sent for.\' \'You ought to tell him. \'A nice muddle their slates\'ll be in Bill\'s place for a minute, trying to fix on one, the cook was busily stirring the soup, and seemed to be two people! Why, there\'s hardly room to grow to my right size: the next witness would be quite as safe to stay with it as she was surprised to see that queer little toss of her childhood: and.','2019-10-28 03:47:07','https://source.unsplash.com/random/640x480','Rerum et voluptatibus','1',NULL,'2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('7b6c3a67-fed0-41b2-b4ff-c82166c1c9bf','post-7b6c3a67-fed0-41b2-b4ff-c82166c1c9bf','Quis incidunt voluptas','Officiis eius est itaque repellat.','I do wonder what they\'ll do well enough; don\'t be nervous, or I\'ll have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it signifies much,\' she said this, she was peering about anxiously among the leaves, which she found her head made her look up in spite of all her fancy, that: he hasn\'t got no sorrow, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, as she couldn\'t answer either.','2019-10-28 03:47:07','https://source.unsplash.com/random/640x480','Quis incidunt voluptas','1',NULL,'2019-10-28 03:47:07','2019-10-28 03:47:07',NULL);

/*Table structure for table `canvas_posts_tags` */

DROP TABLE IF EXISTS `canvas_posts_tags`;

CREATE TABLE `canvas_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `canvas_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `canvas_posts_tags` */

insert  into `canvas_posts_tags`(`post_id`,`tag_id`) values 
('166d014a-13d2-473f-b3f2-50fc59ab0cdf','f01fe11e-82c6-4b34-a147-88874e8853c4'),
('315711ab-825c-4011-a3b4-d702a7ad81d4','605b5269-4dea-4d96-bdac-881e6ed9435d'),
('4fb97e7b-c628-4b15-8e58-49c1cff500ac','c1447166-4fba-4030-a1a6-d486930da78b'),
('4fb97e7b-c628-4b15-8e58-49c1cff500ac','d7087b38-f46f-4529-9479-890cafe003f1'),
('4fb97e7b-c628-4b15-8e58-49c1cff500ac','f01fe11e-82c6-4b34-a147-88874e8853c4'),
('699a774a-b597-4461-a3a2-92a3ef8402b6','f01fe11e-82c6-4b34-a147-88874e8853c4'),
('7b6c3a67-fed0-41b2-b4ff-c82166c1c9bf','86262728-dd2b-47d1-8b4b-abdb36614504');

/*Table structure for table `canvas_posts_topics` */

DROP TABLE IF EXISTS `canvas_posts_topics`;

CREATE TABLE `canvas_posts_topics` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `canvas_posts_topics_post_id_topic_id_unique` (`post_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `canvas_posts_topics` */

insert  into `canvas_posts_topics`(`post_id`,`topic_id`) values 
('166d014a-13d2-473f-b3f2-50fc59ab0cdf','c9924503-ec10-49d2-b0db-dc9c785d70be'),
('315711ab-825c-4011-a3b4-d702a7ad81d4','1ceac9f2-d105-4dce-ab30-46f0f534d7da'),
('4fb97e7b-c628-4b15-8e58-49c1cff500ac','2b241f7e-970f-41cc-bc12-94b112e4d936'),
('699a774a-b597-4461-a3a2-92a3ef8402b6','827675db-c329-42fb-a8ab-b6ab027ee4e9'),
('7b6c3a67-fed0-41b2-b4ff-c82166c1c9bf','084fcf53-2af5-458b-a5fc-1324a62fbce2');

/*Table structure for table `canvas_tags` */

DROP TABLE IF EXISTS `canvas_tags`;

CREATE TABLE `canvas_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_tags_slug_unique` (`slug`),
  KEY `canvas_tags_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `canvas_tags` */

insert  into `canvas_tags`(`id`,`slug`,`name`,`created_at`,`updated_at`,`deleted_at`) values 
('09f824dc-71dd-4fb9-ad03-bc878ba250d8','voluptatem-quis','Voluptatem quis','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('605b5269-4dea-4d96-bdac-881e6ed9435d','ipsam-aut','Ipsam aut','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('66889e6c-4e86-4e25-a810-f846da4f076e','tempora-voluptas','Tempora voluptas','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('86262728-dd2b-47d1-8b4b-abdb36614504','odit-occaecati','Odit occaecati','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('c1447166-4fba-4030-a1a6-d486930da78b','voluptas-provident','Voluptas provident','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('d36925a1-63b0-4f95-8250-8d7d88e199f4','perferendis-saepe','Perferendis saepe','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('d7087b38-f46f-4529-9479-890cafe003f1','et-vel','Et vel','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('f01fe11e-82c6-4b34-a147-88874e8853c4','est-doloribus','Est doloribus','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('f8d32884-44c8-49b5-8600-acedb43d48fb','totam-soluta','Totam soluta','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL);

/*Table structure for table `canvas_topics` */

DROP TABLE IF EXISTS `canvas_topics`;

CREATE TABLE `canvas_topics` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `canvas_topics_slug_unique` (`slug`),
  KEY `canvas_topics_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `canvas_topics` */

insert  into `canvas_topics`(`id`,`slug`,`name`,`created_at`,`updated_at`,`deleted_at`) values 
('084fcf53-2af5-458b-a5fc-1324a62fbce2','unde-fugit','Unde fugit','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('1ceac9f2-d105-4dce-ab30-46f0f534d7da','adipisci-nobis','Adipisci nobis','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('2b241f7e-970f-41cc-bc12-94b112e4d936','neque-ut','Neque ut','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('4e49e1a2-95d1-4026-bfca-1d91e315708e','aut-et','Aut et','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('827675db-c329-42fb-a8ab-b6ab027ee4e9','error-nemo','Error nemo','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('902c97de-3abb-4da7-a4b2-46e1d0de81b2','recusandae-non','Recusandae non','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('9428c73a-65e1-4c81-bdb1-3b7bf7be66a5','molestiae-et','Molestiae et','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('aa9c8ab7-2a9e-4bde-8376-8859565d93e3','neque-placeat','Neque placeat','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL),
('c9924503-ec10-49d2-b0db-dc9c785d70be','laudantium-maiores','Laudantium maiores','2019-10-28 03:47:07','2019-10-28 03:47:07',NULL);

/*Table structure for table `canvas_views` */

DROP TABLE IF EXISTS `canvas_views`;

CREATE TABLE `canvas_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `canvas_views` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2016_01_04_173148_create_admin_tables',2),
(5,'2018_10_12_000000_create_canvas_tables',3),
(6,'2019_02_16_000000_create_canvas_topics_tables',3),
(7,'2019_03_05_000000_add_indexes_to_canvas_views',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'test1','test1@g.cn',NULL,'$2y$10$1tmAzup9h/h4FS4hyNoMue/Na72wfyeCwRxH7GhG3t1mZlpQ34s5m',NULL,'2019-10-25 07:37:18','2019-10-25 07:37:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
