
CREATE DATABASE sample;
USE sample;

-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(255) COMMENT 'Имя пользователя',
  birthday_at DATE COMMENT 'День рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP 
) COMMENT "Таблица пользователейт";  

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Петр', '2000-08-31', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Иван', '1995-09-11', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Николай', '1985-02-08', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Федр', '2005-01-05', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Михаил', '1999-08-01', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Арсен', '1992-10-22', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Олег', '2008-5-19', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Дмитрий', '1990-07-15', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Татьяна', '2001-04-11', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Ирина', '1995-05-21', NOW(), NOW());
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Юлия', '2002-12-31', NOW(), NOW());

SELECT * FROM users;

/* 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время 
помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(255) COMMENT 'Имя пользователя',
  birthday_at DATE COMMENT 'День рождения',
  created_at VARCHAR(50),  
  updated_at VARCHAR(50)
) COMMENT "Таблица пользователейт";  

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Петр', '2000-08-31', '14.09.2016 8:10', '20.10.2018 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Иван', '1995-09-11', '25.10.2014 9:15', '10.05.2018 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Николай', '1985-02-08', '21.11.2017 11:40', '22.03.2018 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Федр', '2005-01-05', '11.04.2011 15:35', '25.06.2015 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Михаил', '1999-08-01', '10.02.2014 18:15', '11.10.2016 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Арсен', '1992-10-22', '22.01.2015 19:20', '15.11.2016 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Олег', '2008-11-19', '27.11.2019 20:33', '17.12.2019 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Дмитрий', '1990-07-15', '21.12.2018 23:00', '04.08.2019 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Татьяна', '2001-04-11', '16.10.2019 13:10', '22.12.2020 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Ольга', '1995-03-21', '19.09.2014 17:50', '28.04.2019 8:10');
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES ('Юлия', '2002-12-31', '25.08.2016 18:55', '21.11.2016 8:10');

SELECT * FROM users;

SELECT SUBSTRING(created_at, 4, 2) as created_atn FROM users;

-- перестановка M D Y T под формат Y-M-D T для дальнейшего смена типа столбца
UPDATE users SET created_at = CONCAT(
SUBSTRING(created_at, 7, 4), '-', 
SUBSTRING(created_at, 4, 2), '-', 
SUBSTRING(created_at, 1, 2), ' ', 
SUBSTRING(created_at, 12, 5), ':00');

-- перестановка M D Y T под формат Y-M-D T для дальнейшего смена типа столбца
UPDATE users SET updated_at = CONCAT(
SUBSTRING(updated_at, 7, 4), '-', 
SUBSTRING(updated_at, 4, 2), '-', 
SUBSTRING(updated_at, 1, 2), ' ', 
SUBSTRING(updated_at, 12, 5), ':00');

-- преобразование столбца в формат DATETIME
ALTER TABLE users MODIFY COLUMN created_at DATETIME;
ALTER TABLE users MODIFY COLUMN updated_at DATETIME;

SELECT * FROM users;
DESC users;

/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
 если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
 чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.
 */

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE IF NOT EXISTS storehouses_products (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(255) COMMENT 'Название товара',
  value INT COMMENT 'количество',
  status VARCHAR (20) COMMENT 'статус запасов',
  created_at DATETIME DEFAULT now(),  
  updated_at DATETIME DEFAULT now()
) COMMENT "Складские запасы"; 

INSERT INTO storehouses_products (name, value, status) VALUES 
('карандаши', 1000, 'есть запасы'), 
('стул', 50, 'есть запасы'), 
('бумага',234, 'есть запасы'),
('стол переговоров',0, 'товар закончился') , 
('ручки',9874, 'есть запасы'), 
('кресло',23, 'есть запасы'),
('стаканчики',0, 'товар закончился'),
('стол офисный',123, 'есть запасы'),
('стикеры',12234, 'есть запасы'), 
('ластик',556, 'есть запасы');

SELECT value FROM storehouses_products ORDER BY status, value;


/* 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
 Месяцы заданы в виде списка английских названий (may, august) */


SELECT name, CASE 
WHEN DATE_FORMAT(birthday_at , '%M')='May' THEN 'май' 
WHEN DATE_FORMAT(birthday_at , '%M')='August' THEN 'август'
END as birthday  FROM users WHERE MONTH(birthday_at) = 5 OR MONTH(birthday_at) = 8;


/* 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
 SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN. */


SELECT * FROM storehouses_products WHERE id IN (5, 1, 2) ORDER BY FIELD(id,5,1,2);


/*Практическое задание теме «Агрегация данных»
1. Подсчитайте средний возраст пользователей в таблице users.*/

SELECT CONCAT(ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))), ' года') as 'Средниий возраст' FROM users;

/* 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 Следует учесть, что необходимы дни недели текущего года, а не года рождения. */

SELECT COUNT(*) as 'Количество Дней рождения', DATE_FORMAT(CONCAT(YEAR(NOW()), SUBSTRING(birthday_at,5)), '%W') 
AS day_of_week FROM users GROUP BY day_of_week 
ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday','Wednesday','Thursday', 'Friday', 'Saturday', 'Sunday');


/* 3.(по желанию) Подсчитайте произведение чисел в столбце таблицы. */

DROP TABLE IF EXISTS numbers;
CREATE TABLE IF NOT EXISTS numbers (
  value INT COMMENT 'количество');

INSERT INTO numbers (value) VALUES 
(1), (2), (3), (4), (5);

SELECT exp(SUM(log(value))) AS multiplication FROM numbers;












