# 📊 SQL Workshop Project

## 🚀 Overview

This project contains SQL scripts created during a hands-on SQL workshop. It demonstrates database creation, table design, data insertion, and various query operations used in real-world applications.

---

## 🗂️ Project Structure

```
sql_workshop/

├── schema.sql      # Database & table creation

├── queries.sql     # SQL queries for practice

└── README.md       # Project documentation
```

---

## 🧱 Database Design

### 📌 Database: `test_db`

The project includes three main tables:

### 👤 Customers

* Stores customer details
* Fields: `id`, `name`, `email`, `city`, `signup_date`

### 🛍️ Products

* Stores product information
* Fields: `id`, `name`, `category`, `price`, `stock`

### 📦 Orders

* Stores order transactions
* Fields: `id`, `customer_id`, `product_id`, `quantity`, `order_date`, `total_amount`, `status`
* Includes **foreign key relationships**

---

## 🔧 Features Covered

### ✅ Basic Queries

* SELECT statements
* Column selection
* Aliases (`AS`)

### 🔍 Filtering Data

* WHERE conditions
* AND / OR operators
* IN, BETWEEN
* LIKE patterns

### 📊 Sorting

* ORDER BY (ASC, DESC)
* Multiple column sorting

### 📈 Aggregations

* COUNT()
* SUM()
* AVG()

### 🔁 Subqueries

* MAX / MIN using subqueries

---

## 🧪 Example Queries

```sql
-- Get all customers
SELECT * FROM customers;

-- Filter products
SELECT * FROM products 
WHERE price > 4000 AND stock >= 40;

-- Aggregate example
SELECT COUNT(*) AS total_orders FROM orders;

-- Subquery example
SELECT *
FROM products
WHERE price = (SELECT MAX(price) FROM products);
```

---

## ▶️ How to Run

1. Install a database system like MySQL
2. Open your SQL tool (MySQL Workbench / CLI)
3. Run the schema file:

```sql
SOURCE schema.sql;
```

4. Run queries:

```sql
SOURCE queries.sql;
```

---

## 🧠 Learning Outcomes

* Understanding relational database structure
* Writing efficient SQL queries
* Using filtering, sorting, and aggregation
* Working with real-world data scenarios

---

## 🛠️ Technologies Used

* SQL
* MySQL

---

## 📌 Author

* Yogesh

---

## 🌟 Future Improvements

* Add JOIN queries
* Add indexes for performance
* Build a mini project using this database

---

## 🔗 Repository

Hosted on GitHub

---
