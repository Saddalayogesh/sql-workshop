-- Total orders per customer
SELECT 
    c.first_name,
    COUNT(o.id) AS total_orders
FROM customers c
LEFT JOIN orders o 
    ON c.id = o.customer_id
GROUP BY c.id;


-- Total amount spent by each customer
SELECT 
    c.first_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
INNER JOIN orders o 
    ON c.id = o.customer_id
GROUP BY c.id;


-- Customers with more than one order
SELECT 
    c.first_name,
    COUNT(o.id) AS order_count
FROM customers c
JOIN orders o 
    ON c.id = o.customer_id
GROUP BY c.id
HAVING COUNT(o.id) > 1;


-- Category-wise product count
SELECT 
    c.name AS category_name,
    COUNT(p.id) AS product_count
FROM categories c
LEFT JOIN products p 
    ON c.id = p.category_id
GROUP BY c.id;


-- Average price per category
SELECT 
    c.name,
    ROUND(AVG(p.price), 2) AS avg_price
FROM categories c
JOIN products p 
    ON c.id = p.category_id
GROUP BY c.id;


-- Highest order value
SELECT 
    MAX(total_amount) AS highest_order_value
FROM orders;


-- Orders with payment details
SELECT 
    o.id AS order_id,
    p.payment_method,
    p.payment_status
FROM orders o
JOIN payments p 
    ON o.id = p.order_id;


-- Pending payments
SELECT 
    order_id,
    payment_method,
    payment_status
FROM payments
WHERE payment_status = 'PENDING';


-- Orders with shipment status
SELECT 
    o.id AS order_id,
    s.courier_name,
    s.shipment_status
FROM orders o
JOIN shipments s 
    ON o.id = s.order_id;


-- Products never ordered
SELECT 
    p.name
FROM products p
LEFT JOIN order_items oi 
    ON p.id = oi.product_id
WHERE oi.id IS NULL;


-- Top 3 customers by spending
SELECT 
    c.first_name,
    SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
    ON c.id = o.customer_id
GROUP BY c.id
ORDER BY total_spent DESC
LIMIT 3;


-- Revenue by payment method
SELECT 
    payment_method,
    SUM(paid_amount) AS total_revenue
FROM payments
GROUP BY payment_method;


-- Orders with customer city
SELECT 
    o.id AS order_id,
    a.city
FROM orders o
JOIN addresses a 
    ON o.shipping_address_id = a.id;


-- Most expensive product
SELECT *
FROM products
WHERE price = (
    SELECT MAX(price) 
    FROM products
);


-- Products above average stock
SELECT 
    name,
    stock
FROM products
WHERE stock > (
    SELECT AVG(stock) 
    FROM products
);