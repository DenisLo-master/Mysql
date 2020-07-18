DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(id INT,
name VARCHAR(255) COMMENT 'Название') COMMENT 'Таблица пользователей';

-- команда в терминале
-- mysqldump example > sample.sql

CREATE DATABASE IF NOT EXISTS sample;

-- команда в терминале
-- mysql sample < sample.sql;
-- mysqldump --where='0 limit 100' mysql help_keyword > keyword.sql

