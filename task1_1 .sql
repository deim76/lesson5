#Пусть в таблице users поля created_at и updated_at оказались незаполненными.
# Заполните их текущими датой и временем.
CREATE DATABASE IF NOT EXISTS test_lesson_5;
USE test_lesson_5;

# создание таблицы users
CREATE TABLE IF NOT EXISTS users (id SERIAL,first_name VARCHAR(30) UNIQUE,last_name VARCHAR (30) UNIQUE,
					created_at DATETIME, updated_at DATETIME);
  # заполнение
#INSERT INTO  users (first_name,last_name) 
#SELECT first_name,last_name FROM vk.users limit 10;

UPDATE  users SET created_at=now() where created_at is NULL;
UPDATE users SET updated_at=now() where updated_at IS NULL;
select * from users
