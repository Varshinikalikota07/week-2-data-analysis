-- Week 2 Data Analysis Project: SQL Queries

-- 1. Display the first five rows
SELECT *
FROM sales
LIMIT 5;

-- 2. Filter sales from the South region
SELECT *
FROM sales
WHERE region = 'South';

-- 3. Calculate total revenue by category
SELECT
    category,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 4. Find the top five customers
SELECT
    customer_name,
    SUM(total_price) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- 5. Calculate average order value
SELECT AVG(total_price) AS average_order_value
FROM sales;

-- 6. Count orders in each category
SELECT
    category,
    COUNT(*) AS order_count
FROM sales
GROUP BY category
ORDER BY order_count DESC;

-- 7. Classify orders using CASE
SELECT
    order_id,
    customer_name,
    total_price,
    CASE
        WHEN total_price >= 10000 THEN 'High'
        WHEN total_price >= 5000 THEN 'Medium'
        ELSE 'Low'
    END AS order_size
FROM sales;