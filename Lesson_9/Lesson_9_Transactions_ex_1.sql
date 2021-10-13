
START TRANSACTION;

USE sample;
INSERT INTO sample.users 
SELECT * FROM shop.users
WHERE shop.users.id = 1;

USE shop;
DELETE FROM shop.users 
WHERE shop.users.id = 1;

COMMIT;