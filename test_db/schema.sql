-- Create Database

CREATE DATABASE test_db;
USE test_db;

-- =========================
-- CUSTOMERS TABLE
-- =========================

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers (name, email, city, signup_date) VALUES
('Rahul Sharma', 'rahul@gmail.com', 'Hyderabad', '2024-01-10'),
('Sneha Reddy', 'sneha@gmail.com', 'Bangalore', '2024-02-15'),
('Arjun Verma', 'arjun@gmail.com', 'Delhi', '2024-03-05'),
('Priya Singh', 'priya@gmail.com', 'Mumbai', '2024-03-20'),
('Kiran Kumar', 'kiran@gmail.com', 'Chennai', '2024-04-01'),
('Anjali Mehta', 'anjali@gmail.com', 'Pune', '2024-04-10'),
('Vikram Rao', 'vikram@gmail.com', 'Hyderabad', '2024-04-18'),
('Neha Kapoor', 'neha@gmail.com', 'Delhi', '2024-04-25'),
('Rohit Jain', 'rohit@gmail.com', 'Jaipur', '2024-05-02'),
('Divya Nair', 'divya@gmail.com', 'Kochi', '2024-05-05');

-- =========================
-- PRODUCTS TABLE
-- =========================

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (name, category, price, stock) VALUES
('iPhone 14', 'Electronics', 79999, 50),
('Samsung Galaxy S23', 'Electronics', 74999, 40),
('Laptop Dell Inspiron', 'Electronics', 65000, 30),
('Boat Headphones', 'Accessories', 1999, 100),
('Nike Running Shoes', 'Footwear', 4999, 60),
('Adidas T-Shirt', 'Clothing', 1499, 120),
('Wooden Study Table', 'Furniture', 8999, 20),
('Office Chair', 'Furniture', 6999, 25),
('Smart Watch', 'Electronics', 2999, 80),
('Backpack', 'Accessories', 999, 150);

-- =========================
-- ORDERS TABLE
-- =========================

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(20),
    
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

INSERT INTO orders (customer_id, product_id, quantity, order_date, total_amount, status) VALUES
(1, 1, 1, '2024-05-01', 79999, 'Delivered'),
(2, 4, 2, '2024-05-02', 3998, 'Delivered'),
(3, 3, 1, '2024-05-03', 65000, 'Shipped'),
(4, 5, 1, '2024-05-04', 4999, 'Delivered'),
(5, 2, 1, '2024-05-05', 74999, 'Cancelled'),
(6, 6, 3, '2024-05-06', 4497, 'Delivered'),
(7, 9, 2, '2024-05-07', 5998, 'Shipped'),
(8, 7, 1, '2024-05-08', 8999, 'Delivered'),
(9, 10, 4, '2024-05-09', 3996, 'Pending'),
(10, 8, 1, '2024-05-10', 6999, 'Delivered'),
(1, 4, 1, '2024-05-11', 1999, 'Delivered'),
(2, 5, 2, '2024-05-12', 9998, 'Shipped'),
(3, 10, 2, '2024-05-13', 1998, 'Delivered'),
(4, 1, 1, '2024-05-14', 79999, 'Pending'),
(6, 9, 1, '2024-05-15', 2999, 'Delivered');