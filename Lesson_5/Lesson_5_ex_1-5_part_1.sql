-- ex_1
UPDATE users
SET created_at = now(), updated_at = now();

-- ex_2
ALTER TABLE users -- ������ �������, ���� �������� ��������� ������
ADD c_at DATETIME;
ALTER TABLE users 
ADD u_at DATETIME;

ALTER TABLE users -- ������ ������� � ���������� �������
ADD text_c_at VARCHAR(50);
ALTER TABLE users 
ADD text_u_at VARCHAR(50);

UPDATE users -- ������� �� �������� ������� (����������) ������ � �������, ����� ��������� ��������� ������
SET text_c_at = created_at;
UPDATE users 
SET text_u_at = updated_at;

UPDATE users -- �������� � ������� � ����� ������ DATETIME 
SET c_at = text_c_at;
UPDATE users 
SET u_at = text_u_at;

-- ex_3 ����� ����������� �������, ������ � NULL � ��������� 
-- �������� � ���������. �� ����� �� �������, ��� ��� ��������
-- �������� �� �������� ����������� ����� ������ ��� ��
-- ���������� � ���� �������
SELECT * FROM storehouses_products 
ORDER BY CASE WHEN value = 0 THEN 1 ELSE 0 END, value;

-- ex_4
SELECT name FROM users
WHERE MONTH (birthday_at) IN (5, 6);

-- ex_5
SELECT * FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY CASE WHEN id = 5 THEN 0 ELSE 1 END, id;
