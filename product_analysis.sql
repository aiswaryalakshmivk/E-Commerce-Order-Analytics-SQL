-- Product sales by quantity
SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Revenue by product
SELECT p.product_name,
       SUM(p.price * o.quantity) AS revenue
FROM products p
JOIN orders o
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;
