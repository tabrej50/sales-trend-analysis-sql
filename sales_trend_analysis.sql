SELECT * FROM sales.salesdata;

CREATE TABLE salesdata (
    order_id TEXT,
    order_date DATE,
    product_id TEXT,
    amount REAL
);

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

SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS year__month,
  SUM(amount) AS total_revenue
FROM salesdata
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 3;


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


SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS year__month,
  SUM(amount) AS total_revenue
FROM salesdata
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY total_revenue DESC
LIMIT 3;



