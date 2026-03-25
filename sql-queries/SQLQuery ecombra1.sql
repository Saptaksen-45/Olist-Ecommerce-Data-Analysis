SELECT order_status,COUNT(*) AS total_count
FROM orders
WHERE order_delivered_customer_date IS NULL 
GROUP BY order_status;

CREATE VIEW cleaned_orders AS
SELECT * FROM orders
WHERE order_status = 'delivered'
AND order_delivered_customer_date IS NOT NULL
AND order_approved_at IS NOT NULL;

SELECT COUNT(*) FROM cleaned_orders