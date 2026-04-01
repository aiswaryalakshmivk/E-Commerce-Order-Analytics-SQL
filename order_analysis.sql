-- View all orders
SELECT * FROM orders;

-- Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Monthly order trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

-- Total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM orders;
