/*
 * Представление, в котором по номерам заказов выбраны адреса доставки, 
 * заказчики и их контактные номера
 */

DROP VIEW IF EXISTS order_shippment;
CREATE OR REPLACE VIEW order_shippment
AS
	SELECT 
	o.id AS order_num,
	a.address AS address,
	u.user_id,
	CONCAT(u.firstname,' ',u.lastname) AS name,
	u.phone 
	FROM orders as o
	JOIN addresses AS a ON a.id = o.address_id 
	JOIN users_info AS u ON u.user_id = o.user_id 
	ORDER BY o.id
	
SELECT * FROM order_shippment
WHERE user_id = 2;