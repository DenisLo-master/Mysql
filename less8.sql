USE vk;

-- 1. Определить кто больше поставил лайков (всего) - мужчины или женщины?
DESC likes;
DESC users;
DESC profiles;

SELECT p.gender, COUNT(l.id) AS total_likes 
	FROM users AS u 
	    LEFT JOIN profiles AS p 
	        ON u.id = p.user_id 
	    LEFT JOIN likes AS l 
	        ON u.id = l.user_id
GROUP BY p.gender
ORDER BY total_likes DESC LIMIT 1;


-- 2. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).
SELECT * FROM target_types;
SELECT * FROM messages;

-- проверка posts
SELECT * FROM likes WHERE id=5;
SELECT * FROM posts WHERE id=19;
SELECT * FROM users WHERE id=68;
SELECT * FROM messages WHERE id=7;

-- проверка messages
SELECT * FROM likes WHERE id=2;
SELECT * FROM messages WHERE id=26;
SELECT * FROM users WHERE id=18;

-- НЕ  ПРАВИЛЬНОЕ РЕШЕНИЕ
SELECT SUM(count_likes) AS total_likes FROM (
	SELECT name, birthday, COUNT(liked_id) AS count_likes FROM	(	
		(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, t.name AS target, l.target_id AS target_id, l.id AS liked_id FROM likes AS l
			LEFT JOIN target_types AS t
				ON l.target_type_id = t.id
			LEFT JOIN messages AS m
				ON l.target_id  = m.id AND t.name = 'messages'
			RIGHT JOIN users AS u 
				ON u.id = m.from_user_id
			RIGHT JOIN profiles AS pr 
				ON u.id = pr.user_id
		WHERE l.id IS NOT NULL)
	UNION 
		(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, t.name AS target, l.target_id AS target_id, l.id AS liked_id FROM likes AS l
			LEFT JOIN target_types AS t
				ON l.target_type_id = t.id
			LEFT JOIN users AS u
				ON l.target_id  = u.id AND t.name = 'users'
			RIGHT JOIN profiles AS pr 
				ON u.id = pr.user_id
		WHERE l.id IS NOT NULL)
	UNION
		(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, t.name AS target, l.target_id AS target_id, l.id AS liked_id FROM likes AS l
			LEFT JOIN target_types AS t
				ON l.target_type_id = t.id
			LEFT JOIN media AS md
				ON l.target_id  = md.id AND t.name = 'media'
			RIGHT JOIN users AS u 
				ON u.id = md.user_id
			RIGHT JOIN profiles AS pr 
				ON u.id = pr.user_id
		WHERE l.id IS NOT NULL)
	UNION
		(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, t.name AS target, l.target_id AS target_id, l.id AS liked_id FROM likes AS l
			LEFT JOIN target_types AS t
				ON l.target_type_id = t.id
			LEFT JOIN posts AS p
				ON l.target_id  = p.id AND t.name = 'posts'
			RIGHT JOIN users AS u 
				ON u.id = p.user_id
			RIGHT JOIN profiles AS pr 
				ON u.id = pr.user_id
		WHERE l.id IS NOT NULL)) AS user_total
	GROUP BY name , birthday ORDER BY birthday DESC LIMIT 10
) AS total_sum;

-- правильное решение 
SELECT * FROM target_types;
SELECT * FROM posts;

-- проверка posts
SELECT * FROM likes WHERE target_id=27;
SELECT * FROM posts WHERE id=27;
SELECT * FROM users WHERE id=66;
SELECT * FROM messages WHERE id=7;

-- проверка messages
SELECT * FROM likes WHERE target_id=70;
SELECT * FROM likes WHERE target_id=71;
SELECT * FROM likes WHERE target_id=72;
SELECT * FROM likes WHERE target_id=89;
SELECT * FROM messages WHERE id=70;
SELECT * FROM messages WHERE id=71;
SELECT * FROM messages WHERE id=72;
SELECT * FROM users WHERE id=66;

SELECT SUM(total_liked) AS total_liked FROM (
	SELECT u.first_name , u.last_name , pr.birthday ,
		COUNT(DISTINCT l.id) AS total_liked
		FROM likes AS l
			INNER JOIN target_types AS t
				ON l.target_type_id = t.id
			LEFT JOIN posts AS p
				ON l.target_id  = p.id AND t.name = 'posts'
			LEFT JOIN media AS md
				ON l.target_id  = md.id AND t.name = 'media'
			LEFT JOIN users AS ul
				ON l.target_id  = ul.id AND t.name = 'users'
			LEFT JOIN messages AS m
				ON l.target_id  = m.id AND t.name = 'messages'
			RIGHT JOIN users AS u
				ON u.id = p.user_id OR u.id = md.user_id OR u.id = ul.id OR u.id = m.from_user_id 
			RIGHT JOIN profiles AS pr 
				ON u.id = pr.user_id
	GROUP BY u.first_name, u.last_name, pr.birthday ORDER BY pr.birthday DESC , total_liked LIMIT 10) AS liked;





/* 3. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
(критерии активности необходимо определить самостоятельно).*/
SELECT * FROM likes;
SELECT * FROM messages;
SELECT * FROM friendship;
DESC friendship;

-- НЕ  ПРАВИЛЬНОЕ РЕШЕНИЕ
-- критерий активности: сумма действий в каждом модуле и последняя активность по дате и времени
SELECT name, birthday ,SUM(count_act) AS total_activities, MAX(last_updated) FROM (
	(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, COUNT(p.id) AS count_act, MAX(p.updated_at) AS last_updated FROM users AS u
		INNER JOIN profiles AS pr 
			ON u.id = pr.user_id
		LEFT JOIN posts AS p 
			ON p.user_id = u.id
	GROUP BY u.id, pr.birthday)
UNION
	(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, COUNT(md.id) AS count_act, MAX(md.updated_at) AS last_updated FROM users AS u
		INNER JOIN profiles AS pr 
			ON u.id = pr.user_id
		LEFT JOIN media AS md
			ON md.user_id = u.id
	GROUP BY u.id, pr.birthday)
UNION
	(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, COUNT(m.id) AS count_act, MAX(m.updated_at) AS last_updated FROM users AS u
		INNER JOIN profiles AS pr 
			ON u.id = pr.user_id
		LEFT JOIN messages AS m
			ON m.from_user_id = u.id
	GROUP BY u.id, pr.birthday)
UNION
	(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, COUNT(l.id) AS count_act, MAX(l.created_at) AS last_updated FROM users AS u
		INNER JOIN profiles AS pr 
			ON u.id = pr.user_id
		LEFT JOIN likes AS l
			ON l.user_id = u.id
	GROUP BY u.id, pr.birthday)
UNION
	(SELECT DISTINCT CONCAT(u.first_name, ' ', u.last_name) AS name, pr.birthday AS birthday, COUNT(f.user_id) AS count_act, MAX(f.updated_at) AS last_updated FROM users AS u
		INNER JOIN profiles AS pr 
			ON u.id = pr.user_id
		LEFT JOIN friendship AS f
			ON f.user_id = u.id OR f.friend_id = u.id AND f.confirmed_at IS NOT NULL
	GROUP BY u.id, pr.birthday)) AS total_activities
GROUP BY name, birthday ORDER BY total_activities, MIN(last_updated) LIMIT 10;


		
-- правильное решение

SELECT CONCAT(u.first_name, ' ', u.last_name) AS name, 
	COUNT(DISTINCT m.id) + 
	COUNT(DISTINCT l.id) + 
	COUNT(DISTINCT p.id) + 
	COUNT(DISTINCT md.id) AS activities
	FROM users AS u
		LEFT JOIN messages AS m 
			ON u.id = m.from_user_id 
		LEFT JOIN media AS md
			ON u.id = md.user_id 
		LEFT JOIN posts AS p 
			ON u.id = p.user_id 
		LEFT JOIN likes AS l
			ON u.id = l.user_id
		LEFT JOIN friendship AS f
			ON u.id = f.user_id
GROUP BY name ORDER BY activities DESC , name ;



	
	
	
	
	
	
	