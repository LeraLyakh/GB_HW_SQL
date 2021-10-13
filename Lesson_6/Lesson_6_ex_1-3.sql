-- ex 1 �����������, ��� � ��� ������ ������������ � id = 5

SELECT 
(SELECT firstname FROM users WHERE id = messages.from_user_id) as name,
(SELECT lastname FROM users WHERE id = messages.from_user_id) as lastname,
count(*) as max_messages 
FROM messages
WHERE to_user_id = 5 -- id ���������� ������������
GROUP BY from_user_id -- ���������� ��������� �� ������������ ���������� ������������
LIMIT 1; -- ��� ������ ������ ������������, ������� ���� ����� ����� ������������ 5

-- ������:  ��� ����� ��������� � ���� ����� ������� ���������? 
-- �� ���� �� ������ ������� ������ ������������ ����� ������������ 5
-- � � �������� � ��� ���� ������������ 5 � �� ����� �������� 
-- ��� ����������� �� ���� ��� ���� ����� 5 � 16 ��� 16 � 5
-- � ����� ������������� � ������������ 5 ��������� ������
-- ���� ����� �����������, �������� �� ����� ������ �����������
-- �� ��������)
  

-- ex 2 
SELECT -- �������� ��� ����� ����, ����� ������ ������������� ������ 10
(SELECT firstname FROM users WHERE id = profiles.user_id ) as firstname,
(SELECT lastname FROM users WHERE id = profiles.user_id ) as lastname,
user_id
FROM profiles
WHERE YEAR(NOW())-YEAR(birthday) < 10;

SELECT COUNT(*) as got_likes FROM likes -- ������������ ��� ����� �����
WHERE media_id IN -- ���������� �����, ������������� ����� �� 10
(SELECT id FROM media WHERE user_id IN 
(SELECT user_id FROM profiles WHERE YEAR(NOW())-YEAR(birthday) < 10));



-- ex 3
SELECT 
(SELECT 
	CASE (gender)
         WHEN 'm' THEN 'male'
         WHEN 'f' THEN 'female'
    END AS gender
  FROM profiles WHERE user_id = likes.user_id) as gender,
COUNT(*) as likes
FROM likes
GROUP BY gender
limit 1;

