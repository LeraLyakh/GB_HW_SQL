-- �� ��������-�������� JEVEA (https://�����.��)
-- � ��������������� ��������-�������� �������������� ������� ����

-- �������� ���� ������
DROP DATABASE IF EXISTS jevea;
CREATE DATABASE jevea;

USE jevea;

-- �������� ������

-- ������� ���������� ����
DROP TABLE IF EXISTS category;
CREATE TABLE category (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) DEFAULT NULL
);
-- ������� ��������
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id bigint UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	name varchar(50) DEFAULT NULL,  -- ������������ ������
	still bit COMMENT '0 - sparkling; 1 - still', -- ������������ ��� ��������������
	vol float COMMENT '� ������',
	category_id BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (category_id) REFERENCES category(id)
);

-- ������� �������
DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	address VARCHAR (100) DEFAULT NULL
);


-- ������� ������� ������
DROP TABLE IF EXISTS availability;
CREATE TABLE availability (
	id_item BIGINT UNSIGNED NOT NULL, --      ���� ������,
	num INT UNSIGNED NOT NULL, --             ��� ����� ����������
	reserved INT UNSIGNED NULL, --            � ���������� ������������������ ������
	id_storehouse BIGINT UNSIGNED NOT NULL,-- �� ���� ������
	
	PRIMARY KEY (id_item),
	FOREIGN KEY (id_item) REFERENCES products(id),
	FOREIGN KEY (id_storehouse) REFERENCES storehouses(id)
);

-- ������� ������
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(100) UNIQUE, -- login
	user_password VARCHAR(20)
);

-- ������� ������� ��������
DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	address VARCHAR (100) DEFAULT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);
-- ������� ���������� �� ������
DROP TABLE IF EXISTS users_info;
CREATE TABLE users_info (
	user_id BIGINT UNSIGNED NOT NULL PRIMARY KEY,
	firstname VARCHAR (50),
	lastname VARCHAR (50),
	phone BIGINT UNIQUE,
	ship BIGINT UNSIGNED NOT NULL,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (ship) REFERENCES addresses(id)
);

-- ������� � ��������
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	address_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (address_id) REFERENCES addresses(id)
);

-- ������� � ���������� ������
/* 
 * �� ���� ��� ��������� � ���� ��������. ��� ������ ���� 
 * �����-�� ��������, ��������� �� ������� � �� ����������� ��������
 * � ����� ������, ��� ��� ����. ������� ���� ��� ������� ������.
 */
DROP TABLE IF EXISTS orderslist;
CREATE TABLE orderslist (
	order_id BIGINT UNSIGNED NOT NULL,
	item_id BIGINT UNSIGNED NOT NULL,
	num INT UNSIGNED NOT NULL,
	
	FOREIGN KEY (order_id) REFERENCES orders(id),
	FOREIGN KEY (item_id) REFERENCES products(id)
);

-- ������� � ���������� �������
DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	product_id BIGINT UNSIGNED NOT NULL,
	name VARCHAR (100),
	kb_size INT,
	
	FOREIGN KEY (product_id) REFERENCES products(id)
);