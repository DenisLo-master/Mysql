-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(250));

INSERT INTO users (name) VALUES ('Tim'),('Mark'), ('David'), ('Max'), ('Miranda'), ('Eva'), ('Jane');

SELECT * FROM users;


DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT UNSIGNED NOT NULL,
sku VARCHAR(250));

INSERT INTO orders (user_id, sku) VALUES (2, 'pens'),(4, 'pencil'), (5, 'pens'), (1, 'pencil'), (7, 'pencil'), (7,'pens'), (6, 'lastic');


SELECT * FROM users;
SELECT * FROM orders;

-- решение

SELECT u.name, COUNT(o.id) FROM users AS u JOIN orders AS o ON o.user_id = u.id GROUP BY u.name;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
DROP TABLE IF EXISTS products;
CREATE TABLE products (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
catalog_id INT UNSIGNED NOT NULL,
sku VARCHAR(250));

INSERT INTO products (catalog_id, sku) VALUES (1, 'red pens'),(1, 'red pencil'), (2, 'blue pens'), (1, 'blue pencil'), (1, ' green pencil'), (2,' black pens'), (1, 'lastic');

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(250));

INSERT INTO catalogs (name) VALUES ('Для школы'),('Для офиса'), ('Для дома');


SELECT * FROM products;
SELECT * FROM catalogs;
-- решение
SELECT p.sku, c.name AS catalogs FROM products AS p RIGHT JOIN catalogs AS c ON p.catalog_id = c.id;


/* 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.*/


DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
from_city VARCHAR(250),
to_city VARCHAR(250));

INSERT INTO flights (from_city, to_city) VALUES ('moscow','omsk'),('novgorod','kazan'), ('irkutsk', 'moscow'), ('omsk', 'irkutsk'), ('moscow','kazan');


DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
label VARCHAR(250),
name VARCHAR(250));

INSERT INTO cities (label, name) VALUES ('moscow','Москва'),('irkutsk','Иркутск'), ('novgorod', 'Новгород'), ('kazan', 'Казань'), ('omsk','Омск');

SELECT * FROM flights ;
-- решение
SELECT flights.id, f.name AS 'from' , t.name AS 'to' FROM flights 
JOIN cities AS f ON flights.from_city = f.label 
JOIN cities AS t ON flights.to_city = t.label ORDER BY flights.id;

