/* 
 * Данного функционала нет на сайте, я не смогла там найти, подходящих сценариев 
 * для процедуры, поэтому эта процедура придумана. Она предлагает пользователю 
 * три наиболее часто покупаемых им товара
 */

DROP PROCEDURE IF EXISTS popular_item;

DELIMITER //

CREATE PROCEDURE popular_item (IN customer_id INT)
	BEGIN
		SELECT 
		 COUNT(ol.item_id) AS total,
		 ol.item_id,
		 p.still,
		 p.vol,
		 p.name
		 FROM orderslist AS ol
		 JOIN orders AS o ON o.user_id = customer_id
		 JOIN products AS p ON p.id = ol.item_id
		 WHERE ol.order_id = o.id
		 GROUP BY ol.item_id 
		 LIMIT 3;
	END//

	-- проверка
CALL popular_item (7);