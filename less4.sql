SELECT * FROM users LIMIT 10;

UPDATE users SET updated_at = CURRENT_TIMESTAMP 
   WHERE created_at > updated_at; 
   
  
SELECT * FROM profiles LIMIT 10;
 
UPDATE profiles SET updated_at = CURRENT_TIMESTAMP 
   WHERE created_at > updated_at; 

  
SELECT * FROM messages;
UPDATE messages SET from_user_id = FLOOR(1+RAND()*100);  
SELECT COUNT(*) FROM users;
ALTER TABLE messages ADD COLUMN is_modified BOOLEAN AFTER is_read;
UPDATE messages SET is_modified = FLOOR(RAND()+0.5);  

ALTER TABLE messages
  ADD CONSTRAINT from_user_fk FOREIGN KEY (from_user_id) REFERENCES users (id);
ALTER TABLE messages
  ADD CONSTRAINT to_user_fk FOREIGN KEY (to_user_id) REFERENCES users (id);

SELECT * FROM messages;

SELECT * FROM media_types;
ALTER TABLE media_types DROP COLUMN id;
ALTER TABLE media_types ADD COLUMN id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;



CREATE TEMPORARY TABLE format_file (id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,name CHAR(10));
INSERT INTO format_file (name) VALUES('mp3');
INSERT INTO format_file (name) VALUES('mp4');
INSERT INTO format_file (name) VALUES('jpeg');
SELECT * FROM format_file;

SELECT * FROM media LIMIT 10;
UPDATE media SET media_type_id = FLOOR(1+RAND()*3); 
UPDATE media SET filename = CONCAT("https://dropbox/", SUBSTRING_INDEX(filename, ' ', 1) , '.', (SELECT name FROM format_file WHERE id = media_type_id));
UPDATE media SET size = FLOOR(15000+RAND()*35000) WHERE media_type_id=1; 
UPDATE media SET size = FLOOR(50000+RAND()*350000) WHERE media_type_id=2; 
UPDATE media SET size = FLOOR(1000+RAND()*15000) WHERE media_type_id=3; 
ALTER TABLE media MODIFY COLUMN metadata JSON;
UPDATE media SET metadata = CONCAT('{"owner":"', CONCAT((SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id=user_id), '"}'));
DESC media;

SELECT * FROM friendship_statuses LIMIT 10;
ALTER TABLE friendship_statuses DROP COLUMN id;
ALTER TABLE friendship_statuses ADD COLUMN id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;
DELETE FROM friendship_statuses WHERE id=4;
UPDATE friendship_statuses SET name = 'Requested' WHERE id=1; 
UPDATE friendship_statuses SET name = 'Confirmed' WHERE id=2; 
UPDATE friendship_statuses SET name = 'Reject' WHERE id=3; 

SELECT * FROM friendship LIMIT 10;
UPDATE friendship SET status_id = FLOOR(1+RAND()*3); 
ALTER TABLE friendship DROP COLUMN created_at;

SELECT * FROM communities_statuses LIMIT 10;
ALTER TABLE communities_statuses DROP COLUMN id;
ALTER TABLE communities_statuses ADD COLUMN id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

SELECT * FROM communities_users LIMIT 10;
UPDATE communities_users SET status_communities_id = FLOOR(1+RAND()*3); 

SELECT * FROM communities LIMIT 10;

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
 
 
SELECT * FROM target_types LIMIT 10;

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    to_user_id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    read_at 
  FROM messages;
   


-- Проверим
SELECT * FROM likes LIMIT 10;

-- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
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

SELECT * FROM likes LIMIT 10;
DESC likes;

UPDATE likes SET updated_at = CURRENT_TIMESTAMP 
   WHERE created_at > updated_at; 
   
SELECT * FROM posts LIMIT 10;  
UPDATE posts SET updated_at = CURRENT_TIMESTAMP 
   WHERE created_at > updated_at; 
   
SELECT * FROM re_posts LIMIT 10;  
UPDATE re_posts SET updated_at = CURRENT_TIMESTAMP 
   WHERE created_at > updated_at; 