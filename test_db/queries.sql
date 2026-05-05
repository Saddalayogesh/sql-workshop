SELECT * 
FROM test_db.customers;

SELECT id, order_date,total_amount,status 
FROM orders;

SELECT name,category,price,stock
FROM products;

SELECT id AS customer_id ,
	   name AS customer_name,
       email AS customer_email,
       city AS customer_city,
       signup_date AS customer_signup_date
FROM customers;

SELECT * 
FROM products 
WHERE price > 4000 AND stock >=40;

SELECT *
FROM orders
WHERE status IN ('Delivered','Pending');

SELECT name,email 
FROM customers 
WHERE city IN('Hyderabad','Delhi','Pune');

SELECT name,price,category 
FROM products
WHERE category IN ('Electronics','Furniture');

SELECT *
FROM products 
WHERE price BETWEEN 2000 AND 10000;

SELECT * 
FROM customers 
WHERE name LIKE 'R%';

SELECT * 
FROM products
WHERE name LIKE '%phone%';

SELECT * 
FROM customers
WHERE name LIKE 'A____';

use test_db;

SELECT * FROM customers
ORDER BY name ASC;

SELECT * FROM orders
ORDER BY order_date DESC;

SELECT * 
FROM orders
ORDER BY status ASC, total_amount DESC;

SELECT * 
FROM products
ORDER BY category ASC, price DESC;

SELECT COUNT(*)
AS total_orders 
FROM orders;

SELECT SUM(total_amount) 
AS total_amount
FROM orders;

SELECT AVG(price) 
AS avg_price
FROM products;

SELECT * 
FROM products 
order by price ASC
LIMIT 1;

SELECT *
FROM products
WHERE price =(SELECT MAX(price) FROM products )
OR
	  price =(SELECT MIN(price) FROM products );
			  











