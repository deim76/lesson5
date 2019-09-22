# Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
# Месяцы заданы в виде списка английских названий ('may', 'august')


USE test_lesson_5;

SELECT * FROM users WHERE MONTHNAME(birthday_at) IN ('May','August');
