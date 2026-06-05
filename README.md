**SQL Data Analysis Project**
Project Overview
This project demonstrates SQL-based analysis of an E-Commerce dataset to extract business insights using filtering, aggregation, grouping, and sorting operations.

Objectives
•	Analyse transactional sales data 
•	Generate business reports using SQL 
•	Identify top-performing products 
•	Evaluate customer purchasing behaviour 
•	Examine payment preferences and order status trends 

Tools & Technologies
•	SQL 
•	MySQL 
•	Excel 
•	GitHub 

Skills Demonstrated
•	SQL Queries 
•	Data Analysis 
•	Data Aggregation 
•	Business Intelligence 
•	Reporting 
•	Data Cleaning 
•	Problem Solving 

Dataset Information
Metric	Value
Total Records	1,200
Dataset Type	E-Commerce Orders
Analysis Tool	SQL
Project Type	Business Intelligence

Key Findings
KPI	Result
Total Orders	1,200
Total Revenue	₹1,264,761.96
Average Order Value	₹1,053.97
Top Product	Chair
Most Used Payment Method	Online

Business Insights
•	Chairs generated the highest revenue. 
•	Online payments are preferred by customers. 
•	Order cancellations and returns require operational improvements. 
•	Revenue is concentrated among a few high-performing products. 

SQL Queries (15 Queries)
1. Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;
2. Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM orders;
3. Average Order Value
SELECT AVG(total_amount) AS average_order_value
FROM orders;


4. Top 5 Products by Revenue
SELECT product_name,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;
5. Orders by Status
SELECT order_status,
       COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY total_orders DESC;
6. Payment Method Analysis
SELECT payment_method,
       COUNT(*) AS usage_count
FROM orders
GROUP BY payment_method
ORDER BY usage_count DESC;
7. Revenue by Product Category
SELECT category,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY category
ORDER BY revenue DESC;
8. Monthly Revenue Trend
SELECT MONTH(order_date) AS month,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;
9. Top 10 Cities by Revenue
SELECT city,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY city
ORDER BY revenue DESC
LIMIT 10;


10. Highest Selling Products
SELECT product_name,
       SUM(quantity) AS units_sold
FROM orders
GROUP BY product_name
ORDER BY units_sold DESC;
11. Average Revenue per Product
SELECT product_name,
       AVG(total_amount) AS avg_revenue
FROM orders
GROUP BY product_name;
12. Orders Above Average Value
SELECT *
FROM orders
WHERE total_amount >
(
SELECT AVG(total_amount)
FROM orders
);
13. Revenue Contribution Percentage
SELECT category,
ROUND(
SUM(total_amount) * 100 /
(SELECT SUM(total_amount) FROM orders),2
) AS revenue_percentage
FROM orders
GROUP BY category;
14. Most Frequently Purchased Products
SELECT product_name,
       COUNT(*) AS frequency
FROM orders
GROUP BY product_name
ORDER BY frequency DESC;
15. Categories with Revenue Above ₹100,000
SELECT category,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY category
HAVING revenue > 100000;

Project Results
Revenue by Top Products
Product	Revenue
Chair -	₹195,620.11
Printer	- ₹195,612.61
Laptop	- ₹192,126.56
Tablet -	₹186,568.95
Monitor -	₹175,651.41

Order Status Distribution
Status	Orders
Cancelled -	250
Returned	- 247
Pending	- 237
Shipped	- 235
Delivered	- 231

Payment Method Distribution
Method	- Orders
Online	- 258
Cash	- 246
Credit Card	- 234
Debit Card	- 232
Gift Card	- 230

 
