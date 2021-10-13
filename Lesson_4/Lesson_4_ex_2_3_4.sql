-- ex 2

SELECT firstname FROM users ORDER BY firstname 

-- ex 3

ALTER TABLE profiles 
ADD COLUMN is_active BOOL DEFAULT TRUE;

UPDATE profiles 
SET is_active = FALSE
WHERE birthday > CURRENT_DATE() - INTERVAL 18 YEAR;

SELECT  -- ������ ������������� ������ 18 
user_id, 
birthday,
is_active,
(YEAR(CURRENT_DATE)-YEAR(birthday)) AS age 
FROM profiles
WHERE birthday > CURRENT_DATE() - INTERVAL 18 YEAR;

-- ex 4
-- � ���� ��� ��������� �� ��������, ������� � ������ � �� �������
UPDATE messages 
SET created_at = created_at + INTERVAL 100 YEAR
WHERE from_user_id BETWEEN 10 AND 15;
-- ������ ��������� �� ��������
SELECT * FROM messages 
WHERE created_at > CURRENT_DATE;

-- ������ ����� ��������� �� ��������
DELETE FROM messages 
WHERE created_at > CURRENT_DATE;

-- ��������� ��������� �� ��������
SELECT * FROM messages 
WHERE created_at > CURRENT_DATE;
-- ������ ��� ���������
SELECT * FROM messages;
