-- Sales Analysis Project

-- Products with price greater than 1000
SELECT *
FROM goldfact_sales
WHERE price > 1000;

-- Top 5 customers by number of orders
SELECT customer_key,
COUNT(order_number) AS total_orders
FROM goldfact_sales
GROUP BY customer_key
ORDER BY total_orders DESC
LIMIT 5;

-- Monthly sales analysis
SELECT
CAST(SUBSTR(order_date,1,INSTR(order_date,'/')-1) AS INT) AS month,
SUM(sales_amount) AS total_sales
FROM goldfact_sales
GROUP BY month
ORDER BY total_sales DESC;

-- Average sales by month
SELECT
CAST(SUBSTR(order_date,1,INSTR(order_date,'/')-1) AS INT) AS month,
AVG(sales_amount) AS avg_sales
FROM goldfact_sales
GROUP BY month
ORDER BY avg_sales DESC;
