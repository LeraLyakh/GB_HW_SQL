-- ex_1 -- �������� ������������ � id = 5

SELECT 
	CONCAT(u.firstname, ' ', u.lastname) as receiver,
	CONCAT(u2.firstname, ' ', u2.lastname) as sender,
	COUNT(*) AS num_of_messages
FROM users AS u 
JOIN messages AS m ON u.id = m.to_user_id
JOIN users AS u2 ON u2.id = m.from_user_id 
WHERE u.id = 5
GROUP BY u2.id
LIMIT 1;

-- ex_2
-- ��� ���� �������� �������� ������ �������� ������ �� ���������� ������ �������
-- ������� � ������ �������� ���� ��� ������ ��� ����������))
SELECT 
	CONCAT(u.firstname, ' ', u.lastname) as kiddo,
	(YEAR(NOW())-YEAR(p.birthday)) as age,
	m.filename as cont,
	COUNT(l.id)
FROM users u 
JOIN profiles p ON u.id = p.user_id 
JOIN media m ON m.user_id = p.user_id 
JOIN likes l ON l.media_id = m.id 
WHERE YEAR(NOW())-YEAR(p.birthday) < 10
GROUP BY kiddo;

-- � ��� ��� ���� ��������� �������
SELECT -- ������� ���� ������
	COUNT(*) AS all_kiddo_likes
FROM users u 
JOIN profiles p ON u.id = p.user_id 
JOIN media m ON m.user_id = p.user_id 
JOIN likes l ON l.media_id = m.id 
WHERE YEAR(NOW())-YEAR(p.birthday) < 10;

-- ex_3
SELECT 
	CASE (gender)
         WHEN 'm' THEN 'male'
         WHEN 'f' THEN 'female'
    END AS gender,
    COUNT(*)
FROM profiles AS p 
JOIN likes AS l ON l.user_id = p.user_id 
GROUP BY gender
LIMIT 1;