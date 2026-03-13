-- Q1: List all customers from Mumbai along with their total order value

SELECT c.customer_name, SUM(o.total_amount) AS total_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;


-- Q2: Find the top 3 products by total quantity sold

SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;


-- Q3: List all sales representatives and the number of unique customers they have handled

SELECT rep_name, COUNT(DISTINCT customer_id) AS total_customers
FROM sales_reps
LEFT JOIN orders ON sales_reps.rep_id = orders.customer_id
GROUP BY rep_name;


-- Q4: Find all orders where the total value exceeds 10000

SELECT *
FROM orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;


-- Q5: Identify any products that have never been ordered

SELECT p.product_name
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

