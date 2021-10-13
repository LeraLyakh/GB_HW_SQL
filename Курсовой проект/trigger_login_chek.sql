/*
 * Этот триггер проверяет корректно ли пользователь ввел адрес почтового ящика 
 * В качестве проверки триггер сравнивает введеные данные с паттерном, в котором
 * обязательно в середине слова присутствует знак @ 
 */

DROP TRIGGER IF EXISTS login_check;

DELIMITER //

CREATE TRIGGER login_check BEFORE INSERT ON users
FOR EACH ROW
BEGIN 
	IF NEW.email NOT LIKE '%@%' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Incorrect e-mail. Please check your data';
	END IF;
END//

DELIMITER ;

INSERT INTO users (email, user_password) VALUES 
	('kljdlknsc', 'knd8njkdcjsk39dn');


