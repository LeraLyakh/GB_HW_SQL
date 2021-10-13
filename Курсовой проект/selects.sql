/*
 * Выясним, какую воду чаще заказывают газированную или обычную
 */

SELECT 
(SELECT 
	CASE (p.still)
		WHEN 1 THEN 'still'
		WHEN 0 THEN 'sparkling'
	END ) AS still,
COUNT(*) AS num
FROM orderslist AS o
JOIN products AS p ON p.id = o.item_id 
GROUP BY still; 

/*
 * Найдем пользователей, которые заказывали больше всех воды (количество 
 * единиц товара) среди заказов с московского склада, при этом
 * общее количество заказанных бутылок должно быть больше 100
 */

SELECT 
CONCAT (u.firstname, ' ', u.lastname) AS name,
SUM(ol.num) AS bottles
FROM users_info AS u
JOIN orders AS o ON o.user_id = u.user_id 
JOIN orderslist AS ol ON ol.order_id = o.id 
JOIN availability AS a ON a.id_item = ol.item_id 
WHERE a.id_storehouse = 1
GROUP BY name
HAVING bottles >= 100;

/*
 * Найдем склад, который обсуживает больше всего заказов 
 * (отправляет больше всего товара)
 */
SELECT 
s.address,
COUNT(*) AS bottles
FROM orderslist AS o 
JOIN availability AS a ON a.id_item = o.item_id 
JOIN storehouses AS s ON s.id = a.id_storehouse 
GROUP BY address
ORDER BY bottles DESC;
