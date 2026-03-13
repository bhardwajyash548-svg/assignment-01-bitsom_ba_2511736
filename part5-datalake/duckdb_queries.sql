-- Q1 customers with number of orders

SELECT c.customer_id,COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id;



-- Q2 top 3 customers by order value

SELECT customer_id,SUM(total_amount) AS total_spent
FROM read_json_auto('orders.json')
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;



-- Q3 products purchased by Bangalore customers

SELECT p.product_name
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id=o.customer_id
JOIN 'products.parquet' p
ON p.product_id=o.product_id
WHERE c.city='Bangalore';



-- Q4 join all files

SELECT c.customer_name,o.order_date,p.product_name,o.num_items
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id=o.customer_id
JOIN 'products.parquet' p
ON p.product_id=o.product_id;

