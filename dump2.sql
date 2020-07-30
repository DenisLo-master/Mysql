#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя поставившего лайк',
  `post_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на публикацию которой поставили лайк',
  `liked` tinyint(1) DEFAULT NULL COMMENT 'Статус лайка, поставлен или снят',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Лайки';

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (1, 11, 45, 1, '2018-08-31 07:13:03', '2016-06-26 00:37:51');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (2, 26, 81, 0, '2018-11-16 01:12:43', '2016-07-15 13:21:09');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (3, 94, 21, 0, '2012-01-16 17:53:29', '2016-10-02 06:59:41');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (4, 35, 17, 1, '2006-01-16 23:16:44', '2015-05-20 09:03:40');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (5, 84, 68, 1, '2011-03-29 15:30:25', '2011-09-18 11:45:47');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (6, 24, 59, 1, '2019-07-01 02:21:05', '2018-07-15 21:19:22');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (7, 65, 29, 1, '2009-11-25 15:45:19', '2020-06-12 06:45:14');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (8, 92, 14, 0, '2009-04-19 21:35:57', '2014-08-08 22:15:03');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (9, 39, 38, 1, '2011-04-03 08:12:32', '2012-12-10 16:32:34');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (10, 17, 8, 0, '2013-09-12 23:55:55', '2013-01-26 18:08:57');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (11, 27, 83, 1, '2013-02-04 18:16:03', '2010-10-17 12:11:00');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (12, 83, 11, 1, '2011-11-10 21:28:51', '2016-04-24 07:19:35');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (13, 61, 95, 0, '2013-09-07 08:06:24', '2018-06-22 23:28:15');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (14, 79, 98, 0, '2018-08-30 15:18:28', '2019-05-27 12:38:01');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (15, 95, 74, 0, '2007-12-27 03:54:06', '2013-10-02 14:23:43');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (16, 51, 49, 0, '2016-12-26 23:36:25', '2014-05-13 15:09:22');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (17, 22, 54, 0, '2009-12-20 07:25:48', '2013-11-05 04:01:00');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (18, 73, 90, 1, '2014-10-04 09:13:13', '2012-03-16 21:23:52');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (19, 50, 13, 1, '2006-10-28 06:06:17', '2015-01-22 23:19:44');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (20, 11, 45, 0, '2015-07-23 16:39:33', '2011-09-24 03:49:16');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (21, 46, 76, 0, '2006-06-19 18:15:08', '2020-04-26 09:13:15');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (22, 37, 19, 0, '2016-05-26 12:54:41', '2018-02-04 04:27:32');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (23, 35, 48, 1, '2012-02-17 12:15:39', '2011-08-02 23:54:57');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (24, 2, 24, 0, '2018-03-02 20:05:01', '2012-01-13 06:04:45');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (25, 68, 28, 1, '2015-10-13 13:37:02', '2020-03-13 00:40:36');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (26, 50, 52, 1, '2019-03-02 13:31:45', '2011-01-30 09:43:35');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (27, 40, 64, 1, '2008-10-01 16:59:13', '2013-12-18 15:39:55');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (28, 31, 72, 1, '2015-05-03 13:00:19', '2014-02-15 02:33:31');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (29, 41, 91, 0, '2014-11-27 13:41:14', '2011-10-17 14:13:18');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (30, 62, 3, 1, '2008-08-08 00:00:21', '2019-01-08 04:02:39');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (31, 36, 49, 0, '2016-12-12 02:47:15', '2013-08-01 17:37:21');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (32, 100, 88, 0, '2009-12-22 13:38:35', '2012-03-22 13:00:22');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (33, 10, 77, 1, '2016-06-27 22:20:42', '2019-12-01 19:09:21');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (34, 58, 74, 0, '2006-07-22 07:23:42', '2017-03-13 00:23:54');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (35, 88, 85, 1, '2019-04-16 20:43:40', '2012-06-11 02:09:15');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (36, 17, 71, 1, '2014-12-23 02:11:36', '2018-09-15 03:13:14');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (37, 21, 16, 1, '2011-12-09 18:39:53', '2012-10-30 10:31:30');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (38, 17, 71, 0, '2005-10-05 00:29:19', '2013-04-30 18:08:25');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (39, 48, 65, 1, '2017-07-30 21:58:18', '2011-09-15 10:01:02');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (40, 75, 81, 0, '2016-12-09 15:32:22', '2015-12-20 14:24:21');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (41, 74, 97, 1, '2014-08-02 02:13:39', '2017-08-05 13:18:54');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (42, 6, 70, 1, '2007-12-23 11:07:25', '2015-05-28 01:15:37');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (43, 12, 62, 1, '2012-03-24 22:56:18', '2014-11-21 17:12:32');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (44, 88, 6, 1, '2016-09-26 23:03:51', '2019-01-21 19:40:13');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (45, 94, 57, 0, '2013-08-19 07:13:39', '2014-08-25 14:51:38');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (46, 14, 14, 1, '2018-05-25 08:49:32', '2012-08-04 17:13:06');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (47, 88, 91, 0, '2008-07-09 04:13:00', '2010-09-09 07:16:24');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (48, 68, 75, 1, '2018-03-16 01:03:21', '2015-04-27 07:37:03');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (49, 37, 74, 1, '2005-09-02 07:16:08', '2011-06-30 06:12:24');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (50, 38, 35, 1, '2018-07-02 16:37:18', '2010-08-14 04:21:32');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (51, 85, 37, 0, '2011-08-22 16:10:11', '2016-06-04 13:51:02');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (52, 51, 68, 1, '2014-04-14 03:23:00', '2015-09-29 17:52:58');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (53, 68, 61, 1, '2020-03-26 21:33:36', '2011-04-13 03:57:21');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (54, 96, 83, 0, '2012-04-01 04:17:20', '2015-10-04 01:16:27');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (55, 62, 76, 0, '2012-04-12 04:22:14', '2017-03-28 01:51:48');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (56, 100, 54, 1, '2010-09-20 06:33:59', '2016-05-16 09:59:59');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (57, 78, 43, 0, '2009-10-06 23:01:43', '2016-10-22 02:29:29');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (58, 26, 77, 1, '2013-06-15 12:38:47', '2017-03-01 05:38:47');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (59, 70, 17, 1, '2006-10-24 19:29:53', '2015-06-16 08:15:33');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (60, 81, 52, 1, '2020-05-21 12:17:30', '2017-07-12 10:57:19');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (61, 66, 90, 1, '2007-12-20 14:26:17', '2013-07-13 23:49:01');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (62, 24, 77, 1, '2005-09-10 06:03:19', '2014-09-09 11:09:08');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (63, 41, 75, 1, '2011-09-13 16:53:50', '2017-08-31 21:56:09');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (64, 75, 50, 1, '2017-04-16 12:21:12', '2018-07-17 06:13:32');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (65, 26, 77, 1, '2012-06-28 07:04:03', '2011-08-05 10:44:04');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (66, 49, 10, 0, '2015-07-16 23:26:34', '2011-11-23 16:58:01');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (67, 9, 80, 0, '2010-10-13 15:43:18', '2014-03-15 08:02:02');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (68, 30, 73, 0, '2018-08-07 16:51:25', '2018-04-22 19:35:07');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (69, 18, 10, 1, '2015-01-23 00:22:02', '2014-11-22 22:44:26');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (70, 6, 61, 1, '2014-12-04 18:26:53', '2012-08-30 00:52:02');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (71, 67, 25, 0, '2018-03-17 08:58:34', '2017-09-12 07:04:46');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (72, 42, 7, 0, '2019-12-17 01:57:20', '2012-11-02 00:18:58');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (73, 53, 27, 0, '2008-08-17 22:02:55', '2019-01-04 05:02:56');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (74, 78, 77, 0, '2018-12-22 14:03:57', '2019-09-02 04:37:34');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (75, 95, 15, 1, '2013-09-11 13:24:57', '2016-02-22 23:56:04');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (76, 92, 50, 1, '2016-12-02 19:41:35', '2018-02-13 18:58:59');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (77, 88, 50, 0, '2006-10-10 16:01:53', '2012-08-01 01:13:44');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (78, 16, 21, 0, '2014-01-07 14:05:34', '2017-11-16 02:49:32');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (79, 22, 57, 0, '2016-11-03 08:53:37', '2014-08-31 16:58:22');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (80, 78, 80, 0, '2013-12-11 00:09:08', '2012-06-21 12:06:38');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (81, 17, 80, 0, '2007-01-14 08:56:56', '2012-07-03 17:45:34');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (82, 1, 40, 1, '2008-09-09 21:09:14', '2018-09-09 02:09:25');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (83, 59, 61, 0, '2006-04-10 04:42:56', '2017-05-09 14:15:13');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (84, 34, 53, 1, '2011-11-21 04:22:59', '2020-03-04 15:01:55');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (85, 25, 14, 1, '2011-04-30 14:21:51', '2020-03-19 12:44:06');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (86, 23, 6, 0, '2005-08-10 10:22:46', '2016-02-16 23:36:03');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (87, 68, 35, 1, '2016-03-25 10:09:26', '2011-05-21 05:56:11');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (88, 37, 36, 0, '2011-05-15 03:39:59', '2012-11-25 13:49:47');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (89, 15, 2, 1, '2012-10-19 13:22:20', '2020-02-29 01:42:06');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (90, 99, 56, 0, '2017-01-02 08:17:19', '2020-02-01 15:37:12');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (91, 87, 17, 0, '2009-10-08 18:04:31', '2017-05-23 00:21:08');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (92, 88, 27, 0, '2018-07-05 05:39:21', '2019-01-22 20:35:59');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (93, 60, 69, 1, '2013-04-02 14:30:25', '2013-11-22 13:26:14');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (94, 25, 11, 1, '2013-09-03 04:36:42', '2014-12-12 23:17:28');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (95, 96, 40, 1, '2011-09-13 19:08:45', '2018-04-03 06:45:01');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (96, 55, 47, 1, '2015-09-14 21:31:55', '2017-07-02 10:39:04');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (97, 18, 100, 0, '2019-02-12 10:26:38', '2020-06-15 03:32:43');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (98, 28, 16, 1, '2007-05-13 12:46:20', '2014-01-21 19:32:46');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (99, 36, 93, 1, '2020-03-12 02:49:01', '2017-10-21 05:20:10');
INSERT INTO `likes` (`id`, `user_id`, `post_id`, `liked`, `created_at`, `updated_at`) VALUES (100, 74, 92, 1, '2007-01-03 21:51:25', '2020-05-28 13:18:01');


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя сделавшего пост',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на медаи в посте',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пост (публикация)';

INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (1, 24, 35, '2015-09-17 02:46:18', '2019-01-23 19:37:39');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (2, 58, 14, '2015-02-03 16:37:26', '2013-03-06 14:19:28');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (3, 80, 62, '2018-06-06 05:40:47', '2019-11-12 20:23:40');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (4, 26, 85, '2016-01-26 04:09:41', '2019-07-06 17:22:20');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (5, 99, 56, '2012-03-24 03:29:45', '2013-08-26 08:19:30');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (6, 95, 78, '2020-02-07 09:10:44', '2017-11-03 12:25:19');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (7, 95, 63, '2019-06-08 16:40:10', '2011-03-27 01:20:22');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (8, 70, 40, '2012-10-12 05:02:28', '2017-04-12 12:09:54');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (9, 20, 75, '2019-10-05 05:17:42', '2014-08-24 08:41:45');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (10, 60, 74, '2011-08-12 13:32:24', '2017-03-11 21:38:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (11, 73, 72, '2006-01-31 06:50:27', '2015-10-20 06:29:07');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (12, 37, 91, '2015-07-06 04:08:37', '2019-06-18 06:24:06');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (13, 18, 63, '2018-09-16 14:22:35', '2015-07-20 01:19:03');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (14, 68, 97, '2019-12-15 13:40:37', '2017-03-19 04:23:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (15, 26, 65, '2011-06-18 15:47:19', '2020-07-13 17:07:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (16, 92, 30, '2018-01-08 07:00:21', '2020-06-24 21:58:18');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (17, 88, 65, '2014-11-01 07:11:56', '2017-03-07 09:05:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (18, 19, 20, '2011-03-15 18:50:05', '2019-10-28 06:29:11');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (19, 70, 81, '2012-08-04 02:49:38', '2017-10-27 02:15:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (20, 46, 98, '2007-03-04 18:43:20', '2018-04-17 21:10:22');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (21, 47, 67, '2017-11-14 15:32:41', '2013-06-10 07:25:27');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (22, 92, 95, '2006-08-17 05:55:41', '2011-09-02 12:27:06');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (23, 23, 65, '2017-01-24 09:13:02', '2017-09-14 15:23:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (24, 24, 47, '2009-01-05 06:03:25', '2013-05-30 08:15:45');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (25, 6, 11, '2010-04-08 15:04:37', '2019-06-03 07:38:30');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (26, 30, 1, '2014-11-02 13:11:35', '2017-12-26 04:17:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (27, 13, 32, '2008-02-06 11:01:32', '2017-07-17 06:16:56');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (28, 39, 17, '2012-11-23 08:00:14', '2019-08-14 21:15:36');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (29, 5, 15, '2018-03-27 01:48:04', '2016-10-22 06:04:20');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (30, 80, 17, '2008-03-12 04:47:08', '2013-09-03 14:13:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (31, 4, 14, '2015-09-09 01:22:46', '2019-01-31 18:04:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (32, 60, 17, '2017-11-30 09:53:33', '2016-10-15 11:43:19');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (33, 56, 100, '2006-03-16 13:05:07', '2016-03-22 18:55:04');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (34, 10, 66, '2016-05-16 16:36:41', '2016-05-13 10:44:08');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (35, 1, 62, '2019-06-25 15:44:35', '2017-11-26 10:29:14');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (36, 92, 94, '2010-08-02 10:00:55', '2013-12-12 09:06:12');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (37, 43, 79, '2013-04-01 16:03:33', '2016-06-13 16:43:18');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (38, 98, 25, '2018-03-12 14:12:41', '2014-08-08 23:38:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (39, 79, 83, '2014-12-17 17:51:45', '2014-02-07 23:12:23');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (40, 1, 24, '2006-06-17 09:13:25', '2018-03-08 08:51:37');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (41, 16, 11, '2007-08-26 05:45:54', '2017-03-02 01:16:31');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (42, 13, 84, '2018-06-02 20:20:23', '2018-07-04 20:13:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (43, 38, 32, '2018-10-01 22:33:51', '2016-02-27 02:57:26');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (44, 21, 43, '2017-08-26 20:54:59', '2016-03-21 22:01:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (45, 70, 95, '2018-10-18 02:40:53', '2013-10-15 03:24:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (46, 15, 18, '2008-01-02 22:51:53', '2012-11-01 09:50:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (47, 54, 38, '2005-09-03 12:08:13', '2018-12-14 00:24:22');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (48, 62, 100, '2006-07-26 17:40:35', '2017-12-29 09:30:33');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (49, 99, 93, '2005-10-02 11:35:55', '2012-07-23 08:09:00');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (50, 69, 85, '2017-12-24 07:08:38', '2018-04-30 08:25:08');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (51, 36, 46, '2006-05-12 06:58:59', '2011-01-07 02:58:15');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (52, 36, 81, '2020-06-23 02:45:35', '2017-08-22 17:12:34');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (53, 4, 53, '2010-11-15 22:19:23', '2019-10-07 05:21:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (54, 79, 40, '2006-04-27 08:18:56', '2017-10-07 00:55:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (55, 80, 41, '2015-07-31 13:13:33', '2013-09-02 02:12:32');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (56, 89, 85, '2010-01-31 17:38:52', '2016-01-26 16:38:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (57, 50, 86, '2013-06-17 01:05:34', '2013-08-29 10:22:19');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (58, 88, 90, '2006-08-17 21:19:36', '2011-03-19 17:02:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (59, 68, 56, '2008-01-05 15:30:35', '2011-02-14 16:25:47');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (60, 7, 47, '2005-12-18 21:07:01', '2020-07-26 04:18:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (61, 10, 34, '2012-07-13 11:53:24', '2019-04-17 01:58:00');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (62, 21, 89, '2006-10-26 10:50:07', '2010-08-24 08:41:37');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (63, 87, 38, '2006-01-26 19:57:30', '2017-02-10 20:43:54');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (64, 29, 36, '2008-09-25 12:45:01', '2018-02-08 01:25:57');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (65, 64, 35, '2006-08-01 16:08:54', '2014-11-21 08:12:29');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (66, 21, 72, '2010-11-26 19:47:05', '2016-03-27 13:48:23');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (67, 29, 74, '2010-09-04 04:10:41', '2015-02-16 13:20:18');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (68, 86, 42, '2019-02-20 04:10:19', '2016-06-01 05:58:59');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (69, 61, 36, '2014-10-23 14:43:27', '2017-09-10 17:49:41');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (70, 27, 28, '2017-09-20 12:18:10', '2014-01-15 13:04:31');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (71, 58, 52, '2018-07-18 17:36:29', '2011-01-21 21:51:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (72, 83, 79, '2015-11-06 10:32:09', '2019-07-20 12:25:01');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (73, 39, 31, '2014-09-21 16:34:59', '2013-07-31 12:56:47');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (74, 20, 32, '2019-07-01 09:14:49', '2013-11-21 20:29:05');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (75, 92, 64, '2010-06-26 15:12:10', '2015-08-28 17:14:52');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (76, 31, 66, '2006-06-29 01:26:04', '2018-05-02 07:04:28');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (77, 8, 85, '2011-02-21 21:26:01', '2011-01-15 23:38:52');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (78, 89, 25, '2018-08-10 05:44:40', '2014-11-11 05:29:12');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (79, 56, 10, '2013-05-21 13:44:50', '2017-03-12 04:38:23');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (80, 89, 33, '2020-01-27 01:14:47', '2011-10-23 10:29:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (81, 97, 35, '2006-06-28 04:12:56', '2016-09-26 03:07:35');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (82, 35, 46, '2017-08-29 00:34:29', '2011-12-13 01:25:44');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (83, 88, 90, '2012-01-13 06:23:19', '2013-01-16 03:44:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (84, 69, 60, '2018-12-23 14:10:36', '2013-03-23 21:45:51');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (85, 74, 43, '2020-04-13 16:39:11', '2013-10-15 18:28:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (86, 79, 66, '2009-09-18 22:37:27', '2016-04-05 23:24:27');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (87, 73, 22, '2011-04-27 05:00:05', '2014-08-10 00:00:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (88, 63, 44, '2019-07-29 10:29:11', '2012-11-17 06:29:25');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (89, 84, 91, '2006-02-20 22:22:21', '2013-01-05 13:19:16');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (90, 34, 18, '2015-12-28 15:56:54', '2013-04-10 08:08:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (91, 56, 75, '2006-10-25 13:10:59', '2019-09-08 12:25:42');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (92, 11, 8, '2018-02-04 12:34:30', '2018-06-29 08:13:44');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (93, 52, 30, '2008-09-09 22:56:53', '2014-04-04 23:30:03');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (94, 95, 2, '2011-02-24 04:19:12', '2019-03-28 08:22:00');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (95, 17, 88, '2015-10-09 01:30:50', '2012-12-17 19:25:53');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (96, 72, 88, '2011-05-14 15:40:49', '2019-08-24 05:16:38');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (97, 18, 45, '2015-09-01 12:24:08', '2013-08-16 00:31:23');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (98, 73, 60, '2015-04-29 10:34:53', '2015-10-03 16:15:01');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (99, 78, 53, '2011-04-25 03:04:08', '2015-05-22 17:38:43');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES (100, 19, 63, '2019-10-22 12:16:58', '2010-12-14 18:33:08');


#
# TABLE STRUCTURE FOR: re_posts
#

DROP TABLE IF EXISTS `re_posts`;

CREATE TABLE `re_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя сделавшего репост',
  `post_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на публикацию',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ре-пост';

INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (1, 81, 60, '2006-11-24 17:43:57', '2016-01-22 21:51:27');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (2, 87, 88, '2016-07-06 13:05:46', '2015-06-03 21:26:47');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (3, 95, 87, '2014-02-10 18:17:20', '2011-08-12 15:49:36');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (4, 4, 78, '2008-11-16 18:00:27', '2013-10-11 23:08:02');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (5, 16, 12, '2019-10-18 15:17:33', '2011-01-29 08:54:08');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (6, 10, 12, '2012-07-07 05:52:27', '2010-10-18 16:21:13');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (7, 27, 99, '2006-04-05 10:52:46', '2014-10-10 22:26:54');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (8, 45, 6, '2011-09-29 08:52:41', '2018-11-19 21:46:11');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (9, 54, 10, '2014-07-31 15:01:06', '2020-04-02 00:37:15');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (10, 66, 93, '2014-04-01 07:20:28', '2011-03-24 03:10:39');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (11, 14, 64, '2006-12-16 00:25:33', '2013-03-06 00:50:57');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (12, 20, 10, '2014-03-05 08:17:00', '2019-07-22 07:04:30');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (13, 99, 93, '2011-07-01 18:22:02', '2018-04-20 22:44:57');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (14, 89, 99, '2014-02-17 12:53:19', '2019-01-02 14:31:27');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (15, 67, 72, '2016-07-07 14:30:15', '2016-07-06 21:44:01');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (16, 63, 92, '2008-12-20 06:17:45', '2013-04-18 19:57:10');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (17, 91, 68, '2013-02-24 04:20:48', '2016-03-18 09:30:57');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (18, 25, 47, '2019-12-04 16:45:49', '2014-04-24 19:26:58');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (19, 67, 17, '2014-05-14 15:32:26', '2017-09-04 03:52:04');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (20, 96, 54, '2011-05-19 00:11:52', '2013-01-21 16:27:23');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (21, 54, 78, '2008-05-02 07:43:39', '2014-03-29 16:49:04');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (22, 91, 53, '2015-08-14 20:21:34', '2013-03-16 09:27:33');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (23, 11, 79, '2017-07-08 03:51:47', '2020-06-11 19:28:12');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (24, 93, 80, '2015-04-03 06:53:20', '2016-06-03 11:56:57');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (25, 93, 85, '2011-06-18 22:40:28', '2017-06-27 10:08:05');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (26, 99, 78, '2006-11-30 15:50:42', '2011-08-20 05:13:12');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (27, 51, 5, '2006-01-19 20:05:38', '2011-12-31 08:26:52');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (28, 67, 12, '2019-02-26 04:07:12', '2016-11-12 01:06:19');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (29, 32, 40, '2017-12-30 13:49:25', '2020-02-15 04:37:58');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (30, 56, 72, '2012-07-12 03:19:07', '2017-08-07 05:42:21');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (31, 46, 69, '2019-06-12 08:46:40', '2020-03-01 00:28:15');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (32, 15, 5, '2015-11-30 15:45:57', '2013-01-24 00:50:35');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (33, 49, 95, '2016-02-03 11:46:47', '2018-07-23 17:51:31');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (34, 44, 14, '2006-03-04 14:12:55', '2014-03-14 21:33:01');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (35, 67, 18, '2012-06-03 14:21:13', '2019-01-10 18:37:08');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (36, 8, 12, '2014-05-17 15:58:01', '2012-08-18 10:18:52');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (37, 16, 32, '2019-05-26 12:05:06', '2015-05-31 10:01:58');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (38, 91, 24, '2006-11-09 09:25:29', '2011-11-24 11:35:48');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (39, 71, 32, '2019-12-23 14:39:53', '2018-09-18 19:26:55');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (40, 49, 8, '2005-10-19 05:29:41', '2017-03-30 02:44:29');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (41, 62, 65, '2011-01-26 21:42:51', '2017-01-11 03:58:01');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (42, 58, 91, '2009-12-02 16:16:36', '2017-06-06 23:13:49');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (43, 59, 4, '2006-03-25 08:25:27', '2013-05-28 03:41:52');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (44, 87, 66, '2017-01-25 21:36:41', '2019-06-08 19:07:34');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (45, 20, 66, '2005-08-19 22:02:52', '2016-03-01 15:03:03');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (46, 41, 96, '2008-12-18 12:05:37', '2012-09-24 21:56:00');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (47, 54, 50, '2017-02-25 01:10:45', '2020-02-14 21:21:11');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (48, 94, 7, '2007-07-30 09:21:28', '2019-07-12 17:02:29');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (49, 100, 40, '2012-08-08 14:46:14', '2010-12-17 02:21:14');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (50, 16, 99, '2011-05-17 11:48:56', '2015-04-02 14:35:26');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (51, 98, 2, '2010-10-08 12:02:39', '2015-07-16 22:59:14');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (52, 40, 29, '2005-10-30 17:48:10', '2019-09-06 05:22:24');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (53, 1, 74, '2012-02-15 19:36:20', '2018-08-27 13:47:23');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (54, 8, 8, '2016-11-21 12:09:46', '2018-08-04 05:51:38');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (55, 15, 76, '2008-10-30 02:10:51', '2012-07-03 01:37:12');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (56, 52, 83, '2008-04-29 07:04:21', '2016-12-25 20:45:35');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (57, 28, 33, '2016-04-26 05:59:57', '2010-07-29 01:14:25');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (58, 3, 23, '2018-12-06 04:23:18', '2016-11-14 18:44:40');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (59, 29, 19, '2011-05-31 14:55:46', '2014-08-02 03:32:04');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (60, 3, 45, '2016-01-25 14:15:58', '2013-03-03 06:49:24');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (61, 52, 58, '2007-11-30 22:58:26', '2017-11-07 19:02:54');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (62, 17, 21, '2012-10-27 01:48:18', '2012-03-24 07:36:55');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (63, 27, 45, '2011-07-26 08:08:39', '2018-07-30 14:18:13');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (64, 5, 62, '2014-11-12 14:13:00', '2019-11-22 10:06:46');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (65, 72, 93, '2008-11-13 22:47:29', '2011-07-16 12:26:46');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (66, 69, 20, '2008-06-26 12:57:11', '2018-03-19 17:45:07');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (67, 45, 76, '2017-10-28 10:35:21', '2011-09-09 07:24:43');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (68, 97, 63, '2011-09-20 00:42:23', '2012-10-11 16:15:22');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (69, 37, 87, '2019-12-21 14:28:27', '2012-06-15 10:52:17');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (70, 50, 37, '2007-03-25 01:07:41', '2019-04-07 01:47:02');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (71, 73, 29, '2012-06-20 01:29:41', '2019-07-23 23:28:34');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (72, 10, 82, '2011-08-30 15:21:20', '2019-10-23 04:31:40');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (73, 13, 83, '2010-08-04 22:34:40', '2015-09-02 00:37:56');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (74, 34, 36, '2013-03-29 06:00:22', '2012-09-20 10:51:57');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (75, 15, 6, '2013-06-26 22:42:58', '2018-09-08 09:32:35');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (76, 81, 33, '2007-05-23 22:41:51', '2020-06-20 14:11:42');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (77, 33, 65, '2018-03-23 02:45:20', '2016-01-17 06:34:23');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (78, 74, 50, '2013-02-07 03:18:56', '2011-07-06 17:22:40');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (79, 83, 79, '2014-12-08 10:21:45', '2012-08-03 18:37:22');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (80, 75, 69, '2015-10-18 15:49:22', '2017-03-24 17:35:39');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (81, 73, 15, '2005-09-16 21:17:22', '2011-03-11 15:10:09');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (82, 5, 85, '2019-04-07 19:34:48', '2018-07-15 12:32:56');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (83, 75, 31, '2018-07-20 03:31:53', '2013-01-03 09:15:38');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (84, 80, 51, '2017-04-11 12:53:19', '2020-04-28 17:53:32');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (85, 61, 29, '2005-11-22 03:15:57', '2011-10-03 19:20:38');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (86, 99, 40, '2017-04-21 03:31:31', '2016-08-15 15:24:10');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (87, 60, 43, '2018-07-11 01:55:56', '2011-04-03 00:39:21');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (88, 33, 98, '2013-04-26 22:27:05', '2019-05-17 03:11:45');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (89, 83, 77, '2012-12-27 07:11:05', '2018-02-18 10:43:28');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (90, 39, 76, '2016-01-14 08:56:07', '2013-11-23 17:00:59');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (91, 24, 95, '2017-02-05 14:22:36', '2013-05-04 06:26:48');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (92, 86, 33, '2013-03-14 18:25:36', '2011-06-21 22:12:54');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (93, 75, 32, '2008-11-01 11:30:03', '2016-01-18 00:58:21');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (94, 20, 51, '2007-02-17 17:12:16', '2018-07-25 04:36:14');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (95, 78, 94, '2009-01-11 03:20:53', '2018-09-08 00:19:34');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (96, 54, 82, '2018-04-28 06:33:09', '2016-08-18 06:22:23');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (97, 49, 55, '2016-08-23 17:30:14', '2012-07-07 11:09:59');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (98, 3, 38, '2015-10-20 07:27:49', '2017-04-20 07:09:25');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (99, 36, 93, '2009-03-16 23:09:38', '2011-08-25 00:19:23');
INSERT INTO `re_posts` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES (100, 3, 16, '2010-04-27 02:50:38', '2012-02-25 05:04:01');


