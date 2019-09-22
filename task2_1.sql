# Практическое задание теме “Агрегация данных”
# Подсчитайте средний возраст пользователей в таблице users
# P.S месяц рождения не учитывался.

USE test_lesson_5;

SELECT ROUND(AVG(YEAR(NOW())-YEAR(birthday_at)),0) AS avg_old FROM users