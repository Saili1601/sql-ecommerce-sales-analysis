-- Total Revenue
SELECT SUM(quantity * price) AS total_revenue
FROM sales;

-- Top Selling Products
SELECT product_name,
SUM(quantity) AS total_units_sold
FROM sales
GROUP BY product_name
ORDER BY total_units_sold DESC;

-- Revenue by Country
SELECT country,
SUM(quantity * price) AS revenue
FROM sales
GROUP BY country
ORDER BY revenue DESC;

-- Top Customers
SELECT customer_id,
SUM(quantity * price) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Monthly Revenue
SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
SUM(quantity * price) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Category Performance
SELECT category,
SUM(quantity * price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;
