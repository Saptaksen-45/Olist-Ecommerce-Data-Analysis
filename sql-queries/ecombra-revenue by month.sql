--Revenue By Month (Growth trends)

SELECT 
    FORMAT(order_purchase_timestamp, 'yyyy-MM') AS month_year,
    SUM(oi.price) AS monthly_revenue,
    COUNT(o.order_id) AS total_orders
FROM cleaned_orders o
JOIN orders_items oi ON o.order_id = oi.order_id
GROUP BY FORMAT(order_purchase_timestamp, 'yyyy-MM')
ORDER BY month_year;