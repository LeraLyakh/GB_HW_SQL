DROP TRIGGER IF EXISTS ex_2;
DELIMITER //
CREATE TRIGGER ex_2 BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '���� name � description �� ���������';
	END IF;
END //
DELIMITER ;

-- ��������
INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 12345, 1);