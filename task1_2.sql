# Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR
# и в них долгое время помещались значения в формате "20.10.2017 8:10". 
# Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

CREATE DATABASE IF NOT EXISTS test_lesson_5;
USE test_lesson_5;

drop table if exists users;

# создание таблицы users
CREATE TABLE IF NOT EXISTS users (id SERIAL,first_name VARCHAR(30) UNIQUE,last_name VARCHAR (30) UNIQUE,
					created_at VARCHAR (20), updated_at VARCHAR (20));
  # заполнение
INSERT INTO  users (first_name,last_name,created_at,updated_at) 
SELECT first_name,last_name,'20.10.2017 8:10', '20.10.2017 7:10'  FROM vk.users limit 10;

# преобразование
UPDATE users SET created_at =STR_TO_DATE(created_at,'%d.%m.%Y %T'),
				updated_at =STR_TO_DATE(updated_at,'%d.%m.%Y %T');

ALTER TABLE users MODIFY COLUMN created_at DATETIME, MODIFY COLUMN  updated_at DATETIME;

select * from users;
