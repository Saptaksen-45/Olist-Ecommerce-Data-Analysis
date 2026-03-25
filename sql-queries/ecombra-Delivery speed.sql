--Delivery Speed (Efficiency Analysis)

SELECT 
    AVG(DATEDIFF(day, order_purchase_timestamp, order_delivered_customer_date)) AS avg_delivery_days,
    customer_state
FROM cleaned_orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY customer_state
ORDER BY avg_delivery_days DESC;