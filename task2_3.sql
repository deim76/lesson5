# Практическое задание теме “Агрегация данных”
# Подсчитайте произведение чисел в столбце таблицы
USE test_lesson_5;

DROP TABLE IF EXISTS test_numbers;
CREATE TABLE test_numbers (
  id SERIAL PRIMARY KEY,
  number INT NOT NULL);

INSERT INTO test_numbers
  (number)
VALUES
  (1), (2), (3), (4), (5);
  
SELECT round(exp(SUM(ln(number))),2) FROM test_numbers;
