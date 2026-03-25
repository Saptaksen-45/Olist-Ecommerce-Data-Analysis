--Customer Retention (Repeat Customers)

SELECT 
    customer_unique_id, 
    COUNT(order_id) AS orders_count
FROM cleaned_orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY customer_unique_id
HAVING COUNT(order_id) > 1
ORDER BY orders_count DESC;