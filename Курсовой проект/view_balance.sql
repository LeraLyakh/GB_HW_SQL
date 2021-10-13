
/*
 * Это представление показывает, скольно останется на балансе товаров
 * после выполнения всех заказов
 */

DROP VIEW IF EXISTS balance_after_orders;
CREATE VIEW balance_after_orders 
AS
	SELECT 
	a.id_item,
	p.still,
	p.vol,
	c.name,
	(a.num - a.reserved) AS balance,
	s.address 
	FROM availability AS a
	JOIN products AS p ON p.id = a.id_item 
	JOIN category AS c ON c.id = p.category_id 
	JOIN storehouses AS s ON s.id = a.id_storehouse 
	ORDER BY balance
	
	

SELECT * FROM balance_after_orders 
WHERE balance < 10000;