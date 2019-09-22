/* В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0,
 если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом,
 чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.*/

select 
(select name from storehouses where id=storehouse_id), 
(select name from products where id=product_id),
 value from storehouses_products ORDER BY (case when value=0 then 1 else 0 end), value;
