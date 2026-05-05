# 📊 SQL Workshop Project

## 🚀 Overview

This project contains SQL scripts created during a hands-on SQL workshop.
It demonstrates database creation, table design, data insertion, and various query operations used in real-world applications.

---

## 🗂️ Project Structure

```id="v1mxq5"
sql_workshop/

├── basics_test_db/
│   ├── schema.sql
│   ├── queries.sql

├── ecommerce_db/
│   ├── schema.sql
│   ├── queries.sql

└── README.md
```

---

# 🧪 1. SQL Workshop Project (Basics)

### 📌 Database: `test_db`

### 🧱 Tables

* 👤 Customers → id, name, email, city, signup_date
* 🛍️ Products → id, name, category, price, stock
* 📦 Orders → id, customer_id, product_id, quantity, total_amount, status

### 🔧 Features Covered

* SELECT queries
* WHERE filtering (AND, OR, IN, BETWEEN, LIKE)
* ORDER BY sorting
* Aggregations (COUNT, SUM, AVG)
* Subqueries

### 🧪 Sample Query

```sql id="cf1wvy"
SELECT * FROM products
WHERE price > 4000 AND stock >= 40;
```

---

# 🛒 2. E-Commerce Database Project

### 📌 Database: `e_commerce_db`

### 🧱 Tables

* Customers
* Categories
* Products
* Addresses
* Carts & Cart Items
* Orders & Order Items
* Payments
* Shipments

### 🔗 Relationships

* Customers → Orders → Order Items → Products
* Products → Categories
* Orders → Payments → Shipments
* Customers → Carts → Cart Items

### 🔧 Features Covered

* Complex joins
* Multi-table relationships
* Aggregations and analytics
* Real-world business logic

### 🧪 Sample Query

```sql id="j6n7k1"
SELECT c.first_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id;
```

---

## ▶️ How to Run

### Run Basics Project

```sql id="t0rt6g"
SOURCE basics_test_db/schema.sql;
SOURCE basics_test_db/queries.sql;
```

### Run E-Commerce Project

```sql id="0hgt9x"
SOURCE ecommerce_db/schema.sql;
SOURCE ecommerce_db/queries.sql;
```

---

## 🧠 Learning Outcomes

* Understanding relational database design
* Writing efficient SQL queries
* Working with joins, aggregations, and subqueries
* Building real-world database systems

---

## 🛠️ Technologies Used

* SQL
* MySQL

---

## 📌 Author

**Saddala Yogesh**

---

## 🌟 Future Improvements

* Add advanced JOIN queries
* Implement indexing for performance
* Build backend using Java (JDBC / Spring Boot)
* Create a frontend interface for database interaction
