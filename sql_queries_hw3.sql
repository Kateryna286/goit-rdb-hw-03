USE hw3;

-- 1.1 --

SELECT * FROM products;

-- 1.2 --

SELECT name, phone FROM shippers;

-- 2 --

SELECT 
    AVG(price) as avg_price, 
	MAX(price) as max_price, 
	MIN(price) as min_price
FROM products;

-- 3 --

SELECT DISTINCT category_id, price 
FROM products
ORDER BY price DESC
LIMIT 10;

-- 4 --

SELECT COUNT(id) AS product_count
FROM products
WHERE price between 20 and 100;

-- 5 --

SELECT supplier_id, COUNT(id) AS product_count, 
AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;
