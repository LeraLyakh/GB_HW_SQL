-- ex_1

INSERT INTO orders (user_id) VALUES -- добавим значения в пустую таблицу
  ('3'), ('4'), ('6'), ('3'), ('2'), ('3'), ('1'), ('3'), ('3');
  
SELECT 
name
FROM users
WHERE id IN (SELECT user_id FROM orders)

-- ex_2

SELECT
name,
(SELECT name FROM catalogs WHERE id = catalog_id)
FROM products;

-- ex_3
-- Создадим таблицы с рейсами и словарем
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_c VARCHAR(30),
  to_c VARCHAR(30)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(30),
  name VARCHAR(30)
);
-- Заполним получившиеся таблицы данными
INSERT INTO flights (from_c, to_c) VALUES
	('moscow','omsk'),
	('novgorod','kazan'),
	('irkutsk','moscow'),
	('omsk','irkutsk'),
	('moscow','kazan');
	
INSERT INTO cities (label, name) VALUES
	('moscow','Москва'),
	('novgorod','Новгород'),
	('irkutsk','Иркутск'),
	('kazan','Казань'),
	('omsk','Омск');
-- Выполним требуемый вывод	
SELECT 
id,
(SELECT name FROM cities WHERE label = from_c) as from_c,
(SELECT name FROM cities WHERE label = to_c) as to_c
FROM flights;