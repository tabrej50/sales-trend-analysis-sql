# 📊 Sales Trend Analysis Using SQL

## 📄 Overview
This project analyzes monthly revenue and order volume from an online sales dataset using SQL. The purpose is to explore sales trends, identify top-performing months, and demonstrate the use of SQL aggregation and time-based grouping techniques.

---

## 🗃️ Dataset
- **File Name:** `Salesdata.csv`
- **Fields:**
  - `order_id` – Unique ID for each order
  - `order_date` – Date the order was placed
  - `product_id` – Product identifier
  - `amount` – Revenue from the order

---

## 🛠 Tools & Technologies
- MySQL (SQL)
- SQL aggregation functions (`SUM`, `COUNT`)
- Time functions (`YEAR`, `MONTH`, `DATE_FORMAT`)
- GitHub for version control

---

## 📌 Objectives
- Extract and group sales data by month and year  
- Calculate monthly revenue  
- Count monthly order volume  
- Identify top 3 months by revenue  

---

## 📑 SQL Queries

### 1. View the Raw Data
```sql
SELECT * FROM sales.salesdata;
```

# 2. Create the Table
```sql
CREATE TABLE salesdata (
    order_id TEXT,
    order_date DATE,
    product_id TEXT,
    amount REAL
);
```

# 3. Monthly Revenue and Order Volume
```sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    salesdata
GROUP BY
    year, month
ORDER BY
    year, month;
```

# 4. Top 3 Months by Revenue
```sql
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_month,
    SUM(amount) AS total_revenue
FROM salesdata
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 3;
```

# 5. Monthly Revenue and Order Volume (Repeat/Validation)
```sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    salesdata
GROUP BY
    year, month
ORDER BY
    year, month;
```

### 6. Top 3 Months by Revenue (Repeat/Validation)
```sql
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS year_month,
    SUM(amount) AS total_revenue
FROM salesdata
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 3;
```

# 📈 Insights
- The monthly grouping identifies trends in revenue and order volume.
- The top 3 revenue months reveal periods of high sales performance, which can inform marketing and inventory strategies.

# 📁 Files Included
- `sales_trend_analysis.sql` – Full SQL script  
- `Salesdata.csv` – Source dataset

