CREATE DATABASE IF NOT EXISTS example;
USE example;
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(id SERIAL,
name VARCHAR(255) COMMENT 'Название') COMMENT 'Таблица пользователей';

-- команда в терминале
-- mysqldump example > sample.sql

CREATE DATABASE IF NOT EXISTS sample;

-- команда в терминале
-- mysql sample < sample.sql;



-- mysqldump  mysql help_keyword --where='TRUE ORDER BY help_keyword_id LIMIT 100' > keyword.sql
CREATE DATABASE IF NOT EXISTS keyword;
USE keyword;
-- команда в терминале
-- mysql keyword < keyword.sql
-- ошибка ERROR 3723 (HY000) at line 25: The table 'help_keyword' may not be created in the reserved tablespace 'mysql'.
