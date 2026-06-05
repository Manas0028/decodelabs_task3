-- SQL Data Analysis Project

SELECT COUNT(*) AS total_orders FROM orders;

SELECT SUM(total_amount) AS total_revenue FROM orders;

SELECT AVG(total_amount) AS avg_order_value FROM orders;

SELECT product_name, SUM(total_amount) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC;

SELECT order_status, COUNT(*) AS orders_count
FROM orders
GROUP BY order_status
ORDER BY orders_count DESC;

SELECT payment_method, COUNT(*) AS usage_count
FROM orders
GROUP BY payment_method
ORDER BY usage_count DESC;
