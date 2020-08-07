DESC profiles;
DESC media;
DESC users;
SELECT * FROM media;
SELECT * FROM profiles;
ALTER TABLE media DROP id;
ALTER TABLE media ADD COLUMN id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;



-- подставить соответствуюзие id медифайлов с сохраненнымии user_id из таблицы media
UPDATE profiles SET photo_id=(SELECT MAX(id) FROM media WHERE user_id = profiles.user_id and media_type_id=3);



INSERT INTO profiles(photo_id)
  SELECT 
    id 
  FROM media;

/* 1. Создать все необходимые внешние ключи и диаграмму отношений. */
-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id);
      ON DELETE SET NULL;
     

-- Изменяем тип столбца при необходимости
ALTER TABLE profiles DROP FOREIGN KEY profiles_user_id_fk;
ALTER TABLE profiles DROP FOREIGN KEY profiles_photo_id_fk;
ALTER TABLE profiles RENAME COLUMN photo TO photo_id;
ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

DESC media;
ALTER TABLE media MODIFY COLUMN media_type_id INT(10) UNSIGNED COMMENT "Убрал условие  NOT NULL";

ALTER TABLE media
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
      ON DELETE SET NULL,
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
     
ALTER TABLE media DROP FOREIGN KEY media_media_type_id_fk;
ALTER TABLE media DROP FOREIGN KEY media_user_id_fk;
     
DESC communities_users;
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT communities_users_status_communities_id_fk 
    FOREIGN KEY (status_communities_id) REFERENCES communities_statuses(id)
      ON DELETE CASCADE;
     

DESC friendship;
DESC friendship_statuses;
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE SET NULL;
     
ALTER TABLE friendship DROP FOREIGN KEY friendship_status_id_fk;
     
SELECT *  FROM friendship;
SELECT *  FROM friendship_statuses;
ALTER TABLE friendship MODIFY COLUMN status_id INT(10) UNSIGNED COMMENT "Убрал условие  NOT NULL";

UPDATE friendship SET confirmed_at = updated_at WHERE confirmed_at < requested_at;


DESC posts;
ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT posts_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE SET NULL,
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE SET NULL;
		

	
DESC likes;
ALTER TABLE likes
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id)
			ON DELETE CASCADE;
	/*ADD CONSTRAINT likes_target_id_fk
		FOREIGN KEY (target_id) REFERENCES (id);*/ COMMENT "выбор референсной таблицы зависит от target_type_id";
	
DESC messages;
ALTER TABLE messages
	ADD CONSTRAINT meesages_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT meesages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id)
			ON DELETE CASCADE;

	
	
-- -------------------------------------------------------------------------------	
-- 2. Создать и заполнить таблицы лайков и постов.
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;
 SELECT * FROM likes;
 SELECT * FROM posts;


-- Создадим таблицу постов
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- удаление user_id т.к. заполнение таблицы усложняется из за связки с таблицей media_id
ALTER TABLE posts DROP FOREIGN KEY posts_user_id_fk;
ALTER TABLE posts DROP FOREIGN KEY posts_media_id_fk;
ALTER TABLE posts DROP user_id;


DESC posts;
DESC messages;
DESC communities ;

INSERT INTO posts (community_id, head, body, media_id, is_public, is_archived, views_counter, created_At, updated_at) 
  SELECT  
    FLOOR(1 + (RAND() * 100)),
    SUBSTRING(body,1,10),
    body,
    FLOOR(1 + (RAND() * 100)),
    FLOOR(0.5 + RAND()),
    FLOOR(0.5 + RAND()),
    FLOOR(1 + (RAND() * 1000)),
    created_at,
    CURRENT_TIMESTAMP 
  FROM messages;
 
-- подставить соответствуюзие id медифайлов с сохраненнымии user_id из таблицы media
ALTER TABLE posts ADD COLUMN user_id INT UNSIGNED AFTER id;
UPDATE posts SET user_id=(SELECT MAX(user_id) FROM media WHERE id = posts.media_id);

SELECT * FROM posts;

DELETE FROM posts WHERE user_id IS NULL;
ALTER TABLE posts MODIFY COLUMN user_id INT UNSIGNED NOT NULL;

-- возврат FOREIGN KEY после восстановления данных
ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id)
			ON DELETE SET NULL;
		
		
-- -------------------------------------------------------------------------------
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
DESC likes;
DESC users;
DESC profiles;

SELECT * FROM profiles;
SELECT * FROM likes;

SELECT gender FROM profiles WHERE user_id in (SELECT user_id FROM likes);

SELECT COUNT(user_id)  FROM likes WHERE (SELECT gender FROM profiles WHERE user_id = likes.user_id)='F';
-- решение (как тут использовать алиас?)
SELECT 
CASE 
WHEN (SELECT COUNT(user_id)  FROM likes WHERE (SELECT gender FROM profiles WHERE user_id = likes.user_id)='M') >
(SELECT COUNT(user_id)  FROM likes WHERE (SELECT gender FROM profiles WHERE user_id = likes.user_id)='F')
     THEN CONCAT('мужчин больше поставивших лайки -', (SELECT COUNT(user_id)  FROM likes WHERE (SELECT gender FROM profiles WHERE user_id = likes.user_id)='M'))
     ELSE CONCAT('женщин больше поставивших лайки -', (SELECT COUNT(user_id)  FROM likes WHERE (SELECT gender FROM profiles WHERE user_id = likes.user_id)='F'))
END;


-- -------------------------------------------------------------------------------
-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

-- корректировка возраста для пользователей младше 18 лет
UPDATE profiles SET birthday = DATE_SUB(birthday, INTERVAL 10 YEAR) WHERE birthday > '2010-01-01';
UPDATE profiles SET birthday = DATE_SUB(birthday, INTERVAL 3 YEAR) WHERE birthday > '2002-01-01';

SELECT * FROM profiles;

-- решение
SELECT id, (SELECT birthday FROM profiles WHERE user_id=id) AS birthday FROM users ORDER BY birthday DESC LIMIT 10;


DESC messages;
SELECT * FROM likes;
SELECT * FROM posts;
SELECT * FROM target_types;
SELECT * FROM users;
SELECT * FROM messages;

UPDATE posts SET user_id=67 WHERE id=54;
UPDATE posts SET user_id=67 WHERE id=5;


-- решение, Вместо верхнего запроса, не получилось использовать WITH ROLLUP с командой LIMIT
SELECT SUM(liked) FROM (
	SELECT SUM(liked) AS liked, liked_user_id, birthday  FROM (
		(SELECT 
		COUNT(*) AS liked,  
		(SELECT id FROM messages WHERE id=target_id AND target_type_id=1) AS liked_user_id,
		(SELECT birthday FROM profiles WHERE user_id=liked_user_id) AS birthday
		FROM likes GROUP BY liked_user_id ORDER BY birthday DESC LIMIT 10)
	UNION
		(SELECT 
		COUNT(*) AS liked,  
		(SELECT user_id FROM users WHERE id=target_id AND target_type_id=2) AS liked_user_id,
		(SELECT birthday FROM profiles WHERE user_id=liked_user_id) AS birthday
		FROM likes GROUP BY liked_user_id ORDER BY birthday DESC LIMIT 10)
	UNION
		(SELECT 
		COUNT(*) AS liked,  
		(SELECT user_id FROM media WHERE id=target_id AND target_type_id=3) AS liked_user_id,
		(SELECT birthday FROM profiles WHERE user_id=liked_user_id) AS birthday
		FROM likes GROUP BY liked_user_id ORDER BY birthday DESC LIMIT 10)
	UNION
		(SELECT 
		COUNT(*) AS liked,  
		(SELECT user_id FROM posts WHERE id=target_id AND target_type_id=4) AS liked_user_id,
		(SELECT birthday FROM profiles WHERE user_id=liked_user_id) AS birthday
		FROM likes GROUP BY liked_user_id ORDER BY birthday DESC LIMIT 10)) 
	AS table_likes GROUP BY liked_user_id , birthday ORDER BY birthday DESC LIMIT 10)
AS total_likes;





/* 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
(критерии активности необходимо определить самостоятельно).*/
SELECT user_id, SUM(activity), MIN(updated_at)  FROM(
	(SELECT COUNT(*) AS activity, user_id, MAX(updated_at) AS updated_at FROM posts GROUP BY user_id ORDER BY activity DESC)
	UNION
	(SELECT COUNT(*) AS activity, user_id, MAX(updated_at) AS updated_at FROM media GROUP BY user_id ORDER BY activity DESC)
	UNION
	(SELECT COUNT(*) AS activity, user_id, MAX(created_at) AS updated_at FROM likes GROUP BY user_id ORDER BY activity DESC)
	UNION
	(SELECT COUNT(*) AS activity, user_id, MAX(updated_at) AS updated_at FROM friendship GROUP BY user_id ORDER BY activity DESC)
	UNION
	(SELECT COUNT(*) AS activity, user_id, MAX(updated_at) AS updated_at FROM posts GROUP BY user_id ORDER BY activity DESC)
	UNION
	(SELECT COUNT(*) AS activity, from_user_id AS user_id, MAX(updated_at) AS updated_at FROM messages GROUP BY user_id ORDER BY activity DESC)
	UNION
	(SELECT COUNT(*) AS activity, user_id, MAX(updated_at) AS updated_at FROM communities_users GROUP BY user_id ORDER BY activity DESC)) 
AS active_users GROUP BY user_id ORDER BY SUM(activity), MIN(updated_at) DESC LIMIT 10;




