USE ecommerce_analysis

SHOW TABLES;

DROP TABLE ecommerce_sales;

--total records
SELECT COUNT(*) AS total_records
FROM ecommerce_sales_analysis;

--See the data
SELECT *
FROM ecommerce_sales_analysis
LIMIT 5;

--Total Sales
SELECT SUM(sales) AS total_sales
FROM ecommerce_sales_analysis;

--Total Profit
SELECT SUM(profit) AS total_profit
FROM ecommerce_sales_analysis;

--Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM ecommerce_sales_analysis
GROUP BY category
ORDER BY total_sales DESC;

--Profit by Category
SELECT category, SUM(profit) AS total_profit
FROM ecommerce_sales_analysis
GROUP BY category
ORDER BY total_profit DESC;

--Sales by State
SELECT state, SUM(sales) AS total_sales
FROM ecommerce_sales_analysis
GROUP BY state
ORDER BY total_sales DESC;

--Orders by Status
SELECT `Order Status`, COUNT(*) AS total_orders
FROM ecommerce_sales_analysis
GROUP BY `Order Status`
ORDER BY total_orders DESC;

DESCRIBE ecommerce_sales_analysis;

--Top 10 Products by Sales
SELECT `Product Name`, SUM(Sales) AS total_sales
FROM ecommerce_sales_analysis
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 10;

--Sales by Year
SELECT Year, SUM(Sales) AS total_sales
FROM ecommerce_sales_analysis
GROUP BY Year
ORDER BY Year;

--Profit by Brand
SELECT Brand, SUM(Profit) AS total_profit
FROM ecommerce_sales_analysis
GROUP BY Brand
ORDER BY total_profit DESC;

--Step 11 — Average Customer Rating
SELECT AVG(Ratings) AS average_rating
FROM ecommerce_sales_analysis;

--Sales by Payment Mode
SELECT `Payment Mode`, SUM(Sales) AS total_sales
FROM ecommerce_sales_analysis
GROUP BY `Payment Mode`
ORDER BY total_sales DESC;

--Step 12 — Sales by Shipping Mode
SELECT `Shipping Mode`, SUM(Sales) AS total_sales
FROM ecommerce_sales_analysis
GROUP BY `Shipping Mode`
ORDER BY total_sales DESC;