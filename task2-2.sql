# Практическое задание теме “Агрегация данных”
# Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
# Следует учесть, что необходимы дни недели текущего года, а не года рождения.

USE test_lesson_5;

SELECT count(birthday_at) AS count_birthday,  DAYNAME(date_add(birthday_at,
								INTERVAL Year(now())-Year(birthday_at) YEAR)) as day_week
															FROM USERS group by day_week ;
