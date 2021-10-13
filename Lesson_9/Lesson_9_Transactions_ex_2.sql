DROP VIEW IF EXISTS ex_2;
CREATE VIEW ex_2 AS
SELECT 
p.name as item,
c.name as type_of_item
FROM products p
JOIN catalogs c ON c.id = p.catalog_id
ORDER by p.name;

SELECT * FROM ex_2;