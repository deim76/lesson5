#Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
# Отсортируйте записи в порядке, заданном в списке IN.

USE test_lesson_5;

SELECT * FROM catalogs WHERE id IN (5, 1, 2) order by FIELD (id, 5, 1, 2)