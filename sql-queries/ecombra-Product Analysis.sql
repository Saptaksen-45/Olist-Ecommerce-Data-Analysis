-- Product Analysis (Kaunsa Maal Bik raha hai?)

SELECT TOP 10
    p.product_category_name,
    AVG(oi.price) AS avg_price,
    AVG(oi.freight_value) AS avg_delivery_cost,
    (AVG(oi.freight_value) / AVG(oi.price)) * 100 AS shipping_percentage
FROM orders_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY avg_delivery_cost DESC;