-- Customer order count
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC;

-- Total quantity purchased by each customer
SELECT c.customer_name, SUM(o.quantity) AS total_items_bought
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_items_bought DESC;
