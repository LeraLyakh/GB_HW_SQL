

DROP PROCEDURE IF EXISTS hello;
DELIMITER //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT '������ ����';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT '������ ����';
		WHEN CURTIME() BETWEEN '18:00:00' AND '00:00:00' THEN
			SELECT '������ �����';
		ELSE
			SELECT '������ ����';
	END CASE;
END //


DELIMITER ;

CALL hello();
