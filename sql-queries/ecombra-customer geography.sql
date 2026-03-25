--Customer Geography (Heatmap ki taiyari)

SELECT TOP 10
    c.customer_city,
    SUM(oi.price) AS city_revenue,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.price) / COUNT(o.order_id) AS avg_order_value
FROM cleaned_orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN orders_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_city
ORDER BY city_revenue DESC;