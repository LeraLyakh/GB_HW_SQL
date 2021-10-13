-- ex_1
SELECT AVG(YEAR(NOW())-YEAR(birthday_at)) FROM users;

-- ex_2
SELECT 
DAYNAME(DATE_ADD(birthday_at, INTERVAL (YEAR(NOW())-YEAR(birthday_at)) YEAR)) as day_at,
COUNT(*)
FROM users 
GROUP BY(day_at);

-- ex_3
SELECT sum(value) FROM tbl;