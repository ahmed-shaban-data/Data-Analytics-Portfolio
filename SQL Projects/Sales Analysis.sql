SELECT *
FROM goldfact_sales
WHERE price > 1000;

SELECT customer_key,
COUNT(order_number) AS total_orders
FROM goldfact_sales
GROUP BY customer_key
ORDER BY total_orders DESC
LIMIT 5;

SELECT
CAST(SUBSTR(order_date,1,INSTR(order_date,'/')-1) AS INT) AS month,
SUM(sales_amount) AS total_sales
FROM goldfact_sales
GROUP BY month
ORDER BY total_sales DESC;
